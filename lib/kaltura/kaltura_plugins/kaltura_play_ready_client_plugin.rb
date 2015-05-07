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
require "#{Rails.root}/lib/kaltura/kaltura_plugins/kaltura_drm_client_plugin.rb"

module Kaltura

	class KalturaPlayReadyAnalogVideoOPL
		MIN_100 = 100
		MIN_150 = 150
		MIN_200 = 200
	end

	class KalturaPlayReadyCompressedDigitalVideoOPL
		MIN_400 = 400
		MIN_500 = 500
	end

	class KalturaPlayReadyDigitalAudioOPL
		MIN_100 = 100
		MIN_150 = 150
		MIN_200 = 200
		MIN_250 = 250
		MIN_300 = 300
	end

	class KalturaPlayReadyLicenseRemovalPolicy
		FIXED_FROM_EXPIRATION = 1
		ENTRY_SCHEDULING_END = 2
		NONE = 3
	end

	class KalturaPlayReadyMinimumLicenseSecurityLevel
		NON_COMMERCIAL_QUALITY = 150
		COMMERCIAL_QUALITY = 2000
	end

	class KalturaPlayReadyUncompressedDigitalVideoOPL
		MIN_100 = 100
		MIN_250 = 250
		MIN_270 = 270
		MIN_300 = 300
	end

	class KalturaPlayReadyAnalogVideoOPId
		EXPLICIT_ANALOG_TV = "2098DE8D-7DDD-4BAB-96C6-32EBB6FABEA3"
		BEST_EFFORT_EXPLICIT_ANALOG_TV = "225CD36F-F132-49EF-BA8C-C91EA28E4369"
		IMAGE_CONSTRAINT_VIDEO = "811C5110-46C8-4C6E-8163-C0482A15D47E"
		AGC_AND_COLOR_STRIPE = "C3FD11C6-F8B7-4D20-B008-1DB17D61F2DA"
		IMAGE_CONSTRAINT_MONITOR = "D783A191-E083-4BAF-B2DA-E69F910B3772"
	end

	class KalturaPlayReadyCopyEnablerType
		CSS = "3CAF2814-A7AB-467C-B4DF-54ACC56C66DC"
		PRINTER = "3CF2E054-F4D5-46cd-85A6-FCD152AD5FBE"
		DEVICE = "6848955D-516B-4EB0-90E8-8F6D5A77B85F"
		CLIPBOARD = "6E76C588-C3A9-47ea-A875-546D5209FF38"
		SDC = "79F78A0D-0B69-401e-8A90-8BEF30BCE192"
		SDC_PREVIEW = "81BD9AD4-A720-4ea1-B510-5D4E6FFB6A4D"
		AACS = "C3CF56E0-7FF2-4491-809F-53E21D3ABF07"
		HELIX = "CCB0B4E3-8B46-409e-A998-82556E3F5AF4"
		CPRM = "CDD801AD-A577-48DB-950E-46D5F1592FAE"
		PC = "CE480EDE-516B-40B3-90E1-D6CFC47630C5"
		SDC_LIMITED = "E6785609-64CC-4bfa-B82D-6B619733B746"
		ORANGE_BOOK_CD = "EC930B7D-1F2D-4682-A38B-8AB977721D0D"
	end

	class KalturaPlayReadyDigitalAudioOPId
		SCMS = "6D5CFA59-C250-4426-930E-FAC72C8FCFA6"
	end

	class KalturaPlayReadyPlayEnablerType
		HELIX = "002F9772-38A0-43E5-9F79-0F6361DCC62A"
		HDCP_WIVU = "1B4542E3-B5CF-4C99-B3BA-829AF46C92F8"
		AIRPLAY = "5ABF0F0D-DC29-4B82-9982-FD8E57525BFC"
		UNKNOWN = "786627D8-C2A6-44BE-8F88-08AE255B01A"
		HDCP_MIRACAST = "A340C256-0941-4D4C-AD1D-0B6735C0CB24"
		UNKNOWN_520 = "B621D91F-EDCC-4035-8D4B-DC71760D43E9"
		DTCP = "D685030B-0F4F-43A6-BBAD-356F1EA0049A"
	end

	class KalturaPlayReadyPolicyOrderBy
	end

	class KalturaPlayReadyProfileOrderBy
		ID_ASC = "+id"
		NAME_ASC = "+name"
		ID_DESC = "-id"
		NAME_DESC = "-name"
	end

	class KalturaPlayReadyAnalogVideoOPIdHolder < KalturaObjectBase
		# The type of the play enabler
		# 	 
		attr_accessor :type

	end

	class KalturaPlayReadyContentKey < KalturaObjectBase
		# Guid - key id of the specific content 
		# 	 
		attr_accessor :key_id
		# License content key 64 bit encoded
		# 	 
		attr_accessor :content_key

	end

	class KalturaPlayReadyCopyEnablerHolder < KalturaObjectBase
		# The type of the copy enabler
		# 	 
		attr_accessor :type

	end

	class KalturaPlayReadyDigitalAudioOPIdHolder < KalturaObjectBase
		# The type of the play enabler
		# 	 
		attr_accessor :type

	end

	class KalturaPlayReadyRight < KalturaObjectBase

	end

	class KalturaPlayReadyPolicy < KalturaDrmPolicy
		attr_accessor :grace_period
		attr_accessor :license_removal_policy
		attr_accessor :license_removal_duration
		attr_accessor :min_security_level
		attr_accessor :rights

		def grace_period=(val)
			@grace_period = val.to_i
		end
		def license_removal_policy=(val)
			@license_removal_policy = val.to_i
		end
		def license_removal_duration=(val)
			@license_removal_duration = val.to_i
		end
		def min_security_level=(val)
			@min_security_level = val.to_i
		end
	end

	class KalturaPlayReadyLicenseDetails < KalturaObjectBase
		# PlayReady policy object
		# 	 
		attr_accessor :policy
		# License begin date
		# 	 
		attr_accessor :begin_date
		# License expiration date
		# 	 
		attr_accessor :expiration_date
		# License removal date
		# 	 
		attr_accessor :removal_date

		def begin_date=(val)
			@begin_date = val.to_i
		end
		def expiration_date=(val)
			@expiration_date = val.to_i
		end
		def removal_date=(val)
			@removal_date = val.to_i
		end
	end

	class KalturaPlayReadyPlayEnablerHolder < KalturaObjectBase
		# The type of the play enabler
		# 	 
		attr_accessor :type

	end

	class KalturaAccessControlPlayReadyPolicyAction < KalturaRuleAction
		# Play ready policy id 
		# 	 
		attr_accessor :policy_id

		def policy_id=(val)
			@policy_id = val.to_i
		end
	end

	class KalturaPlayReadyCopyRight < KalturaPlayReadyRight
		attr_accessor :copy_count
		attr_accessor :copy_enablers

		def copy_count=(val)
			@copy_count = val.to_i
		end
	end

	class KalturaPlayReadyPlayRight < KalturaPlayReadyRight
		attr_accessor :analog_video_opl
		attr_accessor :analog_video_output_protection_list
		attr_accessor :compressed_digital_audio_opl
		attr_accessor :compressed_digital_video_opl
		attr_accessor :digital_audio_output_protection_list
		attr_accessor :uncompressed_digital_audio_opl
		attr_accessor :uncompressed_digital_video_opl
		attr_accessor :first_play_expiration
		attr_accessor :play_enablers

		def analog_video_opl=(val)
			@analog_video_opl = val.to_i
		end
		def compressed_digital_audio_opl=(val)
			@compressed_digital_audio_opl = val.to_i
		end
		def compressed_digital_video_opl=(val)
			@compressed_digital_video_opl = val.to_i
		end
		def uncompressed_digital_audio_opl=(val)
			@uncompressed_digital_audio_opl = val.to_i
		end
		def uncompressed_digital_video_opl=(val)
			@uncompressed_digital_video_opl = val.to_i
		end
		def first_play_expiration=(val)
			@first_play_expiration = val.to_i
		end
	end

	class KalturaPlayReadyProfile < KalturaDrmProfile
		attr_accessor :key_seed

	end

	class KalturaPlayReadyPolicyBaseFilter < KalturaDrmPolicyFilter

	end

	class KalturaPlayReadyProfileBaseFilter < KalturaDrmProfileFilter

	end

	class KalturaPlayReadyPolicyFilter < KalturaPlayReadyPolicyBaseFilter

	end

	class KalturaPlayReadyProfileFilter < KalturaPlayReadyProfileBaseFilter

	end


	class KalturaPlayReadyDrmService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Generate key id and content key for PlayReady encryption
		# 	 
		def generate_key()
			kparams = {}
			client.queue_service_action_call('playready_playreadydrm', 'generateKey', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get content keys for input key ids
		# 	 
		def get_content_keys(key_ids)
			kparams = {}
			# - comma separated key id's 
			client.add_param(kparams, 'keyIds', key_ids);
			client.queue_service_action_call('playready_playreadydrm', 'getContentKeys', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get content key and key id for the given entry
		# 	 
		def get_entry_content_key(entry_id, create_if_missing=false)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'createIfMissing', create_if_missing);
			client.queue_service_action_call('playready_playreadydrm', 'getEntryContentKey', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get Play Ready policy and dates for license creation
		# 	 
		def get_license_details(key_id, device_id, device_type, entry_id=KalturaNotImplemented, referrer=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'keyId', key_id);
			client.add_param(kparams, 'deviceId', device_id);
			client.add_param(kparams, 'deviceType', device_type);
			client.add_param(kparams, 'entryId', entry_id);
			# 64base encoded  
			client.add_param(kparams, 'referrer', referrer);
			client.queue_service_action_call('playready_playreadydrm', 'getLicenseDetails', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	class KalturaClient < KalturaClientBase
		attr_reader :play_ready_drm_service
		def play_ready_drm_service
			if (@play_ready_drm_service == nil)
				@play_ready_drm_service = KalturaPlayReadyDrmService.new(self)
			end
			return @play_ready_drm_service
		end
	end

end
