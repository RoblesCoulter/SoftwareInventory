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

	class KalturaAttachmentAssetStatus
		ERROR = -1
		QUEUED = 0
		READY = 2
		DELETED = 3
		IMPORTING = 7
		EXPORTING = 9
	end

	class KalturaAttachmentAssetOrderBy
		CREATED_AT_ASC = "+createdAt"
		DELETED_AT_ASC = "+deletedAt"
		SIZE_ASC = "+size"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		DELETED_AT_DESC = "-deletedAt"
		SIZE_DESC = "-size"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaAttachmentType
		TEXT = "1"
		MEDIA = "2"
		DOCUMENT = "3"
	end

	class KalturaAttachmentAsset < KalturaAsset
		# The filename of the attachment asset content
		# 	 
		attr_accessor :filename
		# Attachment asset title
		# 	 
		attr_accessor :title
		# The attachment format
		# 	 
		attr_accessor :format
		# The status of the asset
		# 	 
		attr_accessor :status

		def status=(val)
			@status = val.to_i
		end
	end

	class KalturaAttachmentAssetListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaAttachmentAssetBaseFilter < KalturaAssetFilter
		attr_accessor :format_equal
		attr_accessor :format_in
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :status_not_in

		def status_equal=(val)
			@status_equal = val.to_i
		end
	end

	class KalturaAttachmentAssetFilter < KalturaAttachmentAssetBaseFilter

	end


	# Retrieve information and invoke actions on attachment Asset
	#  
	class KalturaAttachmentAssetService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add attachment asset
		#      
		def add(entry_id, attachment_asset)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'attachmentAsset', attachment_asset);
			client.queue_service_action_call('attachment_attachmentasset', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update content of attachment asset
		#      
		def set_content(id, content_resource)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'contentResource', content_resource);
			client.queue_service_action_call('attachment_attachmentasset', 'setContent', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update attachment asset
		#      
		def update(id, attachment_asset)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'attachmentAsset', attachment_asset);
			client.queue_service_action_call('attachment_attachmentasset', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get download URL for the asset
		# 	 
		def get_url(id, storage_id=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'storageId', storage_id);
			client.queue_service_action_call('attachment_attachmentasset', 'getUrl', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get remote storage existing paths for the asset
		# 	 
		def get_remote_paths(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('attachment_attachmentasset', 'getRemotePaths', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Serves attachment by its id
		# 	 
		def serve(attachment_asset_id)
			kparams = {}
			client.add_param(kparams, 'attachmentAssetId', attachment_asset_id);
			client.queue_service_action_call('attachment_attachmentasset', 'serve', kparams);
			return client.get_serve_url();
		end

		def get(attachment_asset_id)
			kparams = {}
			client.add_param(kparams, 'attachmentAssetId', attachment_asset_id);
			client.queue_service_action_call('attachment_attachmentasset', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List attachment Assets by filter and pager
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('attachment_attachmentasset', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def delete(attachment_asset_id)
			kparams = {}
			client.add_param(kparams, 'attachmentAssetId', attachment_asset_id);
			client.queue_service_action_call('attachment_attachmentasset', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	class KalturaClient < KalturaClientBase
		attr_reader :attachment_asset_service
		def attachment_asset_service
			if (@attachment_asset_service == nil)
				@attachment_asset_service = KalturaAttachmentAssetService.new(self)
			end
			return @attachment_asset_service
		end
	end

end
