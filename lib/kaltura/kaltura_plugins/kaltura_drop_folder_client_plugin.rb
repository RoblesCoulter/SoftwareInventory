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
require "#{Rails.root}/lib/kaltura/kaltura_plugins/kaltura_metadata_client_plugin.rb"

module Kaltura

	class KalturaDropFolderContentFileHandlerMatchPolicy
		ADD_AS_NEW = 1
		MATCH_EXISTING_OR_ADD_AS_NEW = 2
		MATCH_EXISTING_OR_KEEP_IN_FOLDER = 3
	end

	class KalturaDropFolderFileDeletePolicy
		MANUAL_DELETE = 1
		AUTO_DELETE = 2
		AUTO_DELETE_WHEN_ENTRY_IS_READY = 3
	end

	class KalturaDropFolderFileStatus
		UPLOADING = 1
		PENDING = 2
		WAITING = 3
		HANDLED = 4
		IGNORE = 5
		DELETED = 6
		PURGED = 7
		NO_MATCH = 8
		ERROR_HANDLING = 9
		ERROR_DELETING = 10
		DOWNLOADING = 11
		ERROR_DOWNLOADING = 12
		PROCESSING = 13
		PARSED = 14
		DETECTED = 15
	end

	class KalturaDropFolderStatus
		DISABLED = 0
		ENABLED = 1
		DELETED = 2
		ERROR = 3
	end

	class KalturaDropFolderErrorCode
		ERROR_CONNECT = "1"
		ERROR_AUTENTICATE = "2"
		ERROR_GET_PHISICAL_FILE_LIST = "3"
		ERROR_GET_DB_FILE_LIST = "4"
		DROP_FOLDER_APP_ERROR = "5"
		CONTENT_MATCH_POLICY_UNDEFINED = "6"
	end

	class KalturaDropFolderFileErrorCode
		ERROR_ADDING_BULK_UPLOAD = "dropFolderXmlBulkUpload.ERROR_ADDING_BULK_UPLOAD"
		ERROR_ADD_CONTENT_RESOURCE = "dropFolderXmlBulkUpload.ERROR_ADD_CONTENT_RESOURCE"
		ERROR_IN_BULK_UPLOAD = "dropFolderXmlBulkUpload.ERROR_IN_BULK_UPLOAD"
		ERROR_WRITING_TEMP_FILE = "dropFolderXmlBulkUpload.ERROR_WRITING_TEMP_FILE"
		LOCAL_FILE_WRONG_CHECKSUM = "dropFolderXmlBulkUpload.LOCAL_FILE_WRONG_CHECKSUM"
		LOCAL_FILE_WRONG_SIZE = "dropFolderXmlBulkUpload.LOCAL_FILE_WRONG_SIZE"
		MALFORMED_XML_FILE = "dropFolderXmlBulkUpload.MALFORMED_XML_FILE"
		XML_FILE_SIZE_EXCEED_LIMIT = "dropFolderXmlBulkUpload.XML_FILE_SIZE_EXCEED_LIMIT"
		ERROR_UPDATE_ENTRY = "1"
		ERROR_ADD_ENTRY = "2"
		FLAVOR_NOT_FOUND = "3"
		FLAVOR_MISSING_IN_FILE_NAME = "4"
		SLUG_REGEX_NO_MATCH = "5"
		ERROR_READING_FILE = "6"
		ERROR_DOWNLOADING_FILE = "7"
		ERROR_UPDATE_FILE = "8"
		ERROR_ADDING_CONTENT_PROCESSOR = "10"
		ERROR_IN_CONTENT_PROCESSOR = "11"
		ERROR_DELETING_FILE = "12"
		FILE_NO_MATCH = "13"
	end

	class KalturaDropFolderFileHandlerType
		XML = "dropFolderXmlBulkUpload.XML"
		CONTENT = "1"
	end

	class KalturaDropFolderFileOrderBy
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

	class KalturaDropFolderOrderBy
		CREATED_AT_ASC = "+createdAt"
		ID_ASC = "+id"
		NAME_ASC = "+name"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		ID_DESC = "-id"
		NAME_DESC = "-name"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaDropFolderType
		WEBEX = "WebexDropFolder.WEBEX"
		LOCAL = "1"
		FTP = "2"
		SCP = "3"
		SFTP = "4"
		S3 = "6"
	end

	class KalturaFtpDropFolderOrderBy
		CREATED_AT_ASC = "+createdAt"
		ID_ASC = "+id"
		NAME_ASC = "+name"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		ID_DESC = "-id"
		NAME_DESC = "-name"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaRemoteDropFolderOrderBy
		CREATED_AT_ASC = "+createdAt"
		ID_ASC = "+id"
		NAME_ASC = "+name"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		ID_DESC = "-id"
		NAME_DESC = "-name"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaScpDropFolderOrderBy
		CREATED_AT_ASC = "+createdAt"
		ID_ASC = "+id"
		NAME_ASC = "+name"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		ID_DESC = "-id"
		NAME_DESC = "-name"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaSftpDropFolderOrderBy
		CREATED_AT_ASC = "+createdAt"
		ID_ASC = "+id"
		NAME_ASC = "+name"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		ID_DESC = "-id"
		NAME_DESC = "-name"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaSshDropFolderOrderBy
		CREATED_AT_ASC = "+createdAt"
		ID_ASC = "+id"
		NAME_ASC = "+name"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		ID_DESC = "-id"
		NAME_DESC = "-name"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaDropFolderFileHandlerConfig < KalturaObjectBase
		attr_accessor :handler_type

	end

	class KalturaDropFolder < KalturaObjectBase
		attr_accessor :id
		attr_accessor :partner_id
		attr_accessor :name
		attr_accessor :description
		attr_accessor :type
		attr_accessor :status
		attr_accessor :conversion_profile_id
		attr_accessor :dc
		attr_accessor :path
		# The ammount of time, in seconds, that should pass so that a file with no change in size we'll be treated as "finished uploading to folder"
		# 	 
		attr_accessor :file_size_check_interval
		attr_accessor :file_delete_policy
		attr_accessor :auto_file_delete_days
		attr_accessor :file_handler_type
		attr_accessor :file_name_patterns
		attr_accessor :file_handler_config
		attr_accessor :tags
		attr_accessor :error_code
		attr_accessor :error_description
		attr_accessor :ignore_file_name_patterns
		attr_accessor :created_at
		attr_accessor :updated_at
		attr_accessor :last_accessed_at
		attr_accessor :incremental
		attr_accessor :last_file_timestamp
		attr_accessor :metadata_profile_id
		attr_accessor :categories_metadata_field_name
		attr_accessor :enforce_entitlement
		attr_accessor :should_validate_ks

		def id=(val)
			@id = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
		def conversion_profile_id=(val)
			@conversion_profile_id = val.to_i
		end
		def dc=(val)
			@dc = val.to_i
		end
		def file_size_check_interval=(val)
			@file_size_check_interval = val.to_i
		end
		def file_delete_policy=(val)
			@file_delete_policy = val.to_i
		end
		def auto_file_delete_days=(val)
			@auto_file_delete_days = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
		def last_accessed_at=(val)
			@last_accessed_at = val.to_i
		end
		def incremental=(val)
			@incremental = to_b(val)
		end
		def last_file_timestamp=(val)
			@last_file_timestamp = val.to_i
		end
		def metadata_profile_id=(val)
			@metadata_profile_id = val.to_i
		end
		def enforce_entitlement=(val)
			@enforce_entitlement = to_b(val)
		end
		def should_validate_ks=(val)
			@should_validate_ks = to_b(val)
		end
	end

	class KalturaDropFolderFile < KalturaObjectBase
		attr_accessor :id
		attr_accessor :partner_id
		attr_accessor :drop_folder_id
		attr_accessor :file_name
		attr_accessor :file_size
		attr_accessor :file_size_last_set_at
		attr_accessor :status
		attr_accessor :type
		attr_accessor :parsed_slug
		attr_accessor :parsed_flavor
		attr_accessor :parsed_user_id
		attr_accessor :lead_drop_folder_file_id
		attr_accessor :deleted_drop_folder_file_id
		attr_accessor :entry_id
		attr_accessor :error_code
		attr_accessor :error_description
		attr_accessor :last_modification_time
		attr_accessor :created_at
		attr_accessor :updated_at
		attr_accessor :upload_start_detected_at
		attr_accessor :upload_end_detected_at
		attr_accessor :import_started_at
		attr_accessor :import_ended_at
		attr_accessor :batch_job_id

		def id=(val)
			@id = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def drop_folder_id=(val)
			@drop_folder_id = val.to_i
		end
		def file_size=(val)
			@file_size = val.to_f
		end
		def file_size_last_set_at=(val)
			@file_size_last_set_at = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
		def lead_drop_folder_file_id=(val)
			@lead_drop_folder_file_id = val.to_i
		end
		def deleted_drop_folder_file_id=(val)
			@deleted_drop_folder_file_id = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
		def upload_start_detected_at=(val)
			@upload_start_detected_at = val.to_i
		end
		def upload_end_detected_at=(val)
			@upload_end_detected_at = val.to_i
		end
		def import_started_at=(val)
			@import_started_at = val.to_i
		end
		def import_ended_at=(val)
			@import_ended_at = val.to_i
		end
		def batch_job_id=(val)
			@batch_job_id = val.to_i
		end
	end

	class KalturaDropFolderFileListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaDropFolderListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaDropFolderBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :partner_id_equal
		attr_accessor :partner_id_in
		attr_accessor :name_like
		attr_accessor :type_equal
		attr_accessor :type_in
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :conversion_profile_id_equal
		attr_accessor :conversion_profile_id_in
		attr_accessor :dc_equal
		attr_accessor :dc_in
		attr_accessor :path_equal
		attr_accessor :path_like
		attr_accessor :file_handler_type_equal
		attr_accessor :file_handler_type_in
		attr_accessor :file_name_patterns_like
		attr_accessor :file_name_patterns_multi_like_or
		attr_accessor :file_name_patterns_multi_like_and
		attr_accessor :tags_like
		attr_accessor :tags_multi_like_or
		attr_accessor :tags_multi_like_and
		attr_accessor :error_code_equal
		attr_accessor :error_code_in
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal

		def id_equal=(val)
			@id_equal = val.to_i
		end
		def partner_id_equal=(val)
			@partner_id_equal = val.to_i
		end
		def status_equal=(val)
			@status_equal = val.to_i
		end
		def conversion_profile_id_equal=(val)
			@conversion_profile_id_equal = val.to_i
		end
		def dc_equal=(val)
			@dc_equal = val.to_i
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
	end

	class KalturaDropFolderContentFileHandlerConfig < KalturaDropFolderFileHandlerConfig
		attr_accessor :content_match_policy
		# Regular expression that defines valid file names to be handled.
		# 	 The following might be extracted from the file name and used if defined:
		# 	 - (?P<referenceId>\w+) - will be used as the drop folder file's parsed slug.
		# 	 - (?P<flavorName>\w+)  - will be used as the drop folder file's parsed flavor.
		# 	 
		attr_accessor :slug_regex

		def content_match_policy=(val)
			@content_match_policy = val.to_i
		end
	end

	class KalturaDropFolderContentProcessorJobData < KalturaJobData
		attr_accessor :drop_folder_id
		attr_accessor :drop_folder_file_ids
		attr_accessor :parsed_slug
		attr_accessor :content_match_policy
		attr_accessor :conversion_profile_id
		attr_accessor :parsed_user_id

		def drop_folder_id=(val)
			@drop_folder_id = val.to_i
		end
		def content_match_policy=(val)
			@content_match_policy = val.to_i
		end
		def conversion_profile_id=(val)
			@conversion_profile_id = val.to_i
		end
	end

	class KalturaDropFolderFileBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :partner_id_equal
		attr_accessor :partner_id_in
		attr_accessor :drop_folder_id_equal
		attr_accessor :drop_folder_id_in
		attr_accessor :file_name_equal
		attr_accessor :file_name_in
		attr_accessor :file_name_like
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :status_not_in
		attr_accessor :parsed_slug_equal
		attr_accessor :parsed_slug_in
		attr_accessor :parsed_slug_like
		attr_accessor :parsed_flavor_equal
		attr_accessor :parsed_flavor_in
		attr_accessor :parsed_flavor_like
		attr_accessor :lead_drop_folder_file_id_equal
		attr_accessor :deleted_drop_folder_file_id_equal
		attr_accessor :entry_id_equal
		attr_accessor :error_code_equal
		attr_accessor :error_code_in
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal

		def id_equal=(val)
			@id_equal = val.to_i
		end
		def partner_id_equal=(val)
			@partner_id_equal = val.to_i
		end
		def drop_folder_id_equal=(val)
			@drop_folder_id_equal = val.to_i
		end
		def status_equal=(val)
			@status_equal = val.to_i
		end
		def lead_drop_folder_file_id_equal=(val)
			@lead_drop_folder_file_id_equal = val.to_i
		end
		def deleted_drop_folder_file_id_equal=(val)
			@deleted_drop_folder_file_id_equal = val.to_i
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
	end

	class KalturaRemoteDropFolder < KalturaDropFolder

	end

	class KalturaDropFolderFileFilter < KalturaDropFolderFileBaseFilter

	end

	class KalturaDropFolderFilter < KalturaDropFolderBaseFilter
		attr_accessor :current_dc

		def current_dc=(val)
			@current_dc = val.to_i
		end
	end

	class KalturaFtpDropFolder < KalturaRemoteDropFolder
		attr_accessor :host
		attr_accessor :port
		attr_accessor :username
		attr_accessor :password

		def port=(val)
			@port = val.to_i
		end
	end

	class KalturaSshDropFolder < KalturaRemoteDropFolder
		attr_accessor :host
		attr_accessor :port
		attr_accessor :username
		attr_accessor :password
		attr_accessor :private_key
		attr_accessor :public_key
		attr_accessor :pass_phrase

		def port=(val)
			@port = val.to_i
		end
	end

	# Used to ingest media that dropped through drop folder
	#  
	class KalturaDropFolderFileResource < KalturaDataCenterContentResource
		# Id of the drop folder file object
		# 	 
		attr_accessor :drop_folder_file_id

		def drop_folder_file_id=(val)
			@drop_folder_file_id = val.to_i
		end
	end

	class KalturaDropFolderImportJobData < KalturaSshImportJobData
		attr_accessor :drop_folder_file_id

		def drop_folder_file_id=(val)
			@drop_folder_file_id = val.to_i
		end
	end

	class KalturaRemoteDropFolderBaseFilter < KalturaDropFolderFilter

	end

	class KalturaScpDropFolder < KalturaSshDropFolder

	end

	class KalturaSftpDropFolder < KalturaSshDropFolder

	end

	class KalturaRemoteDropFolderFilter < KalturaRemoteDropFolderBaseFilter

	end

	class KalturaFtpDropFolderBaseFilter < KalturaRemoteDropFolderFilter

	end

	class KalturaSshDropFolderBaseFilter < KalturaRemoteDropFolderFilter

	end

	class KalturaFtpDropFolderFilter < KalturaFtpDropFolderBaseFilter

	end

	class KalturaSshDropFolderFilter < KalturaSshDropFolderBaseFilter

	end

	class KalturaScpDropFolderBaseFilter < KalturaSshDropFolderFilter

	end

	class KalturaSftpDropFolderBaseFilter < KalturaSshDropFolderFilter

	end

	class KalturaScpDropFolderFilter < KalturaScpDropFolderBaseFilter

	end

	class KalturaSftpDropFolderFilter < KalturaSftpDropFolderBaseFilter

	end


	# DropFolder service lets you create and manage drop folders
	#  
	class KalturaDropFolderService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Allows you to add a new KalturaDropFolder object
		# 	 
		def add(drop_folder)
			kparams = {}
			client.add_param(kparams, 'dropFolder', drop_folder);
			client.queue_service_action_call('dropfolder_dropfolder', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve a KalturaDropFolder object by ID
		# 	 
		def get(drop_folder_id)
			kparams = {}
			client.add_param(kparams, 'dropFolderId', drop_folder_id);
			client.queue_service_action_call('dropfolder_dropfolder', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update an existing KalturaDropFolder object
		# 	 
		def update(drop_folder_id, drop_folder)
			kparams = {}
			client.add_param(kparams, 'dropFolderId', drop_folder_id);
			# Id
			client.add_param(kparams, 'dropFolder', drop_folder);
			client.queue_service_action_call('dropfolder_dropfolder', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Mark the KalturaDropFolder object as deleted
		# 	 
		def delete(drop_folder_id)
			kparams = {}
			client.add_param(kparams, 'dropFolderId', drop_folder_id);
			client.queue_service_action_call('dropfolder_dropfolder', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List KalturaDropFolder objects
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('dropfolder_dropfolder', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# DropFolderFile service lets you create and manage drop folder files
	#  
	class KalturaDropFolderFileService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Allows you to add a new KalturaDropFolderFile object
		# 	 
		def add(drop_folder_file)
			kparams = {}
			client.add_param(kparams, 'dropFolderFile', drop_folder_file);
			client.queue_service_action_call('dropfolder_dropfolderfile', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve a KalturaDropFolderFile object by ID
		# 	 
		def get(drop_folder_file_id)
			kparams = {}
			client.add_param(kparams, 'dropFolderFileId', drop_folder_file_id);
			client.queue_service_action_call('dropfolder_dropfolderfile', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update an existing KalturaDropFolderFile object
		# 	 
		def update(drop_folder_file_id, drop_folder_file)
			kparams = {}
			client.add_param(kparams, 'dropFolderFileId', drop_folder_file_id);
			# Id
			client.add_param(kparams, 'dropFolderFile', drop_folder_file);
			client.queue_service_action_call('dropfolder_dropfolderfile', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update status of KalturaDropFolderFile
		# 	 
		def update_status(drop_folder_file_id, status)
			kparams = {}
			client.add_param(kparams, 'dropFolderFileId', drop_folder_file_id);
			client.add_param(kparams, 'status', status);
			client.queue_service_action_call('dropfolder_dropfolderfile', 'updateStatus', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Mark the KalturaDropFolderFile object as deleted
		# 	 
		def delete(drop_folder_file_id)
			kparams = {}
			client.add_param(kparams, 'dropFolderFileId', drop_folder_file_id);
			client.queue_service_action_call('dropfolder_dropfolderfile', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List KalturaDropFolderFile objects
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('dropfolder_dropfolderfile', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Set the KalturaDropFolderFile status to ignore (KalturaDropFolderFileStatus::IGNORE)
		# 	 
		def ignore(drop_folder_file_id)
			kparams = {}
			client.add_param(kparams, 'dropFolderFileId', drop_folder_file_id);
			client.queue_service_action_call('dropfolder_dropfolderfile', 'ignore', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	class KalturaClient < KalturaClientBase
		attr_reader :drop_folder_service
		def drop_folder_service
			if (@drop_folder_service == nil)
				@drop_folder_service = KalturaDropFolderService.new(self)
			end
			return @drop_folder_service
		end
		attr_reader :drop_folder_file_service
		def drop_folder_file_service
			if (@drop_folder_file_service == nil)
				@drop_folder_file_service = KalturaDropFolderFileService.new(self)
			end
			return @drop_folder_file_service
		end
	end

end
