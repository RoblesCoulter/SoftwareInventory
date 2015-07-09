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

	class KalturaMetadataProfileCreateMode
		API = 1
		KMC = 2
		APP = 3
	end

	class KalturaMetadataProfileStatus
		ACTIVE = 1
		DEPRECATED = 2
		TRANSFORMING = 3
	end

	class KalturaMetadataStatus
		VALID = 1
		INVALID = 2
		DELETED = 3
	end

	class KalturaMetadataObjectType
		AD_CUE_POINT = "adCuePointMetadata.AdCuePoint"
		ANNOTATION = "annotationMetadata.Annotation"
		CODE_CUE_POINT = "codeCuePointMetadata.CodeCuePoint"
		THUMB_CUE_POINT = "thumbCuePointMetadata.thumbCuePoint"
		ENTRY = "1"
		CATEGORY = "2"
		USER = "3"
		PARTNER = "4"
	end

	class KalturaMetadataOrderBy
		CREATED_AT_ASC = "+createdAt"
		METADATA_PROFILE_VERSION_ASC = "+metadataProfileVersion"
		UPDATED_AT_ASC = "+updatedAt"
		VERSION_ASC = "+version"
		CREATED_AT_DESC = "-createdAt"
		METADATA_PROFILE_VERSION_DESC = "-metadataProfileVersion"
		UPDATED_AT_DESC = "-updatedAt"
		VERSION_DESC = "-version"
	end

	class KalturaMetadataProfileOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaMetadata < KalturaObjectBase
		attr_accessor :id
		attr_accessor :partner_id
		attr_accessor :metadata_profile_id
		attr_accessor :metadata_profile_version
		attr_accessor :metadata_object_type
		attr_accessor :object_id
		attr_accessor :version
		attr_accessor :created_at
		attr_accessor :updated_at
		attr_accessor :status
		attr_accessor :xml

		def id=(val)
			@id = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def metadata_profile_id=(val)
			@metadata_profile_id = val.to_i
		end
		def metadata_profile_version=(val)
			@metadata_profile_version = val.to_i
		end
		def version=(val)
			@version = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
	end

	class KalturaMetadataListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaMetadataProfile < KalturaObjectBase
		attr_accessor :id
		attr_accessor :partner_id
		attr_accessor :metadata_object_type
		attr_accessor :version
		attr_accessor :name
		attr_accessor :system_name
		attr_accessor :description
		attr_accessor :created_at
		attr_accessor :updated_at
		attr_accessor :status
		attr_accessor :xsd
		attr_accessor :views
		attr_accessor :xslt
		attr_accessor :create_mode

		def id=(val)
			@id = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def version=(val)
			@version = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
		def create_mode=(val)
			@create_mode = val.to_i
		end
	end

	class KalturaMetadataProfileField < KalturaObjectBase
		attr_accessor :id
		attr_accessor :x_path
		attr_accessor :key
		attr_accessor :label

		def id=(val)
			@id = val.to_i
		end
	end

	class KalturaMetadataProfileFieldListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaMetadataProfileListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaImportMetadataJobData < KalturaJobData
		attr_accessor :src_file_url
		attr_accessor :dest_file_local_path
		attr_accessor :metadata_id

		def metadata_id=(val)
			@metadata_id = val.to_i
		end
	end

	class KalturaMetadataBaseFilter < KalturaFilter
		attr_accessor :partner_id_equal
		attr_accessor :metadata_profile_id_equal
		attr_accessor :metadata_profile_version_equal
		attr_accessor :metadata_profile_version_greater_than_or_equal
		attr_accessor :metadata_profile_version_less_than_or_equal
		attr_accessor :metadata_object_type_equal
		attr_accessor :object_id_equal
		attr_accessor :object_id_in
		attr_accessor :version_equal
		attr_accessor :version_greater_than_or_equal
		attr_accessor :version_less_than_or_equal
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
		attr_accessor :status_equal
		attr_accessor :status_in

		def partner_id_equal=(val)
			@partner_id_equal = val.to_i
		end
		def metadata_profile_id_equal=(val)
			@metadata_profile_id_equal = val.to_i
		end
		def metadata_profile_version_equal=(val)
			@metadata_profile_version_equal = val.to_i
		end
		def metadata_profile_version_greater_than_or_equal=(val)
			@metadata_profile_version_greater_than_or_equal = val.to_i
		end
		def metadata_profile_version_less_than_or_equal=(val)
			@metadata_profile_version_less_than_or_equal = val.to_i
		end
		def version_equal=(val)
			@version_equal = val.to_i
		end
		def version_greater_than_or_equal=(val)
			@version_greater_than_or_equal = val.to_i
		end
		def version_less_than_or_equal=(val)
			@version_less_than_or_equal = val.to_i
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
		def status_equal=(val)
			@status_equal = val.to_i
		end
	end

	class KalturaMetadataProfileBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :partner_id_equal
		attr_accessor :metadata_object_type_equal
		attr_accessor :metadata_object_type_in
		attr_accessor :version_equal
		attr_accessor :name_equal
		attr_accessor :system_name_equal
		attr_accessor :system_name_in
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :create_mode_equal
		attr_accessor :create_mode_not_equal
		attr_accessor :create_mode_in
		attr_accessor :create_mode_not_in

		def id_equal=(val)
			@id_equal = val.to_i
		end
		def partner_id_equal=(val)
			@partner_id_equal = val.to_i
		end
		def version_equal=(val)
			@version_equal = val.to_i
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
		def status_equal=(val)
			@status_equal = val.to_i
		end
		def create_mode_equal=(val)
			@create_mode_equal = val.to_i
		end
		def create_mode_not_equal=(val)
			@create_mode_not_equal = val.to_i
		end
	end

	class KalturaTransformMetadataJobData < KalturaJobData
		attr_accessor :src_xsl_path
		attr_accessor :src_version
		attr_accessor :dest_version
		attr_accessor :dest_xsd_path
		attr_accessor :metadata_profile_id

		def src_version=(val)
			@src_version = val.to_i
		end
		def dest_version=(val)
			@dest_version = val.to_i
		end
		def metadata_profile_id=(val)
			@metadata_profile_id = val.to_i
		end
	end

	class KalturaCompareMetadataCondition < KalturaCompareCondition
		# May contain the full xpath to the field in three formats
		# 	 1. Slashed xPath, e.g. /metadata/myElementName
		# 	 2. Using local-name function, e.g. /[local-name()='metadata']/[local-name()='myElementName']
		# 	 3. Using only the field name, e.g. myElementName, it will be searched as //myElementName
		# 	 
		attr_accessor :x_path
		# Metadata profile id
		# 	 
		attr_accessor :profile_id
		# Metadata profile system name
		# 	 
		attr_accessor :profile_system_name

		def profile_id=(val)
			@profile_id = val.to_i
		end
	end

	class KalturaMatchMetadataCondition < KalturaMatchCondition
		# May contain the full xpath to the field in three formats
		# 	 1. Slashed xPath, e.g. /metadata/myElementName
		# 	 2. Using local-name function, e.g. /[local-name()='metadata']/[local-name()='myElementName']
		# 	 3. Using only the field name, e.g. myElementName, it will be searched as //myElementName
		# 	 
		attr_accessor :x_path
		# Metadata profile id
		# 	 
		attr_accessor :profile_id
		# Metadata profile system name
		# 	 
		attr_accessor :profile_system_name

		def profile_id=(val)
			@profile_id = val.to_i
		end
	end

	class KalturaMetadataFieldChangedCondition < KalturaMatchCondition
		# May contain the full xpath to the field in three formats
		# 	 1. Slashed xPath, e.g. /metadata/myElementName
		# 	 2. Using local-name function, e.g. /[local-name()='metadata']/[local-name()='myElementName']
		# 	 3. Using only the field name, e.g. myElementName, it will be searched as //myElementName
		# 	 
		attr_accessor :x_path
		# Metadata profile id
		# 	 
		attr_accessor :profile_id
		# Metadata profile system name
		# 	 
		attr_accessor :profile_system_name
		attr_accessor :version_a
		attr_accessor :version_b

		def profile_id=(val)
			@profile_id = val.to_i
		end
	end

	class KalturaMetadataFilter < KalturaMetadataBaseFilter

	end

	class KalturaMetadataProfileFilter < KalturaMetadataProfileBaseFilter

	end

	class KalturaMetadataSearchItem < KalturaSearchOperator
		attr_accessor :metadata_profile_id
		attr_accessor :order_by

		def metadata_profile_id=(val)
			@metadata_profile_id = val.to_i
		end
	end


	# Metadata service
	#  
	class KalturaMetadataService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Allows you to add a metadata object and metadata content associated with Kaltura object
		# 	 
		def add(metadata_profile_id, object_type, object_id, xml_data)
			kparams = {}
			client.add_param(kparams, 'metadataProfileId', metadata_profile_id);
			client.add_param(kparams, 'objectType', object_type);
			client.add_param(kparams, 'objectId', object_id);
			# XML metadata
			client.add_param(kparams, 'xmlData', xml_data);
			client.queue_service_action_call('metadata_metadata', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Allows you to add a metadata object and metadata file associated with Kaltura object
		# 	 
		def add_from_file(metadata_profile_id, object_type, object_id, xml_file)
			kparams = {}
			client.add_param(kparams, 'metadataProfileId', metadata_profile_id);
			client.add_param(kparams, 'objectType', object_type);
			client.add_param(kparams, 'objectId', object_id);
			# XML metadata
			client.add_param(kparams, 'xmlFile', xml_file);
			client.queue_service_action_call('metadata_metadata', 'addFromFile', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Allows you to add a metadata xml data from remote URL
		# 	 
		def add_from_url(metadata_profile_id, object_type, object_id, url)
			kparams = {}
			client.add_param(kparams, 'metadataProfileId', metadata_profile_id);
			client.add_param(kparams, 'objectType', object_type);
			client.add_param(kparams, 'objectId', object_id);
			# XML metadata remote url
			client.add_param(kparams, 'url', url);
			client.queue_service_action_call('metadata_metadata', 'addFromUrl', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Allows you to add a metadata xml data from remote URL.
		# 	 Enables different permissions than addFromUrl action.
		# 	 
		def add_from_bulk(metadata_profile_id, object_type, object_id, url)
			kparams = {}
			client.add_param(kparams, 'metadataProfileId', metadata_profile_id);
			client.add_param(kparams, 'objectType', object_type);
			client.add_param(kparams, 'objectId', object_id);
			# XML metadata remote url
			client.add_param(kparams, 'url', url);
			client.queue_service_action_call('metadata_metadata', 'addFromBulk', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve a metadata object by id
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('metadata_metadata', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update an existing metadata object with new XML content
		# 	 
		def update(id, xml_data=KalturaNotImplemented, version=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'id', id);
			# XML metadata
			client.add_param(kparams, 'xmlData', xml_data);
			# Enable update only if the metadata object version did not change by other process
			client.add_param(kparams, 'version', version);
			client.queue_service_action_call('metadata_metadata', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update an existing metadata object with new XML file
		# 	 
		def update_from_file(id, xml_file=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'id', id);
			# XML metadata
			client.add_param(kparams, 'xmlFile', xml_file);
			client.queue_service_action_call('metadata_metadata', 'updateFromFile', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List metadata objects by filter and pager
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('metadata_metadata', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete an existing metadata
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('metadata_metadata', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Mark existing metadata as invalid
		# 	 Used by batch metadata transform
		# 	 
		def invalidate(id, version=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'id', id);
			# Enable update only if the metadata object version did not change by other process
			client.add_param(kparams, 'version', version);
			client.queue_service_action_call('metadata_metadata', 'invalidate', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Serves metadata XML file
		# 	 
		def serve(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('metadata_metadata', 'serve', kparams);
			return client.get_serve_url();
		end

		# Action transforms current metadata object XML using a provided XSL.
		# 	 
		def update_from_xsl(id, xsl_file)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'xslFile', xsl_file);
			client.queue_service_action_call('metadata_metadata', 'updateFromXSL', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Metadata Profile service
	#  
	class KalturaMetadataProfileService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Allows you to add a metadata profile object and metadata profile content associated with Kaltura object type
		# 	 
		def add(metadata_profile, xsd_data, views_data=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'metadataProfile', metadata_profile);
			# XSD metadata definition
			client.add_param(kparams, 'xsdData', xsd_data);
			# UI views definition
			client.add_param(kparams, 'viewsData', views_data);
			client.queue_service_action_call('metadata_metadataprofile', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Allows you to add a metadata profile object and metadata profile file associated with Kaltura object type
		# 	 
		def add_from_file(metadata_profile, xsd_file, views_file=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'metadataProfile', metadata_profile);
			# XSD metadata definition
			client.add_param(kparams, 'xsdFile', xsd_file);
			# UI views definition
			client.add_param(kparams, 'viewsFile', views_file);
			client.queue_service_action_call('metadata_metadataprofile', 'addFromFile', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve a metadata profile object by id
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('metadata_metadataprofile', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update an existing metadata object
		# 	 
		def update(id, metadata_profile, xsd_data=KalturaNotImplemented, views_data=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'metadataProfile', metadata_profile);
			# XSD metadata definition
			client.add_param(kparams, 'xsdData', xsd_data);
			# UI views definition
			client.add_param(kparams, 'viewsData', views_data);
			client.queue_service_action_call('metadata_metadataprofile', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List metadata profile objects by filter and pager
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('metadata_metadataprofile', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List metadata profile fields by metadata profile id
		# 	 
		def list_fields(metadata_profile_id)
			kparams = {}
			client.add_param(kparams, 'metadataProfileId', metadata_profile_id);
			client.queue_service_action_call('metadata_metadataprofile', 'listFields', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete an existing metadata profile
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('metadata_metadataprofile', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update an existing metadata object definition file
		# 	 
		def revert(id, to_version)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'toVersion', to_version);
			client.queue_service_action_call('metadata_metadataprofile', 'revert', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update an existing metadata object definition file
		# 	 
		def update_definition_from_file(id, xsd_file)
			kparams = {}
			client.add_param(kparams, 'id', id);
			# XSD metadata definition
			client.add_param(kparams, 'xsdFile', xsd_file);
			client.queue_service_action_call('metadata_metadataprofile', 'updateDefinitionFromFile', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update an existing metadata object views file
		# 	 
		def update_views_from_file(id, views_file)
			kparams = {}
			client.add_param(kparams, 'id', id);
			# UI views file
			client.add_param(kparams, 'viewsFile', views_file);
			client.queue_service_action_call('metadata_metadataprofile', 'updateViewsFromFile', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update an existing metadata object xslt file
		# 	 
		def update_transformation_from_file(id, xslt_file)
			kparams = {}
			client.add_param(kparams, 'id', id);
			# XSLT file, will be executed on every metadata add/update
			client.add_param(kparams, 'xsltFile', xslt_file);
			client.queue_service_action_call('metadata_metadataprofile', 'updateTransformationFromFile', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Serves metadata profile XSD file
		# 	 
		def serve(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('metadata_metadataprofile', 'serve', kparams);
			return client.get_serve_url();
		end

		# Serves metadata profile view file
		# 	 
		def serve_view(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('metadata_metadataprofile', 'serveView', kparams);
			return client.get_serve_url();
		end
	end

	class KalturaClient < KalturaClientBase
		attr_reader :metadata_service
		def metadata_service
			if (@metadata_service == nil)
				@metadata_service = KalturaMetadataService.new(self)
			end
			return @metadata_service
		end
		attr_reader :metadata_profile_service
		def metadata_profile_service
			if (@metadata_profile_service == nil)
				@metadata_profile_service = KalturaMetadataProfileService.new(self)
			end
			return @metadata_profile_service
		end
	end

end
