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

	class KalturaDocumentType
		DOCUMENT = 11
		SWF = 12
		PDF = 13
	end

	class KalturaDocumentEntryOrderBy
		CREATED_AT_ASC = "+createdAt"
		END_DATE_ASC = "+endDate"
		MODERATION_COUNT_ASC = "+moderationCount"
		NAME_ASC = "+name"
		PARTNER_SORT_VALUE_ASC = "+partnerSortValue"
		RANK_ASC = "+rank"
		RECENT_ASC = "+recent"
		START_DATE_ASC = "+startDate"
		TOTAL_RANK_ASC = "+totalRank"
		UPDATED_AT_ASC = "+updatedAt"
		WEIGHT_ASC = "+weight"
		CREATED_AT_DESC = "-createdAt"
		END_DATE_DESC = "-endDate"
		MODERATION_COUNT_DESC = "-moderationCount"
		NAME_DESC = "-name"
		PARTNER_SORT_VALUE_DESC = "-partnerSortValue"
		RANK_DESC = "-rank"
		RECENT_DESC = "-recent"
		START_DATE_DESC = "-startDate"
		TOTAL_RANK_DESC = "-totalRank"
		UPDATED_AT_DESC = "-updatedAt"
		WEIGHT_DESC = "-weight"
	end

	class KalturaDocumentFlavorParamsOrderBy
	end

	class KalturaDocumentFlavorParamsOutputOrderBy
	end

	class KalturaImageFlavorParamsOrderBy
	end

	class KalturaImageFlavorParamsOutputOrderBy
	end

	class KalturaPdfFlavorParamsOrderBy
	end

	class KalturaPdfFlavorParamsOutputOrderBy
	end

	class KalturaSwfFlavorParamsOrderBy
	end

	class KalturaSwfFlavorParamsOutputOrderBy
	end

	class KalturaDocumentEntry < KalturaBaseEntry
		# The type of the document
		# 	 
		attr_accessor :document_type
		# Comma separated asset params ids that exists for this media entry
		# 	 
		attr_accessor :asset_params_ids

		def document_type=(val)
			@document_type = val.to_i
		end
	end

	class KalturaDocumentListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaDocumentFlavorParams < KalturaFlavorParams

	end

	class KalturaImageFlavorParams < KalturaFlavorParams
		attr_accessor :density_width
		attr_accessor :density_height
		attr_accessor :size_width
		attr_accessor :size_height
		attr_accessor :depth

		def density_width=(val)
			@density_width = val.to_i
		end
		def density_height=(val)
			@density_height = val.to_i
		end
		def size_width=(val)
			@size_width = val.to_i
		end
		def size_height=(val)
			@size_height = val.to_i
		end
		def depth=(val)
			@depth = val.to_i
		end
	end

	class KalturaPdfFlavorParams < KalturaFlavorParams
		attr_accessor :readonly

		def readonly=(val)
			@readonly = to_b(val)
		end
	end

	class KalturaSwfFlavorParams < KalturaFlavorParams
		attr_accessor :flash_version
		attr_accessor :poly2bitmap

		def flash_version=(val)
			@flash_version = val.to_i
		end
		def poly2bitmap=(val)
			@poly2bitmap = to_b(val)
		end
	end

	class KalturaDocumentEntryBaseFilter < KalturaBaseEntryFilter
		attr_accessor :document_type_equal
		attr_accessor :document_type_in
		attr_accessor :asset_params_ids_match_or
		attr_accessor :asset_params_ids_match_and

		def document_type_equal=(val)
			@document_type_equal = val.to_i
		end
	end

	class KalturaDocumentFlavorParamsOutput < KalturaFlavorParamsOutput

	end

	class KalturaImageFlavorParamsOutput < KalturaFlavorParamsOutput
		attr_accessor :density_width
		attr_accessor :density_height
		attr_accessor :size_width
		attr_accessor :size_height
		attr_accessor :depth

		def density_width=(val)
			@density_width = val.to_i
		end
		def density_height=(val)
			@density_height = val.to_i
		end
		def size_width=(val)
			@size_width = val.to_i
		end
		def size_height=(val)
			@size_height = val.to_i
		end
		def depth=(val)
			@depth = val.to_i
		end
	end

	class KalturaPdfFlavorParamsOutput < KalturaFlavorParamsOutput
		attr_accessor :readonly

		def readonly=(val)
			@readonly = to_b(val)
		end
	end

	class KalturaSwfFlavorParamsOutput < KalturaFlavorParamsOutput
		attr_accessor :flash_version
		attr_accessor :poly2bitmap

		def flash_version=(val)
			@flash_version = val.to_i
		end
		def poly2bitmap=(val)
			@poly2bitmap = to_b(val)
		end
	end

	class KalturaDocumentEntryFilter < KalturaDocumentEntryBaseFilter

	end

	class KalturaDocumentFlavorParamsBaseFilter < KalturaFlavorParamsFilter

	end

	class KalturaImageFlavorParamsBaseFilter < KalturaFlavorParamsFilter

	end

	class KalturaPdfFlavorParamsBaseFilter < KalturaFlavorParamsFilter

	end

	class KalturaSwfFlavorParamsBaseFilter < KalturaFlavorParamsFilter

	end

	class KalturaDocumentFlavorParamsFilter < KalturaDocumentFlavorParamsBaseFilter

	end

	class KalturaImageFlavorParamsFilter < KalturaImageFlavorParamsBaseFilter

	end

	class KalturaPdfFlavorParamsFilter < KalturaPdfFlavorParamsBaseFilter

	end

	class KalturaSwfFlavorParamsFilter < KalturaSwfFlavorParamsBaseFilter

	end

	class KalturaDocumentFlavorParamsOutputBaseFilter < KalturaFlavorParamsOutputFilter

	end

	class KalturaImageFlavorParamsOutputBaseFilter < KalturaFlavorParamsOutputFilter

	end

	class KalturaPdfFlavorParamsOutputBaseFilter < KalturaFlavorParamsOutputFilter

	end

	class KalturaSwfFlavorParamsOutputBaseFilter < KalturaFlavorParamsOutputFilter

	end

	class KalturaDocumentFlavorParamsOutputFilter < KalturaDocumentFlavorParamsOutputBaseFilter

	end

	class KalturaImageFlavorParamsOutputFilter < KalturaImageFlavorParamsOutputBaseFilter

	end

	class KalturaPdfFlavorParamsOutputFilter < KalturaPdfFlavorParamsOutputBaseFilter

	end

	class KalturaSwfFlavorParamsOutputFilter < KalturaSwfFlavorParamsOutputBaseFilter

	end


	# Document service lets you upload and manage document files
	#  
	class KalturaDocumentsService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add new document entry after the specific document file was uploaded and the upload token id exists
		# 	 
		def add_from_uploaded_file(document_entry, upload_token_id)
			kparams = {}
			# Document entry metadata
			client.add_param(kparams, 'documentEntry', document_entry);
			# Upload token id
			client.add_param(kparams, 'uploadTokenId', upload_token_id);
			client.queue_service_action_call('document_documents', 'addFromUploadedFile', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Copy entry into new entry
		# 	 
		def add_from_entry(source_entry_id, document_entry=KalturaNotImplemented, source_flavor_params_id=KalturaNotImplemented)
			kparams = {}
			# Document entry id to copy from
			client.add_param(kparams, 'sourceEntryId', source_entry_id);
			# Document entry metadata
			client.add_param(kparams, 'documentEntry', document_entry);
			# The flavor to be used as the new entry source, source flavor will be used if not specified
			client.add_param(kparams, 'sourceFlavorParamsId', source_flavor_params_id);
			client.queue_service_action_call('document_documents', 'addFromEntry', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Copy flavor asset into new entry
		# 	 
		def add_from_flavor_asset(source_flavor_asset_id, document_entry=KalturaNotImplemented)
			kparams = {}
			# Flavor asset id to be used as the new entry source
			client.add_param(kparams, 'sourceFlavorAssetId', source_flavor_asset_id);
			# Document entry metadata
			client.add_param(kparams, 'documentEntry', document_entry);
			client.queue_service_action_call('document_documents', 'addFromFlavorAsset', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Convert entry
		# 	 
		def convert(entry_id, conversion_profile_id=KalturaNotImplemented, dynamic_conversion_attributes=KalturaNotImplemented)
			kparams = {}
			# Document entry id
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'conversionProfileId', conversion_profile_id);
			dynamicConversionAttributes.each do |obj|
				client.add_param(kparams, 'dynamicConversionAttributes', obj);
			end
			client.queue_service_action_call('document_documents', 'convert', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get document entry by ID.
		# 	 
		def get(entry_id, version=-1)
			kparams = {}
			# Document entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Desired version of the data
			client.add_param(kparams, 'version', version);
			client.queue_service_action_call('document_documents', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update document entry. Only the properties that were set will be updated.
		# 	 
		def update(entry_id, document_entry)
			kparams = {}
			# Document entry id to update
			client.add_param(kparams, 'entryId', entry_id);
			# Document entry metadata to update
			client.add_param(kparams, 'documentEntry', document_entry);
			client.queue_service_action_call('document_documents', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete a document entry.
		# 	 
		def delete(entry_id)
			kparams = {}
			# Document entry id to delete
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('document_documents', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List document entries by filter with paging support.
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			# Document entry filter
			client.add_param(kparams, 'filter', filter);
			# Pager
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('document_documents', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Upload a document file to Kaltura, then the file can be used to create a document entry. 
		# 	 
		def upload(file_data)
			kparams = {}
			# The file data
			client.add_param(kparams, 'fileData', file_data);
			client.queue_service_action_call('document_documents', 'upload', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# This will queue a batch job for converting the document file to swf
		# 	 Returns the URL where the new swf will be available 
		# 	 
		def convert_ppt_to_swf(entry_id)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('document_documents', 'convertPptToSwf', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Serves the file content
		# 	 
		def serve(entry_id, flavor_asset_id=KalturaNotImplemented, force_proxy=false)
			kparams = {}
			# Document entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Flavor asset id
			client.add_param(kparams, 'flavorAssetId', flavor_asset_id);
			# force to get the content without redirect
			client.add_param(kparams, 'forceProxy', force_proxy);
			client.queue_service_action_call('document_documents', 'serve', kparams);
			return client.get_serve_url();
		end

		# Serves the file content
		# 	 
		def serve_by_flavor_params_id(entry_id, flavor_params_id=KalturaNotImplemented, force_proxy=false)
			kparams = {}
			# Document entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Flavor params id
			client.add_param(kparams, 'flavorParamsId', flavor_params_id);
			# force to get the content without redirect
			client.add_param(kparams, 'forceProxy', force_proxy);
			client.queue_service_action_call('document_documents', 'serveByFlavorParamsId', kparams);
			return client.get_serve_url();
		end

		# Replace content associated with the given document entry.
		# 	 
		def update_content(entry_id, resource, conversion_profile_id=KalturaNotImplemented)
			kparams = {}
			# document entry id to update
			client.add_param(kparams, 'entryId', entry_id);
			# Resource to be used to replace entry doc content
			client.add_param(kparams, 'resource', resource);
			# The conversion profile id to be used on the entry
			client.add_param(kparams, 'conversionProfileId', conversion_profile_id);
			client.queue_service_action_call('document_documents', 'updateContent', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Approves document replacement
		# 	 
		def approve_replace(entry_id)
			kparams = {}
			# document entry id to replace
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('document_documents', 'approveReplace', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Cancels document replacement
		# 	 
		def cancel_replace(entry_id)
			kparams = {}
			# Document entry id to cancel
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('document_documents', 'cancelReplace', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	class KalturaClient < KalturaClientBase
		attr_reader :documents_service
		def documents_service
			if (@documents_service == nil)
				@documents_service = KalturaDocumentsService.new(self)
			end
			return @documents_service
		end
	end

end
