# ===================================================================================================
#                           _  __     _ _
#                          | |/ /__ _| | |_ _  _ _ _ __ _
#                          | ' </ _` | |  _| || | '_/ _` |
#                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
#
# This file is part of the Kaltura Collaborative Media Suite which allows users
# to do with audio, video, and animation what Wiki platfroms allow them to do with
# text.
#
# Copyright (C) 2006-2011  Kaltura Inc.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http:#www.gnu.org/licenses/>.
#
# @ignore
# ===================================================================================================
require "#{Rails.root}/lib/kaltura/kaltura_client.rb"
require "#{Rails.root}/lib/kaltura/kaltura_plugins/kaltura_caption_client_plugin.rb"

module Kaltura

	class KalturaCaptionAssetItem < KalturaObjectBase
		# The Caption Asset object
		# 	 
		attr_accessor :asset
		# The entry object
		# 	 
		attr_accessor :entry
		attr_accessor :start_time
		attr_accessor :end_time
		attr_accessor :content

		def start_time=(val)
			@start_time = val.to_i
		end
		def end_time=(val)
			@end_time = val.to_i
		end
	end

	class KalturaCaptionAssetItemListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaCaptionAssetItemFilter < KalturaCaptionAssetFilter
		attr_accessor :content_like
		attr_accessor :content_multi_like_or
		attr_accessor :content_multi_like_and
		attr_accessor :partner_description_like
		attr_accessor :partner_description_multi_like_or
		attr_accessor :partner_description_multi_like_and
		attr_accessor :language_equal
		attr_accessor :language_in
		attr_accessor :label_equal
		attr_accessor :label_in
		attr_accessor :start_time_greater_than_or_equal
		attr_accessor :start_time_less_than_or_equal
		attr_accessor :end_time_greater_than_or_equal
		attr_accessor :end_time_less_than_or_equal

		def start_time_greater_than_or_equal=(val)
			@start_time_greater_than_or_equal = val.to_i
		end
		def start_time_less_than_or_equal=(val)
			@start_time_less_than_or_equal = val.to_i
		end
		def end_time_greater_than_or_equal=(val)
			@end_time_greater_than_or_equal = val.to_i
		end
		def end_time_less_than_or_equal=(val)
			@end_time_less_than_or_equal = val.to_i
		end
	end


	# Search caption asset items
	#  
	class KalturaCaptionAssetItemService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Search caption asset items by filter, pager and free text
		# 	 
		def search(entry_filter=KalturaNotImplemented, caption_asset_item_filter=KalturaNotImplemented, caption_asset_item_pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'entryFilter', entry_filter);
			client.add_param(kparams, 'captionAssetItemFilter', caption_asset_item_filter);
			client.add_param(kparams, 'captionAssetItemPager', caption_asset_item_pager);
			client.queue_service_action_call('captionsearch_captionassetitem', 'search', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Search caption asset items by filter, pager and free text
		# 	 
		def search_entries(entry_filter=KalturaNotImplemented, caption_asset_item_filter=KalturaNotImplemented, caption_asset_item_pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'entryFilter', entry_filter);
			client.add_param(kparams, 'captionAssetItemFilter', caption_asset_item_filter);
			client.add_param(kparams, 'captionAssetItemPager', caption_asset_item_pager);
			client.queue_service_action_call('captionsearch_captionassetitem', 'searchEntries', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	class KalturaClient < KalturaClientBase
		attr_reader :caption_asset_item_service
		def caption_asset_item_service
			if (@caption_asset_item_service == nil)
				@caption_asset_item_service = KalturaCaptionAssetItemService.new(self)
			end
			return @caption_asset_item_service
		end
	end

end
