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

	class KalturaVirusFoundAction
		NONE = 0
		DELETE = 1
		CLEAN_NONE = 2
		CLEAN_DELETE = 3
	end

	class KalturaVirusScanJobResult
		SCAN_ERROR = 1
		FILE_IS_CLEAN = 2
		FILE_WAS_CLEANED = 3
		FILE_INFECTED = 4
	end

	class KalturaVirusScanProfileStatus
		DISABLED = 1
		ENABLED = 2
		DELETED = 3
	end

	class KalturaVirusScanEngineType
		CLAMAV_SCAN_ENGINE = "clamAVScanEngine.ClamAV"
		SYMANTEC_SCAN_DIRECT_ENGINE = "symantecScanEngine.SymantecScanDirectEngine"
		SYMANTEC_SCAN_ENGINE = "symantecScanEngine.SymantecScanEngine"
		SYMANTEC_SCAN_JAVA_ENGINE = "symantecScanEngine.SymantecScanJavaEngine"
	end

	class KalturaVirusScanProfileOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaVirusScanProfile < KalturaObjectBase
		attr_accessor :id
		attr_accessor :created_at
		attr_accessor :updated_at
		attr_accessor :partner_id
		attr_accessor :name
		attr_accessor :status
		attr_accessor :engine_type
		attr_accessor :entry_filter
		attr_accessor :action_if_infected

		def id=(val)
			@id = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
		def action_if_infected=(val)
			@action_if_infected = val.to_i
		end
	end

	class KalturaVirusScanProfileListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaParseCaptionAssetJobData < KalturaJobData
		attr_accessor :caption_asset_id

	end

	class KalturaVirusScanJobData < KalturaJobData
		attr_accessor :src_file_path
		attr_accessor :flavor_asset_id
		attr_accessor :scan_result
		attr_accessor :virus_found_action

		def scan_result=(val)
			@scan_result = val.to_i
		end
		def virus_found_action=(val)
			@virus_found_action = val.to_i
		end
	end

	class KalturaVirusScanProfileBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
		attr_accessor :partner_id_equal
		attr_accessor :partner_id_in
		attr_accessor :name_equal
		attr_accessor :name_like
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :engine_type_equal
		attr_accessor :engine_type_in

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
		def partner_id_equal=(val)
			@partner_id_equal = val.to_i
		end
		def status_equal=(val)
			@status_equal = val.to_i
		end
	end

	class KalturaVirusScanProfileFilter < KalturaVirusScanProfileBaseFilter

	end


	# Virus scan profile service
	#  
	class KalturaVirusScanProfileService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# List virus scan profile objects by filter and pager
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('virusscan_virusscanprofile', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Allows you to add an virus scan profile object and virus scan profile content associated with Kaltura object
		# 	 
		def add(virus_scan_profile)
			kparams = {}
			client.add_param(kparams, 'virusScanProfile', virus_scan_profile);
			client.queue_service_action_call('virusscan_virusscanprofile', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve an virus scan profile object by id
		# 	 
		def get(virus_scan_profile_id)
			kparams = {}
			client.add_param(kparams, 'virusScanProfileId', virus_scan_profile_id);
			client.queue_service_action_call('virusscan_virusscanprofile', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update exisitng virus scan profile, it is possible to update the virus scan profile id too
		# 	 
		def update(virus_scan_profile_id, virus_scan_profile)
			kparams = {}
			client.add_param(kparams, 'virusScanProfileId', virus_scan_profile_id);
			# Id
			client.add_param(kparams, 'virusScanProfile', virus_scan_profile);
			client.queue_service_action_call('virusscan_virusscanprofile', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Mark the virus scan profile as deleted
		# 	 
		def delete(virus_scan_profile_id)
			kparams = {}
			client.add_param(kparams, 'virusScanProfileId', virus_scan_profile_id);
			client.queue_service_action_call('virusscan_virusscanprofile', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Scan flavor asset according to virus scan profile
		# 	 
		def scan(flavor_asset_id, virus_scan_profile_id=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'flavorAssetId', flavor_asset_id);
			client.add_param(kparams, 'virusScanProfileId', virus_scan_profile_id);
			client.queue_service_action_call('virusscan_virusscanprofile', 'scan', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	class KalturaClient < KalturaClientBase
		attr_reader :virus_scan_profile_service
		def virus_scan_profile_service
			if (@virus_scan_profile_service == nil)
				@virus_scan_profile_service = KalturaVirusScanProfileService.new(self)
			end
			return @virus_scan_profile_service
		end
	end

end
