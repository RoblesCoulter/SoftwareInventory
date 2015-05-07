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

module Kaltura

	class KalturaCuePointStatus
		READY = 1
		DELETED = 2
		HANDLED = 3
	end

	class KalturaThumbCuePointSubType
		SLIDE = 1
		CHAPTER = 2
	end

	class KalturaCuePointOrderBy
		CREATED_AT_ASC = "+createdAt"
		PARTNER_SORT_VALUE_ASC = "+partnerSortValue"
		START_TIME_ASC = "+startTime"
		TRIGGERED_AT_ASC = "+triggeredAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		PARTNER_SORT_VALUE_DESC = "-partnerSortValue"
		START_TIME_DESC = "-startTime"
		TRIGGERED_AT_DESC = "-triggeredAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaCuePointType
		AD = "adCuePoint.Ad"
		ANNOTATION = "annotation.Annotation"
		CODE = "codeCuePoint.Code"
		EVENT = "eventCuePoint.Event"
		THUMB = "thumbCuePoint.Thumb"
	end

	class KalturaCuePoint < KalturaObjectBase
		attr_accessor :id
		attr_accessor :cue_point_type
		attr_accessor :status
		attr_accessor :entry_id
		attr_accessor :partner_id
		attr_accessor :created_at
		attr_accessor :updated_at
		attr_accessor :triggered_at
		attr_accessor :tags
		# Start time in milliseconds
		# 	 
		attr_accessor :start_time
		attr_accessor :user_id
		attr_accessor :partner_data
		attr_accessor :partner_sort_value
		attr_accessor :force_stop
		attr_accessor :thumb_offset
		attr_accessor :system_name

		def status=(val)
			@status = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
		def triggered_at=(val)
			@triggered_at = val.to_i
		end
		def start_time=(val)
			@start_time = val.to_i
		end
		def partner_sort_value=(val)
			@partner_sort_value = val.to_i
		end
		def force_stop=(val)
			@force_stop = val.to_i
		end
		def thumb_offset=(val)
			@thumb_offset = val.to_i
		end
	end

	class KalturaCuePointListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaCuePointBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :cue_point_type_equal
		attr_accessor :cue_point_type_in
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :entry_id_equal
		attr_accessor :entry_id_in
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
		attr_accessor :triggered_at_greater_than_or_equal
		attr_accessor :triggered_at_less_than_or_equal
		attr_accessor :tags_like
		attr_accessor :tags_multi_like_or
		attr_accessor :tags_multi_like_and
		attr_accessor :start_time_greater_than_or_equal
		attr_accessor :start_time_less_than_or_equal
		attr_accessor :user_id_equal
		attr_accessor :user_id_in
		attr_accessor :partner_sort_value_equal
		attr_accessor :partner_sort_value_in
		attr_accessor :partner_sort_value_greater_than_or_equal
		attr_accessor :partner_sort_value_less_than_or_equal
		attr_accessor :force_stop_equal
		attr_accessor :system_name_equal
		attr_accessor :system_name_in

		def status_equal=(val)
			@status_equal = val.to_i
		end
		def created_at_greater_than_or_equal=(val)
			@created_at_greater_than_or_equal = val.to_i
		end
		def created_at_less_than_or_equal=(val)
			@created_at_less_than_or_equal = val.to_i
		end
		def updated_at_greater_than_or_equal=(val)
			@updated_at_greater_than_or_equal = val.to_i
		end
		def updated_at_less_than_or_equal=(val)
			@updated_at_less_than_or_equal = val.to_i
		end
		def triggered_at_greater_than_or_equal=(val)
			@triggered_at_greater_than_or_equal = val.to_i
		end
		def triggered_at_less_than_or_equal=(val)
			@triggered_at_less_than_or_equal = val.to_i
		end
		def start_time_greater_than_or_equal=(val)
			@start_time_greater_than_or_equal = val.to_i
		end
		def start_time_less_than_or_equal=(val)
			@start_time_less_than_or_equal = val.to_i
		end
		def partner_sort_value_equal=(val)
			@partner_sort_value_equal = val.to_i
		end
		def partner_sort_value_greater_than_or_equal=(val)
			@partner_sort_value_greater_than_or_equal = val.to_i
		end
		def partner_sort_value_less_than_or_equal=(val)
			@partner_sort_value_less_than_or_equal = val.to_i
		end
		def force_stop_equal=(val)
			@force_stop_equal = val.to_i
		end
	end

	class KalturaCuePointFilter < KalturaCuePointBaseFilter

	end


	# Cue Point service
	#  
	class KalturaCuePointService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Allows you to add an cue point object associated with an entry
		# 	 
		def add(cue_point)
			kparams = {}
			client.add_param(kparams, 'cuePoint', cue_point);
			client.queue_service_action_call('cuepoint_cuepoint', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Allows you to add multiple cue points objects by uploading XML that contains multiple cue point definitions
		# 	 
		def add_from_bulk(file_data)
			kparams = {}
			client.add_param(kparams, 'fileData', file_data);
			client.queue_service_action_call('cuepoint_cuepoint', 'addFromBulk', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Download multiple cue points objects as XML definitions
		# 	 
		def serve_bulk(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('cuepoint_cuepoint', 'serveBulk', kparams);
			return client.get_serve_url();
		end

		# Retrieve an CuePoint object by id
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('cuepoint_cuepoint', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List cue point objects by filter and pager
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('cuepoint_cuepoint', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# count cue point objects by filter
		# 	 
		def count(filter=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.queue_service_action_call('cuepoint_cuepoint', 'count', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update cue point by id 
		# 	 
		def update(id, cue_point)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'cuePoint', cue_point);
			client.queue_service_action_call('cuepoint_cuepoint', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# delete cue point by id, and delete all children cue points
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('cuepoint_cuepoint', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	class KalturaClient < KalturaClientBase
		attr_reader :cue_point_service
		def cue_point_service
			if (@cue_point_service == nil)
				@cue_point_service = KalturaCuePointService.new(self)
			end
			return @cue_point_service
		end
	end

end
