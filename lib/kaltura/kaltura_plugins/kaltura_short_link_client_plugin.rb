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

	class KalturaShortLinkStatus
		DISABLED = 1
		ENABLED = 2
		DELETED = 3
	end

	class KalturaShortLinkOrderBy
		CREATED_AT_ASC = "+createdAt"
		EXPIRES_AT_ASC = "+expiresAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		EXPIRES_AT_DESC = "-expiresAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaShortLink < KalturaObjectBase
		attr_accessor :id
		attr_accessor :created_at
		attr_accessor :updated_at
		attr_accessor :expires_at
		attr_accessor :partner_id
		attr_accessor :user_id
		attr_accessor :name
		attr_accessor :system_name
		attr_accessor :full_url
		attr_accessor :status

		def id=(val)
			@id = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
		def expires_at=(val)
			@expires_at = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
	end

	class KalturaShortLinkListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaShortLinkBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
		attr_accessor :expires_at_greater_than_or_equal
		attr_accessor :expires_at_less_than_or_equal
		attr_accessor :partner_id_equal
		attr_accessor :partner_id_in
		attr_accessor :user_id_equal
		attr_accessor :user_id_in
		attr_accessor :system_name_equal
		attr_accessor :system_name_in
		attr_accessor :status_equal
		attr_accessor :status_in

		def id_equal=(val)
			@id_equal = val.to_i
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
		def expires_at_greater_than_or_equal=(val)
			@expires_at_greater_than_or_equal = val.to_i
		end
		def expires_at_less_than_or_equal=(val)
			@expires_at_less_than_or_equal = val.to_i
		end
		def partner_id_equal=(val)
			@partner_id_equal = val.to_i
		end
		def status_equal=(val)
			@status_equal = val.to_i
		end
	end

	class KalturaShortLinkFilter < KalturaShortLinkBaseFilter

	end


	# Short link service
	#  
	class KalturaShortLinkService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# List short link objects by filter and pager
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('shortlink_shortlink', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Allows you to add a short link object
		# 	 
		def add(short_link)
			kparams = {}
			client.add_param(kparams, 'shortLink', short_link);
			client.queue_service_action_call('shortlink_shortlink', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve an short link object by id
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('shortlink_shortlink', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update exisitng short link
		# 	 
		def update(id, short_link)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'shortLink', short_link);
			client.queue_service_action_call('shortlink_shortlink', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Mark the short link as deleted
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('shortlink_shortlink', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Serves short link
		# 	 
		def goto(id, proxy=false)
			kparams = {}
			client.add_param(kparams, 'id', id);
			# proxy the response instead of redirect
			client.add_param(kparams, 'proxy', proxy);
			client.queue_service_action_call('shortlink_shortlink', 'goto', kparams);
			return client.get_serve_url();
		end
	end

	class KalturaClient < KalturaClientBase
		attr_reader :short_link_service
		def short_link_service
			if (@short_link_service == nil)
				@short_link_service = KalturaShortLinkService.new(self)
			end
			return @short_link_service
		end
	end

end
