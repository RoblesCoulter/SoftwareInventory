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

	class KalturaAuditTrailChangeXmlNodeType
		CHANGED = 1
		ADDED = 2
		REMOVED = 3
	end

	class KalturaAuditTrailContext
		CLIENT = -1
		SCRIPT = 0
		PS2 = 1
		API_V3 = 2
	end

	class KalturaAuditTrailFileSyncType
		FILE = 1
		LINK = 2
		URL = 3
	end

	class KalturaAuditTrailStatus
		PENDING = 1
		READY = 2
		FAILED = 3
	end

	class KalturaAuditTrailAction
		CHANGED = "CHANGED"
		CONTENT_VIEWED = "CONTENT_VIEWED"
		COPIED = "COPIED"
		CREATED = "CREATED"
		DELETED = "DELETED"
		FILE_SYNC_CREATED = "FILE_SYNC_CREATED"
		RELATION_ADDED = "RELATION_ADDED"
		RELATION_REMOVED = "RELATION_REMOVED"
		VIEWED = "VIEWED"
	end

	class KalturaAuditTrailObjectType
		BATCH_JOB = "BatchJob"
		EMAIL_INGESTION_PROFILE = "EmailIngestionProfile"
		FILE_SYNC = "FileSync"
		KSHOW_KUSER = "KshowKuser"
		METADATA = "Metadata"
		METADATA_PROFILE = "MetadataProfile"
		PARTNER = "Partner"
		PERMISSION = "Permission"
		UPLOAD_TOKEN = "UploadToken"
		USER_LOGIN_DATA = "UserLoginData"
		USER_ROLE = "UserRole"
		ACCESS_CONTROL = "accessControl"
		CATEGORY = "category"
		CONVERSION_PROFILE_2 = "conversionProfile2"
		ENTRY = "entry"
		FLAVOR_ASSET = "flavorAsset"
		FLAVOR_PARAMS = "flavorParams"
		FLAVOR_PARAMS_CONVERSION_PROFILE = "flavorParamsConversionProfile"
		FLAVOR_PARAMS_OUTPUT = "flavorParamsOutput"
		KSHOW = "kshow"
		KUSER = "kuser"
		MEDIA_INFO = "mediaInfo"
		MODERATION = "moderation"
		ROUGHCUT = "roughcutEntry"
		SYNDICATION = "syndicationFeed"
		THUMBNAIL_ASSET = "thumbAsset"
		THUMBNAIL_PARAMS = "thumbParams"
		THUMBNAIL_PARAMS_OUTPUT = "thumbParamsOutput"
		UI_CONF = "uiConf"
		WIDGET = "widget"
	end

	class KalturaAuditTrailOrderBy
		CREATED_AT_ASC = "+createdAt"
		PARSED_AT_ASC = "+parsedAt"
		CREATED_AT_DESC = "-createdAt"
		PARSED_AT_DESC = "-parsedAt"
	end

	class KalturaAuditTrailInfo < KalturaObjectBase

	end

	class KalturaAuditTrail < KalturaObjectBase
		attr_accessor :id
		attr_accessor :created_at
		# Indicates when the data was parsed
		# 	 
		attr_accessor :parsed_at
		attr_accessor :status
		attr_accessor :audit_object_type
		attr_accessor :object_id
		attr_accessor :related_object_id
		attr_accessor :related_object_type
		attr_accessor :entry_id
		attr_accessor :master_partner_id
		attr_accessor :partner_id
		attr_accessor :request_id
		attr_accessor :user_id
		attr_accessor :action
		attr_accessor :data
		attr_accessor :ks
		attr_accessor :context
		# The API service and action that called and caused this audit
		# 	 
		attr_accessor :entry_point
		attr_accessor :server_name
		attr_accessor :ip_address
		attr_accessor :user_agent
		attr_accessor :client_tag
		attr_accessor :description
		attr_accessor :error_description

		def id=(val)
			@id = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def parsed_at=(val)
			@parsed_at = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
		def master_partner_id=(val)
			@master_partner_id = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def context=(val)
			@context = val.to_i
		end
	end

	class KalturaAuditTrailChangeItem < KalturaObjectBase
		attr_accessor :descriptor
		attr_accessor :old_value
		attr_accessor :new_value

	end

	class KalturaAuditTrailListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaAuditTrailBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :parsed_at_greater_than_or_equal
		attr_accessor :parsed_at_less_than_or_equal
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :audit_object_type_equal
		attr_accessor :audit_object_type_in
		attr_accessor :object_id_equal
		attr_accessor :object_id_in
		attr_accessor :related_object_id_equal
		attr_accessor :related_object_id_in
		attr_accessor :related_object_type_equal
		attr_accessor :related_object_type_in
		attr_accessor :entry_id_equal
		attr_accessor :entry_id_in
		attr_accessor :master_partner_id_equal
		attr_accessor :master_partner_id_in
		attr_accessor :partner_id_equal
		attr_accessor :partner_id_in
		attr_accessor :request_id_equal
		attr_accessor :request_id_in
		attr_accessor :user_id_equal
		attr_accessor :user_id_in
		attr_accessor :action_equal
		attr_accessor :action_in
		attr_accessor :ks_equal
		attr_accessor :context_equal
		attr_accessor :context_in
		attr_accessor :entry_point_equal
		attr_accessor :entry_point_in
		attr_accessor :server_name_equal
		attr_accessor :server_name_in
		attr_accessor :ip_address_equal
		attr_accessor :ip_address_in
		attr_accessor :client_tag_equal

		def id_equal=(val)
			@id_equal = val.to_i
		end
		def created_at_greater_than_or_equal=(val)
			@created_at_greater_than_or_equal = val.to_i
		end
		def created_at_less_than_or_equal=(val)
			@created_at_less_than_or_equal = val.to_i
		end
		def parsed_at_greater_than_or_equal=(val)
			@parsed_at_greater_than_or_equal = val.to_i
		end
		def parsed_at_less_than_or_equal=(val)
			@parsed_at_less_than_or_equal = val.to_i
		end
		def status_equal=(val)
			@status_equal = val.to_i
		end
		def master_partner_id_equal=(val)
			@master_partner_id_equal = val.to_i
		end
		def partner_id_equal=(val)
			@partner_id_equal = val.to_i
		end
		def context_equal=(val)
			@context_equal = val.to_i
		end
	end

	class KalturaAuditTrailChangeInfo < KalturaAuditTrailInfo
		attr_accessor :changed_items

	end

	class KalturaAuditTrailChangeXmlNode < KalturaAuditTrailChangeItem
		attr_accessor :type

		def type=(val)
			@type = val.to_i
		end
	end

	class KalturaAuditTrailFileSyncCreateInfo < KalturaAuditTrailInfo
		attr_accessor :version
		attr_accessor :object_sub_type
		attr_accessor :dc
		attr_accessor :original
		attr_accessor :file_type

		def object_sub_type=(val)
			@object_sub_type = val.to_i
		end
		def dc=(val)
			@dc = val.to_i
		end
		def original=(val)
			@original = to_b(val)
		end
		def file_type=(val)
			@file_type = val.to_i
		end
	end

	class KalturaAuditTrailTextInfo < KalturaAuditTrailInfo
		attr_accessor :info

	end

	class KalturaAuditTrailFilter < KalturaAuditTrailBaseFilter

	end


	# Audit Trail service
	#  
	class KalturaAuditTrailService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Allows you to add an audit trail object and audit trail content associated with Kaltura object
		# 	 
		def add(audit_trail)
			kparams = {}
			client.add_param(kparams, 'auditTrail', audit_trail);
			client.queue_service_action_call('audit_audittrail', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve an audit trail object by id
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('audit_audittrail', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List audit trail objects by filter and pager
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('audit_audittrail', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	class KalturaClient < KalturaClientBase
		attr_reader :audit_trail_service
		def audit_trail_service
			if (@audit_trail_service == nil)
				@audit_trail_service = KalturaAuditTrailService.new(self)
			end
			return @audit_trail_service
		end
	end

end
