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
require "#{Rails.root}/lib/kaltura/kaltura_plugins/kaltura_drop_folder_client_plugin.rb"

module Kaltura

	class KalturaWebexDropFolderFileOrderBy
		CREATED_AT_ASC = "+createdAt"
		FILE_NAME_ASC = "+fileName"
		FILE_SIZE_ASC = "+fileSize"
		FILE_SIZE_LAST_SET_AT_ASC = "+fileSizeLastSetAt"
		ID_ASC = "+id"
		PARSED_FLAVOR_ASC = "+parsedFlavor"
		PARSED_SLUG_ASC = "+parsedSlug"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		FILE_NAME_DESC = "-fileName"
		FILE_SIZE_DESC = "-fileSize"
		FILE_SIZE_LAST_SET_AT_DESC = "-fileSizeLastSetAt"
		ID_DESC = "-id"
		PARSED_FLAVOR_DESC = "-parsedFlavor"
		PARSED_SLUG_DESC = "-parsedSlug"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaWebexDropFolderOrderBy
		CREATED_AT_ASC = "+createdAt"
		ID_ASC = "+id"
		NAME_ASC = "+name"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		ID_DESC = "-id"
		NAME_DESC = "-name"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaWebexDropFolder < KalturaDropFolder
		attr_accessor :webex_user_id
		attr_accessor :webex_password
		attr_accessor :webex_site_id
		attr_accessor :webex_partner_id
		attr_accessor :webex_service_url
		attr_accessor :webex_host_id_metadata_field_name

		def webex_site_id=(val)
			@webex_site_id = val.to_i
		end
	end

	class KalturaWebexDropFolderFile < KalturaDropFolderFile
		attr_accessor :recording_id
		attr_accessor :webex_host_id
		attr_accessor :description
		attr_accessor :conf_id
		attr_accessor :content_url

		def recording_id=(val)
			@recording_id = val.to_i
		end
	end

	class KalturaWebexDropFolderContentProcessorJobData < KalturaDropFolderContentProcessorJobData
		attr_accessor :description
		attr_accessor :webex_host_id

	end

	class KalturaWebexDropFolderBaseFilter < KalturaDropFolderFilter

	end

	class KalturaWebexDropFolderFileBaseFilter < KalturaDropFolderFileFilter

	end

	class KalturaWebexDropFolderFileFilter < KalturaWebexDropFolderFileBaseFilter

	end

	class KalturaWebexDropFolderFilter < KalturaWebexDropFolderBaseFilter

	end


end
