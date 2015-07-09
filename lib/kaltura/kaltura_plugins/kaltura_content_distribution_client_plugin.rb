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

	class KalturaDistributionAction
		SUBMIT = 1
		UPDATE = 2
		DELETE = 3
		FETCH_REPORT = 4
	end

	class KalturaDistributionErrorType
		MISSING_FLAVOR = 1
		MISSING_THUMBNAIL = 2
		MISSING_METADATA = 3
		INVALID_DATA = 4
		MISSING_ASSET = 5
		CONDITION_NOT_MET = 6
	end

	class KalturaDistributionFieldRequiredStatus
		NOT_REQUIRED = 0
		REQUIRED_BY_PROVIDER = 1
		REQUIRED_BY_PARTNER = 2
		REQUIRED_FOR_AUTOMATIC_DISTRIBUTION = 3
	end

	class KalturaDistributionProfileActionStatus
		DISABLED = 1
		AUTOMATIC = 2
		MANUAL = 3
	end

	class KalturaDistributionProfileStatus
		DISABLED = 1
		ENABLED = 2
		DELETED = 3
	end

	class KalturaDistributionProtocol
		FTP = 1
		SCP = 2
		SFTP = 3
		HTTP = 4
		HTTPS = 5
		ASPERA = 10
	end

	class KalturaDistributionValidationErrorType
		CUSTOM_ERROR = 0
		STRING_EMPTY = 1
		STRING_TOO_LONG = 2
		STRING_TOO_SHORT = 3
		INVALID_FORMAT = 4
	end

	class KalturaEntryDistributionFlag
		NONE = 0
		SUBMIT_REQUIRED = 1
		DELETE_REQUIRED = 2
		UPDATE_REQUIRED = 3
		ENABLE_REQUIRED = 4
		DISABLE_REQUIRED = 5
	end

	class KalturaEntryDistributionStatus
		PENDING = 0
		QUEUED = 1
		READY = 2
		DELETED = 3
		SUBMITTING = 4
		UPDATING = 5
		DELETING = 6
		ERROR_SUBMITTING = 7
		ERROR_UPDATING = 8
		ERROR_DELETING = 9
		REMOVED = 10
		IMPORT_SUBMITTING = 11
		IMPORT_UPDATING = 12
	end

	class KalturaEntryDistributionSunStatus
		BEFORE_SUNRISE = 1
		AFTER_SUNRISE = 2
		AFTER_SUNSET = 3
	end

	class KalturaGenericDistributionProviderParser
		XSL = 1
		XPATH = 2
		REGEX = 3
	end

	class KalturaGenericDistributionProviderStatus
		ACTIVE = 2
		DELETED = 3
	end

	class KalturaConfigurableDistributionProfileOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaDistributionProfileOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaDistributionProviderOrderBy
	end

	class KalturaDistributionProviderType
		ATT_UVERSE = "attUverseDistribution.ATT_UVERSE"
		AVN = "avnDistribution.AVN"
		COMCAST_MRSS = "comcastMrssDistribution.COMCAST_MRSS"
		CROSS_KALTURA = "crossKalturaDistribution.CROSS_KALTURA"
		DAILYMOTION = "dailymotionDistribution.DAILYMOTION"
		DOUBLECLICK = "doubleClickDistribution.DOUBLECLICK"
		FREEWHEEL = "freewheelDistribution.FREEWHEEL"
		FREEWHEEL_GENERIC = "freewheelGenericDistribution.FREEWHEEL_GENERIC"
		FTP = "ftpDistribution.FTP"
		FTP_SCHEDULED = "ftpDistribution.FTP_SCHEDULED"
		HULU = "huluDistribution.HULU"
		IDETIC = "ideticDistribution.IDETIC"
		METRO_PCS = "metroPcsDistribution.METRO_PCS"
		MSN = "msnDistribution.MSN"
		NDN = "ndnDistribution.NDN"
		PODCAST = "podcastDistribution.PODCAST"
		QUICKPLAY = "quickPlayDistribution.QUICKPLAY"
		SYNACOR_HBO = "synacorHboDistribution.SYNACOR_HBO"
		TIME_WARNER = "timeWarnerDistribution.TIME_WARNER"
		TVCOM = "tvComDistribution.TVCOM"
		TVINCI = "tvinciDistribution.TVINCI"
		UVERSE_CLICK_TO_ORDER = "uverseClickToOrderDistribution.UVERSE_CLICK_TO_ORDER"
		UVERSE = "uverseDistribution.UVERSE"
		VERIZON_VCAST = "verizonVcastDistribution.VERIZON_VCAST"
		YAHOO = "yahooDistribution.YAHOO"
		YOUTUBE = "youTubeDistribution.YOUTUBE"
		YOUTUBE_API = "youtubeApiDistribution.YOUTUBE_API"
		GENERIC = "1"
		SYNDICATION = "2"
	end

	class KalturaEntryDistributionOrderBy
		CREATED_AT_ASC = "+createdAt"
		SUBMITTED_AT_ASC = "+submittedAt"
		SUNRISE_ASC = "+sunrise"
		SUNSET_ASC = "+sunset"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		SUBMITTED_AT_DESC = "-submittedAt"
		SUNRISE_DESC = "-sunrise"
		SUNSET_DESC = "-sunset"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaGenericDistributionProfileOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaGenericDistributionProviderActionOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaGenericDistributionProviderOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaSyndicationDistributionProfileOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaSyndicationDistributionProviderOrderBy
	end

	# Abstract class for asset distribution condition
	#  
	class KalturaAssetDistributionCondition < KalturaObjectBase

	end

	class KalturaAssetDistributionRule < KalturaObjectBase
		# The validation error description that will be set on the "data" property on KalturaDistributionValidationErrorMissingAsset if rule was not fulfilled
		# 	 
		attr_accessor :validation_error
		# An array of asset distribution conditions
		# 	 
		attr_accessor :asset_distribution_conditions

	end

	class KalturaDistributionFieldConfig < KalturaObjectBase
		# A value taken from a connector field enum which associates the current configuration to that connector field
		#      Field enum class should be returned by the provider's getFieldEnumClass function.
		#      
		attr_accessor :field_name
		# A string that will be shown to the user as the field name in error messages related to the current field
		#      
		attr_accessor :user_friendly_field_name
		# An XSLT string that extracts the right value from the Kaltura entry MRSS XML.
		#      The value of the current connector field will be the one that is returned from transforming the Kaltura entry MRSS XML using this XSLT string.
		#      
		attr_accessor :entry_mrss_xslt
		# Is the field required to have a value for submission ?
		#      
		attr_accessor :is_required
		# Trigger distribution update when this field changes or not ?
		#      
		attr_accessor :update_on_change
		# Entry column or metadata xpath that should trigger an update
		#      
		attr_accessor :update_params
		# Is this field config is the default for the distribution provider?
		#      
		attr_accessor :is_default

		def is_required=(val)
			@is_required = val.to_i
		end
		def update_on_change=(val)
			@update_on_change = to_b(val)
		end
		def is_default=(val)
			@is_default = to_b(val)
		end
	end

	class KalturaDistributionJobProviderData < KalturaObjectBase

	end

	class KalturaDistributionThumbDimensions < KalturaObjectBase
		attr_accessor :width
		attr_accessor :height

		def width=(val)
			@width = val.to_i
		end
		def height=(val)
			@height = val.to_i
		end
	end

	class KalturaDistributionProfile < KalturaObjectBase
		# Auto generated unique id
		# 	 
		attr_accessor :id
		# Profile creation date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :created_at
		# Profile last update date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :updated_at
		attr_accessor :partner_id
		attr_accessor :provider_type
		attr_accessor :name
		attr_accessor :status
		attr_accessor :submit_enabled
		attr_accessor :update_enabled
		attr_accessor :delete_enabled
		attr_accessor :report_enabled
		# Comma separated flavor params ids that should be auto converted
		# 	 
		attr_accessor :auto_create_flavors
		# Comma separated thumbnail params ids that should be auto generated
		# 	 
		attr_accessor :auto_create_thumb
		# Comma separated flavor params ids that should be submitted if ready
		# 	 
		attr_accessor :optional_flavor_params_ids
		# Comma separated flavor params ids that required to be ready before submission
		# 	 
		attr_accessor :required_flavor_params_ids
		# Thumbnail dimensions that should be submitted if ready
		# 	 
		attr_accessor :optional_thumb_dimensions
		# Thumbnail dimensions that required to be readt before submission
		# 	 
		attr_accessor :required_thumb_dimensions
		# Asset Distribution Rules for assets that should be submitted if ready
		# 	 
		attr_accessor :optional_asset_distribution_rules
		# Assets Asset Distribution Rules for assets that are required to be ready before submission
		# 	 
		attr_accessor :required_asset_distribution_rules
		# If entry distribution sunrise not specified that will be the default since entry creation time, in seconds
		# 	 
		attr_accessor :sunrise_default_offset
		# If entry distribution sunset not specified that will be the default since entry creation time, in seconds
		# 	 
		attr_accessor :sunset_default_offset
		# The best external storage to be used to download the asset files from
		# 	 
		attr_accessor :recommended_storage_profile_for_download
		# The best Kaltura data center to be used to download the asset files to
		# 	 
		attr_accessor :recommended_dc_for_download
		# The best Kaltura data center to be used to execute the distribution job
		# 	 
		attr_accessor :recommended_dc_for_execute

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
		def submit_enabled=(val)
			@submit_enabled = val.to_i
		end
		def update_enabled=(val)
			@update_enabled = val.to_i
		end
		def delete_enabled=(val)
			@delete_enabled = val.to_i
		end
		def report_enabled=(val)
			@report_enabled = val.to_i
		end
		def sunrise_default_offset=(val)
			@sunrise_default_offset = val.to_i
		end
		def sunset_default_offset=(val)
			@sunset_default_offset = val.to_i
		end
		def recommended_storage_profile_for_download=(val)
			@recommended_storage_profile_for_download = val.to_i
		end
		def recommended_dc_for_download=(val)
			@recommended_dc_for_download = val.to_i
		end
		def recommended_dc_for_execute=(val)
			@recommended_dc_for_execute = val.to_i
		end
	end

	class KalturaDistributionProfileListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaDistributionProvider < KalturaObjectBase
		attr_accessor :type
		attr_accessor :name
		attr_accessor :schedule_update_enabled
		attr_accessor :availability_update_enabled
		attr_accessor :delete_instead_update
		attr_accessor :interval_before_sunrise
		attr_accessor :interval_before_sunset
		attr_accessor :update_required_entry_fields
		attr_accessor :update_required_metadata_xpaths

		def schedule_update_enabled=(val)
			@schedule_update_enabled = to_b(val)
		end
		def availability_update_enabled=(val)
			@availability_update_enabled = to_b(val)
		end
		def delete_instead_update=(val)
			@delete_instead_update = to_b(val)
		end
		def interval_before_sunrise=(val)
			@interval_before_sunrise = val.to_i
		end
		def interval_before_sunset=(val)
			@interval_before_sunset = val.to_i
		end
	end

	class KalturaDistributionProviderListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaDistributionRemoteMediaFile < KalturaObjectBase
		attr_accessor :version
		attr_accessor :asset_id
		attr_accessor :remote_id

	end

	class KalturaDistributionValidationError < KalturaObjectBase
		attr_accessor :action
		attr_accessor :error_type
		attr_accessor :description

		def action=(val)
			@action = val.to_i
		end
		def error_type=(val)
			@error_type = val.to_i
		end
	end

	class KalturaEntryDistribution < KalturaObjectBase
		# Auto generated unique id
		# 	 
		attr_accessor :id
		# Entry distribution creation date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :created_at
		# Entry distribution last update date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :updated_at
		# Entry distribution submission date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :submitted_at
		attr_accessor :entry_id
		attr_accessor :partner_id
		attr_accessor :distribution_profile_id
		attr_accessor :status
		attr_accessor :sun_status
		attr_accessor :dirty_status
		# Comma separated thumbnail asset ids
		# 	 
		attr_accessor :thumb_asset_ids
		# Comma separated flavor asset ids
		# 	 
		attr_accessor :flavor_asset_ids
		# Comma separated asset ids
		# 	 
		attr_accessor :asset_ids
		# Entry distribution publish time as Unix timestamp (In seconds)
		# 	 
		attr_accessor :sunrise
		# Entry distribution un-publish time as Unix timestamp (In seconds)
		# 	 
		attr_accessor :sunset
		# The id as returned from the distributed destination
		# 	 
		attr_accessor :remote_id
		# The plays as retrieved from the remote destination reports
		# 	 
		attr_accessor :plays
		# The views as retrieved from the remote destination reports
		# 	 
		attr_accessor :views
		attr_accessor :validation_errors
		attr_accessor :error_type
		attr_accessor :error_number
		attr_accessor :error_description
		attr_accessor :has_submit_results_log
		attr_accessor :has_submit_sent_data_log
		attr_accessor :has_update_results_log
		attr_accessor :has_update_sent_data_log
		attr_accessor :has_delete_results_log
		attr_accessor :has_delete_sent_data_log

		def id=(val)
			@id = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
		def submitted_at=(val)
			@submitted_at = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def distribution_profile_id=(val)
			@distribution_profile_id = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
		def sun_status=(val)
			@sun_status = val.to_i
		end
		def dirty_status=(val)
			@dirty_status = val.to_i
		end
		def sunrise=(val)
			@sunrise = val.to_i
		end
		def sunset=(val)
			@sunset = val.to_i
		end
		def plays=(val)
			@plays = val.to_i
		end
		def views=(val)
			@views = val.to_i
		end
		def error_type=(val)
			@error_type = val.to_i
		end
		def error_number=(val)
			@error_number = val.to_i
		end
		def has_submit_results_log=(val)
			@has_submit_results_log = val.to_i
		end
		def has_submit_sent_data_log=(val)
			@has_submit_sent_data_log = val.to_i
		end
		def has_update_results_log=(val)
			@has_update_results_log = val.to_i
		end
		def has_update_sent_data_log=(val)
			@has_update_sent_data_log = val.to_i
		end
		def has_delete_results_log=(val)
			@has_delete_results_log = val.to_i
		end
		def has_delete_sent_data_log=(val)
			@has_delete_sent_data_log = val.to_i
		end
	end

	class KalturaEntryDistributionListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaGenericDistributionProfileAction < KalturaObjectBase
		attr_accessor :protocol
		attr_accessor :server_url
		attr_accessor :server_path
		attr_accessor :username
		attr_accessor :password
		attr_accessor :ftp_passive_mode
		attr_accessor :http_field_name
		attr_accessor :http_file_name

		def protocol=(val)
			@protocol = val.to_i
		end
		def ftp_passive_mode=(val)
			@ftp_passive_mode = to_b(val)
		end
	end

	class KalturaGenericDistributionProviderAction < KalturaObjectBase
		# Auto generated
		# 	 
		attr_accessor :id
		# Generic distribution provider action creation date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :created_at
		# Generic distribution provider action last update date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :updated_at
		attr_accessor :generic_distribution_provider_id
		attr_accessor :action
		attr_accessor :status
		attr_accessor :results_parser
		attr_accessor :protocol
		attr_accessor :server_address
		attr_accessor :remote_path
		attr_accessor :remote_username
		attr_accessor :remote_password
		attr_accessor :editable_fields
		attr_accessor :mandatory_fields
		attr_accessor :mrss_transformer
		attr_accessor :mrss_validator
		attr_accessor :results_transformer

		def id=(val)
			@id = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
		def generic_distribution_provider_id=(val)
			@generic_distribution_provider_id = val.to_i
		end
		def action=(val)
			@action = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
		def results_parser=(val)
			@results_parser = val.to_i
		end
		def protocol=(val)
			@protocol = val.to_i
		end
	end

	class KalturaGenericDistributionProviderActionListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaGenericDistributionProvider < KalturaDistributionProvider
		# Auto generated
		# 	 
		attr_accessor :id
		# Generic distribution provider creation date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :created_at
		# Generic distribution provider last update date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :updated_at
		attr_accessor :partner_id
		attr_accessor :is_default
		attr_accessor :status
		attr_accessor :optional_flavor_params_ids
		attr_accessor :required_flavor_params_ids
		attr_accessor :optional_thumb_dimensions
		attr_accessor :required_thumb_dimensions
		attr_accessor :editable_fields
		attr_accessor :mandatory_fields

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
		def is_default=(val)
			@is_default = to_b(val)
		end
		def status=(val)
			@status = val.to_i
		end
	end

	class KalturaGenericDistributionProviderListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	# Defines the condition to match a property and value on core asset object (or one if its inherited objects)
	#  
	class KalturaAssetDistributionPropertyCondition < KalturaAssetDistributionCondition
		# The property name to look for, this will match to a getter on the asset object.
		# 	 Should be camelCase naming convention (defining "myPropertyName" will look for getMyPropertyName())
		# 	 
		attr_accessor :property_name
		# The value to compare
		# 	 
		attr_accessor :property_value

	end

	class KalturaConfigurableDistributionJobProviderData < KalturaDistributionJobProviderData
		attr_accessor :field_values

	end

	class KalturaConfigurableDistributionProfile < KalturaDistributionProfile
		attr_accessor :field_config_array
		attr_accessor :item_xpaths_to_extend

	end

	class KalturaContentDistributionSearchItem < KalturaSearchItem
		attr_accessor :no_distribution_profiles
		attr_accessor :distribution_profile_id
		attr_accessor :distribution_sun_status
		attr_accessor :entry_distribution_flag
		attr_accessor :entry_distribution_status
		attr_accessor :has_entry_distribution_validation_errors
		# Comma seperated validation error types
		# 	 
		attr_accessor :entry_distribution_validation_errors

		def no_distribution_profiles=(val)
			@no_distribution_profiles = to_b(val)
		end
		def distribution_profile_id=(val)
			@distribution_profile_id = val.to_i
		end
		def distribution_sun_status=(val)
			@distribution_sun_status = val.to_i
		end
		def entry_distribution_flag=(val)
			@entry_distribution_flag = val.to_i
		end
		def entry_distribution_status=(val)
			@entry_distribution_status = val.to_i
		end
		def has_entry_distribution_validation_errors=(val)
			@has_entry_distribution_validation_errors = to_b(val)
		end
	end

	class KalturaDistributionJobData < KalturaJobData
		attr_accessor :distribution_profile_id
		attr_accessor :distribution_profile
		attr_accessor :entry_distribution_id
		attr_accessor :entry_distribution
		# Id of the media in the remote system
		# 	 
		attr_accessor :remote_id
		attr_accessor :provider_type
		# Additional data that relevant for the provider only
		# 	 
		attr_accessor :provider_data
		# The results as returned from the remote destination
		# 	 
		attr_accessor :results
		# The data as sent to the remote destination
		# 	 
		attr_accessor :sent_data
		# Stores array of media files that submitted to the destination site
		# 	 Could be used later for media update 
		# 	 
		attr_accessor :media_files

		def distribution_profile_id=(val)
			@distribution_profile_id = val.to_i
		end
		def entry_distribution_id=(val)
			@entry_distribution_id = val.to_i
		end
	end

	class KalturaDistributionProfileBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
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
		def status_equal=(val)
			@status_equal = val.to_i
		end
	end

	class KalturaDistributionProviderBaseFilter < KalturaFilter
		attr_accessor :type_equal
		attr_accessor :type_in

	end

	class KalturaDistributionValidationErrorConditionNotMet < KalturaDistributionValidationError
		attr_accessor :condition_name

	end

	class KalturaDistributionValidationErrorInvalidData < KalturaDistributionValidationError
		attr_accessor :field_name
		attr_accessor :validation_error_type
		# Parameter of the validation error
		# 	 For example, minimum value for KalturaDistributionValidationErrorType::STRING_TOO_SHORT validation error
		# 	 
		attr_accessor :validation_error_param

		def validation_error_type=(val)
			@validation_error_type = val.to_i
		end
	end

	class KalturaDistributionValidationErrorMissingAsset < KalturaDistributionValidationError
		attr_accessor :data

	end

	class KalturaDistributionValidationErrorMissingFlavor < KalturaDistributionValidationError
		attr_accessor :flavor_params_id

	end

	class KalturaDistributionValidationErrorMissingMetadata < KalturaDistributionValidationError
		attr_accessor :field_name

	end

	class KalturaDistributionValidationErrorMissingThumbnail < KalturaDistributionValidationError
		attr_accessor :dimensions

	end

	class KalturaEntryDistributionBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
		attr_accessor :submitted_at_greater_than_or_equal
		attr_accessor :submitted_at_less_than_or_equal
		attr_accessor :entry_id_equal
		attr_accessor :entry_id_in
		attr_accessor :distribution_profile_id_equal
		attr_accessor :distribution_profile_id_in
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :dirty_status_equal
		attr_accessor :dirty_status_in
		attr_accessor :sunrise_greater_than_or_equal
		attr_accessor :sunrise_less_than_or_equal
		attr_accessor :sunset_greater_than_or_equal
		attr_accessor :sunset_less_than_or_equal

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
		def submitted_at_greater_than_or_equal=(val)
			@submitted_at_greater_than_or_equal = val.to_i
		end
		def submitted_at_less_than_or_equal=(val)
			@submitted_at_less_than_or_equal = val.to_i
		end
		def distribution_profile_id_equal=(val)
			@distribution_profile_id_equal = val.to_i
		end
		def status_equal=(val)
			@status_equal = val.to_i
		end
		def dirty_status_equal=(val)
			@dirty_status_equal = val.to_i
		end
		def sunrise_greater_than_or_equal=(val)
			@sunrise_greater_than_or_equal = val.to_i
		end
		def sunrise_less_than_or_equal=(val)
			@sunrise_less_than_or_equal = val.to_i
		end
		def sunset_greater_than_or_equal=(val)
			@sunset_greater_than_or_equal = val.to_i
		end
		def sunset_less_than_or_equal=(val)
			@sunset_less_than_or_equal = val.to_i
		end
	end

	class KalturaGenericDistributionJobProviderData < KalturaDistributionJobProviderData
		attr_accessor :xml
		attr_accessor :result_parse_data
		attr_accessor :result_parser_type

		def result_parser_type=(val)
			@result_parser_type = val.to_i
		end
	end

	class KalturaGenericDistributionProfile < KalturaDistributionProfile
		attr_accessor :generic_provider_id
		attr_accessor :submit_action
		attr_accessor :update_action
		attr_accessor :delete_action
		attr_accessor :fetch_report_action
		attr_accessor :update_required_entry_fields
		attr_accessor :update_required_metadata_xpaths

		def generic_provider_id=(val)
			@generic_provider_id = val.to_i
		end
	end

	class KalturaGenericDistributionProviderActionBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
		attr_accessor :generic_distribution_provider_id_equal
		attr_accessor :generic_distribution_provider_id_in
		attr_accessor :action_equal
		attr_accessor :action_in

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
		def generic_distribution_provider_id_equal=(val)
			@generic_distribution_provider_id_equal = val.to_i
		end
		def action_equal=(val)
			@action_equal = val.to_i
		end
	end

	class KalturaSyndicationDistributionProfile < KalturaDistributionProfile
		attr_accessor :xsl
		attr_accessor :feed_id

	end

	class KalturaSyndicationDistributionProvider < KalturaDistributionProvider

	end

	class KalturaDistributionDeleteJobData < KalturaDistributionJobData

	end

	class KalturaDistributionFetchReportJobData < KalturaDistributionJobData
		attr_accessor :plays
		attr_accessor :views

		def plays=(val)
			@plays = val.to_i
		end
		def views=(val)
			@views = val.to_i
		end
	end

	class KalturaDistributionProfileFilter < KalturaDistributionProfileBaseFilter

	end

	class KalturaDistributionProviderFilter < KalturaDistributionProviderBaseFilter

	end

	class KalturaDistributionSubmitJobData < KalturaDistributionJobData

	end

	class KalturaDistributionUpdateJobData < KalturaDistributionJobData

	end

	class KalturaDistributionValidationErrorInvalidMetadata < KalturaDistributionValidationErrorInvalidData
		attr_accessor :metadata_profile_id

		def metadata_profile_id=(val)
			@metadata_profile_id = val.to_i
		end
	end

	class KalturaEntryDistributionFilter < KalturaEntryDistributionBaseFilter

	end

	class KalturaGenericDistributionProviderActionFilter < KalturaGenericDistributionProviderActionBaseFilter

	end

	class KalturaConfigurableDistributionProfileBaseFilter < KalturaDistributionProfileFilter

	end

	class KalturaDistributionDisableJobData < KalturaDistributionUpdateJobData

	end

	class KalturaDistributionEnableJobData < KalturaDistributionUpdateJobData

	end

	class KalturaGenericDistributionProfileBaseFilter < KalturaDistributionProfileFilter

	end

	class KalturaGenericDistributionProviderBaseFilter < KalturaDistributionProviderFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
		attr_accessor :partner_id_equal
		attr_accessor :partner_id_in
		attr_accessor :is_default_equal
		attr_accessor :is_default_in
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
		def partner_id_equal=(val)
			@partner_id_equal = val.to_i
		end
		def is_default_equal=(val)
			@is_default_equal = val.to_i
		end
		def status_equal=(val)
			@status_equal = val.to_i
		end
	end

	class KalturaSyndicationDistributionProfileBaseFilter < KalturaDistributionProfileFilter

	end

	class KalturaSyndicationDistributionProviderBaseFilter < KalturaDistributionProviderFilter

	end

	class KalturaConfigurableDistributionProfileFilter < KalturaConfigurableDistributionProfileBaseFilter

	end

	class KalturaGenericDistributionProfileFilter < KalturaGenericDistributionProfileBaseFilter

	end

	class KalturaGenericDistributionProviderFilter < KalturaGenericDistributionProviderBaseFilter

	end

	class KalturaSyndicationDistributionProfileFilter < KalturaSyndicationDistributionProfileBaseFilter

	end

	class KalturaSyndicationDistributionProviderFilter < KalturaSyndicationDistributionProviderBaseFilter

	end


	# Distribution Profile service
	#  
	class KalturaDistributionProfileService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add new Distribution Profile
		# 	 
		def add(distribution_profile)
			kparams = {}
			client.add_param(kparams, 'distributionProfile', distribution_profile);
			client.queue_service_action_call('contentdistribution_distributionprofile', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get Distribution Profile by id
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('contentdistribution_distributionprofile', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update Distribution Profile by id
		# 	 
		def update(id, distribution_profile)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'distributionProfile', distribution_profile);
			client.queue_service_action_call('contentdistribution_distributionprofile', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update Distribution Profile status by id
		# 	 
		def update_status(id, status)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'status', status);
			client.queue_service_action_call('contentdistribution_distributionprofile', 'updateStatus', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete Distribution Profile by id
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('contentdistribution_distributionprofile', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List all distribution providers
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('contentdistribution_distributionprofile', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def list_by_partner(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('contentdistribution_distributionprofile', 'listByPartner', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Entry Distribution service
	#  
	class KalturaEntryDistributionService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add new Entry Distribution
		# 	 
		def add(entry_distribution)
			kparams = {}
			client.add_param(kparams, 'entryDistribution', entry_distribution);
			client.queue_service_action_call('contentdistribution_entrydistribution', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get Entry Distribution by id
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('contentdistribution_entrydistribution', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Validates Entry Distribution by id for submission
		# 	 
		def validate(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('contentdistribution_entrydistribution', 'validate', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update Entry Distribution by id
		# 	 
		def update(id, entry_distribution)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'entryDistribution', entry_distribution);
			client.queue_service_action_call('contentdistribution_entrydistribution', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete Entry Distribution by id
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('contentdistribution_entrydistribution', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List all distribution providers
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('contentdistribution_entrydistribution', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Submits Entry Distribution to the remote destination
		# 	 
		def submit_add(id, submit_when_ready=false)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'submitWhenReady', submit_when_ready);
			client.queue_service_action_call('contentdistribution_entrydistribution', 'submitAdd', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Submits Entry Distribution changes to the remote destination
		# 	 
		def submit_update(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('contentdistribution_entrydistribution', 'submitUpdate', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Submits Entry Distribution report request
		# 	 
		def submit_fetch_report(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('contentdistribution_entrydistribution', 'submitFetchReport', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Deletes Entry Distribution from the remote destination
		# 	 
		def submit_delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('contentdistribution_entrydistribution', 'submitDelete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retries last submit action
		# 	 
		def retry_submit(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('contentdistribution_entrydistribution', 'retrySubmit', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Serves entry distribution sent data
		# 	 
		def serve_sent_data(id, action_type)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'actionType', action_type);
			client.queue_service_action_call('contentdistribution_entrydistribution', 'serveSentData', kparams);
			return client.get_serve_url();
		end

		# Serves entry distribution returned data
		# 	 
		def serve_returned_data(id, action_type)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'actionType', action_type);
			client.queue_service_action_call('contentdistribution_entrydistribution', 'serveReturnedData', kparams);
			return client.get_serve_url();
		end
	end

	# Distribution Provider service
	#  
	class KalturaDistributionProviderService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# List all distribution providers
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('contentdistribution_distributionprovider', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Generic Distribution Provider service
	#  
	class KalturaGenericDistributionProviderService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add new Generic Distribution Provider
		# 	 
		def add(generic_distribution_provider)
			kparams = {}
			client.add_param(kparams, 'genericDistributionProvider', generic_distribution_provider);
			client.queue_service_action_call('contentdistribution_genericdistributionprovider', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get Generic Distribution Provider by id
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('contentdistribution_genericdistributionprovider', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update Generic Distribution Provider by id
		# 	 
		def update(id, generic_distribution_provider)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'genericDistributionProvider', generic_distribution_provider);
			client.queue_service_action_call('contentdistribution_genericdistributionprovider', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete Generic Distribution Provider by id
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('contentdistribution_genericdistributionprovider', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List all distribution providers
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('contentdistribution_genericdistributionprovider', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Generic Distribution Provider Actions service
	#  
	class KalturaGenericDistributionProviderActionService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add new Generic Distribution Provider Action
		# 	 
		def add(generic_distribution_provider_action)
			kparams = {}
			client.add_param(kparams, 'genericDistributionProviderAction', generic_distribution_provider_action);
			client.queue_service_action_call('contentdistribution_genericdistributionprovideraction', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Add MRSS transform file to generic distribution provider action
		# 	 
		def add_mrss_transform(id, xsl_data)
			kparams = {}
			# the id of the generic distribution provider action
			client.add_param(kparams, 'id', id);
			# XSL MRSS transformation data
			client.add_param(kparams, 'xslData', xsl_data);
			client.queue_service_action_call('contentdistribution_genericdistributionprovideraction', 'addMrssTransform', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Add MRSS transform file to generic distribution provider action
		# 	 
		def add_mrss_transform_from_file(id, xsl_file)
			kparams = {}
			# the id of the generic distribution provider action
			client.add_param(kparams, 'id', id);
			# XSL MRSS transformation file
			client.add_param(kparams, 'xslFile', xsl_file);
			client.queue_service_action_call('contentdistribution_genericdistributionprovideraction', 'addMrssTransformFromFile', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Add MRSS validate file to generic distribution provider action
		# 	 
		def add_mrss_validate(id, xsd_data)
			kparams = {}
			# the id of the generic distribution provider action
			client.add_param(kparams, 'id', id);
			# XSD MRSS validatation data
			client.add_param(kparams, 'xsdData', xsd_data);
			client.queue_service_action_call('contentdistribution_genericdistributionprovideraction', 'addMrssValidate', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Add MRSS validate file to generic distribution provider action
		# 	 
		def add_mrss_validate_from_file(id, xsd_file)
			kparams = {}
			# the id of the generic distribution provider action
			client.add_param(kparams, 'id', id);
			# XSD MRSS validatation file
			client.add_param(kparams, 'xsdFile', xsd_file);
			client.queue_service_action_call('contentdistribution_genericdistributionprovideraction', 'addMrssValidateFromFile', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Add results transform file to generic distribution provider action
		# 	 
		def add_results_transform(id, transform_data)
			kparams = {}
			# the id of the generic distribution provider action
			client.add_param(kparams, 'id', id);
			# transformation data xsl, xPath or regex
			client.add_param(kparams, 'transformData', transform_data);
			client.queue_service_action_call('contentdistribution_genericdistributionprovideraction', 'addResultsTransform', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Add MRSS transform file to generic distribution provider action
		# 	 
		def add_results_transform_from_file(id, transform_file)
			kparams = {}
			# the id of the generic distribution provider action
			client.add_param(kparams, 'id', id);
			# transformation file xsl, xPath or regex
			client.add_param(kparams, 'transformFile', transform_file);
			client.queue_service_action_call('contentdistribution_genericdistributionprovideraction', 'addResultsTransformFromFile', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get Generic Distribution Provider Action by id
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('contentdistribution_genericdistributionprovideraction', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get Generic Distribution Provider Action by provider id
		# 	 
		def get_by_provider_id(generic_distribution_provider_id, action_type)
			kparams = {}
			client.add_param(kparams, 'genericDistributionProviderId', generic_distribution_provider_id);
			client.add_param(kparams, 'actionType', action_type);
			client.queue_service_action_call('contentdistribution_genericdistributionprovideraction', 'getByProviderId', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update Generic Distribution Provider Action by provider id
		# 	 
		def update_by_provider_id(generic_distribution_provider_id, action_type, generic_distribution_provider_action)
			kparams = {}
			client.add_param(kparams, 'genericDistributionProviderId', generic_distribution_provider_id);
			client.add_param(kparams, 'actionType', action_type);
			client.add_param(kparams, 'genericDistributionProviderAction', generic_distribution_provider_action);
			client.queue_service_action_call('contentdistribution_genericdistributionprovideraction', 'updateByProviderId', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update Generic Distribution Provider Action by id
		# 	 
		def update(id, generic_distribution_provider_action)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'genericDistributionProviderAction', generic_distribution_provider_action);
			client.queue_service_action_call('contentdistribution_genericdistributionprovideraction', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete Generic Distribution Provider Action by id
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('contentdistribution_genericdistributionprovideraction', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete Generic Distribution Provider Action by provider id
		# 	 
		def delete_by_provider_id(generic_distribution_provider_id, action_type)
			kparams = {}
			client.add_param(kparams, 'genericDistributionProviderId', generic_distribution_provider_id);
			client.add_param(kparams, 'actionType', action_type);
			client.queue_service_action_call('contentdistribution_genericdistributionprovideraction', 'deleteByProviderId', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List all distribution providers
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('contentdistribution_genericdistributionprovideraction', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	class KalturaClient < KalturaClientBase
		attr_reader :distribution_profile_service
		def distribution_profile_service
			if (@distribution_profile_service == nil)
				@distribution_profile_service = KalturaDistributionProfileService.new(self)
			end
			return @distribution_profile_service
		end
		attr_reader :entry_distribution_service
		def entry_distribution_service
			if (@entry_distribution_service == nil)
				@entry_distribution_service = KalturaEntryDistributionService.new(self)
			end
			return @entry_distribution_service
		end
		attr_reader :distribution_provider_service
		def distribution_provider_service
			if (@distribution_provider_service == nil)
				@distribution_provider_service = KalturaDistributionProviderService.new(self)
			end
			return @distribution_provider_service
		end
		attr_reader :generic_distribution_provider_service
		def generic_distribution_provider_service
			if (@generic_distribution_provider_service == nil)
				@generic_distribution_provider_service = KalturaGenericDistributionProviderService.new(self)
			end
			return @generic_distribution_provider_service
		end
		attr_reader :generic_distribution_provider_action_service
		def generic_distribution_provider_action_service
			if (@generic_distribution_provider_action_service == nil)
				@generic_distribution_provider_action_service = KalturaGenericDistributionProviderActionService.new(self)
			end
			return @generic_distribution_provider_action_service
		end
	end

end
