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
require "#{Rails.root}/lib/kaltura/kaltura_client_base.rb"

module Kaltura

	class KalturaAppearInListType
		PARTNER_ONLY = 1
		CATEGORY_MEMBERS_ONLY = 3
	end

	class KalturaAssetParamsDeletePolicy
		KEEP = 0
		DELETE = 1
	end

	class KalturaAssetParamsOrigin
		CONVERT = 0
		INGEST = 1
		CONVERT_WHEN_MISSING = 2
	end

	class KalturaAssetStatus
		ERROR = -1
		QUEUED = 0
		READY = 2
		DELETED = 3
		IMPORTING = 7
		EXPORTING = 9
	end

	class KalturaBatchJobErrorTypes
		APP = 0
		RUNTIME = 1
		HTTP = 2
		CURL = 3
		KALTURA_API = 4
		KALTURA_CLIENT = 5
	end

	class KalturaBatchJobStatus
		PENDING = 0
		QUEUED = 1
		PROCESSING = 2
		PROCESSED = 3
		MOVEFILE = 4
		FINISHED = 5
		FAILED = 6
		ABORTED = 7
		ALMOST_DONE = 8
		RETRY = 9
		FATAL = 10
		DONT_PROCESS = 11
		FINISHED_PARTIALLY = 12
	end

	class KalturaBitRateMode
		CBR = 1
		VBR = 2
	end

	class KalturaCategoryEntryStatus
		PENDING = 1
		ACTIVE = 2
		DELETED = 3
		REJECTED = 4
	end

	class KalturaCategoryStatus
		UPDATING = 1
		ACTIVE = 2
		DELETED = 3
		PURGED = 4
	end

	class KalturaCategoryUserPermissionLevel
		MANAGER = 0
		MODERATOR = 1
		CONTRIBUTOR = 2
		MEMBER = 3
		NONE = 4
	end

	class KalturaCategoryUserStatus
		ACTIVE = 1
		PENDING = 2
		NOT_ACTIVE = 3
		DELETED = 4
	end

	class KalturaCommercialUseType
		NON_COMMERCIAL_USE = 0
		COMMERCIAL_USE = 1
	end

	class KalturaContributionPolicyType
		ALL = 1
		MEMBERS_WITH_CONTRIBUTION_PERMISSION = 2
	end

	class KalturaControlPanelCommandStatus
		PENDING = 1
		HANDLED = 2
		DONE = 3
		FAILED = 4
	end

	class KalturaControlPanelCommandTargetType
		DATA_CENTER = 1
		SCHEDULER = 2
		JOB_TYPE = 3
		JOB = 4
		BATCH = 5
	end

	class KalturaControlPanelCommandType
		KILL = 4
	end

	class KalturaCountryRestrictionType
		RESTRICT_COUNTRY_LIST = 0
		ALLOW_COUNTRY_LIST = 1
	end

	class KalturaDVRStatus
		DISABLED = 0
		ENABLED = 1
	end

	class KalturaDeliveryStatus
		ACTIVE = 0
		DELETED = 1
		STAGING_IN = 2
		STAGING_OUT = 3
	end

	class KalturaDirectoryRestrictionType
		DONT_DISPLAY = 0
		DISPLAY_WITH_LINK = 1
	end

	class KalturaEditorType
		SIMPLE = 1
		ADVANCED = 2
	end

	class KalturaEmailIngestionProfileStatus
		INACTIVE = 0
		ACTIVE = 1
	end

	class KalturaEntryModerationStatus
		PENDING_MODERATION = 1
		APPROVED = 2
		REJECTED = 3
		FLAGGED_FOR_REVIEW = 5
		AUTO_APPROVED = 6
	end

	class KalturaFeatureStatusType
		LOCK_CATEGORY = 1
		CATEGORY = 2
		CATEGORY_ENTRY = 3
		ENTRY = 4
		CATEGORY_USER = 5
		USER = 6
	end

	class KalturaFlavorAssetStatus
		ERROR = -1
		QUEUED = 0
		CONVERTING = 1
		READY = 2
		DELETED = 3
		NOT_APPLICABLE = 4
		TEMP = 5
		WAIT_FOR_CONVERT = 6
		IMPORTING = 7
		VALIDATING = 8
		EXPORTING = 9
	end

	class KalturaFlavorReadyBehaviorType
		NO_IMPACT = 0
		INHERIT_FLAVOR_PARAMS = 0
		REQUIRED = 1
		OPTIONAL = 2
	end

	class KalturaGender
		UNKNOWN = 0
		MALE = 1
		FEMALE = 2
	end

	class KalturaInheritanceType
		INHERIT = 1
		MANUAL = 2
	end

	class KalturaIpAddressRestrictionType
		RESTRICT_LIST = 0
		ALLOW_LIST = 1
	end

	class KalturaLicenseType
		UNKNOWN = -1
		NONE = 0
		COPYRIGHTED = 1
		PUBLIC_DOMAIN = 2
		CREATIVECOMMONS_ATTRIBUTION = 3
		CREATIVECOMMONS_ATTRIBUTION_SHARE_ALIKE = 4
		CREATIVECOMMONS_ATTRIBUTION_NO_DERIVATIVES = 5
		CREATIVECOMMONS_ATTRIBUTION_NON_COMMERCIAL = 6
		CREATIVECOMMONS_ATTRIBUTION_NON_COMMERCIAL_SHARE_ALIKE = 7
		CREATIVECOMMONS_ATTRIBUTION_NON_COMMERCIAL_NO_DERIVATIVES = 8
		GFDL = 9
		GPL = 10
		AFFERO_GPL = 11
		LGPL = 12
		BSD = 13
		APACHE = 14
		MOZILLA = 15
	end

	class KalturaLimitFlavorsRestrictionType
		RESTRICT_LIST = 0
		ALLOW_LIST = 1
	end

	class KalturaLivePublishStatus
		DISABLED = 0
		ENABLED = 1
	end

	class KalturaLiveReportExportType
		PARTNER_TOTAL_ALL = 1
		PARTNER_TOTAL_LIVE = 2
		ENTRY_TIME_LINE_ALL = 11
		ENTRY_TIME_LINE_LIVE = 12
		LOCATION_ALL = 21
		LOCATION_LIVE = 22
		SYNDICATION_ALL = 31
		SYNDICATION_LIVE = 32
	end

	class KalturaMailJobStatus
		PENDING = 1
		SENT = 2
		ERROR = 3
		QUEUED = 4
	end

	class KalturaMediaServerIndex
		PRIMARY = 0
		SECONDARY = 1
	end

	class KalturaMediaType
		VIDEO = 1
		IMAGE = 2
		AUDIO = 5
		LIVE_STREAM_FLASH = 201
		LIVE_STREAM_WINDOWS_MEDIA = 202
		LIVE_STREAM_REAL_MEDIA = 203
		LIVE_STREAM_QUICKTIME = 204
	end

	class KalturaModerationFlagType
		SEXUAL_CONTENT = 1
		VIOLENT_REPULSIVE = 2
		HARMFUL_DANGEROUS = 3
		SPAM_COMMERCIALS = 4
		COPYRIGHT = 5
		TERMS_OF_USE_VIOLATION = 6
	end

	class KalturaMrssExtensionMode
		APPEND = 1
		REPLACE = 2
	end

	class KalturaNotificationObjectType
		ENTRY = 1
		KSHOW = 2
		USER = 3
		BATCH_JOB = 4
	end

	class KalturaNotificationStatus
		PENDING = 1
		SENT = 2
		ERROR = 3
		SHOULD_RESEND = 4
		ERROR_RESENDING = 5
		SENT_SYNCH = 6
		QUEUED = 7
	end

	class KalturaNotificationType
		ENTRY_ADD = 1
		ENTR_UPDATE_PERMISSIONS = 2
		ENTRY_DELETE = 3
		ENTRY_BLOCK = 4
		ENTRY_UPDATE = 5
		ENTRY_UPDATE_THUMBNAIL = 6
		ENTRY_UPDATE_MODERATION = 7
		USER_ADD = 21
		USER_BANNED = 26
	end

	class KalturaNullableBoolean
		NULL_VALUE = -1
		FALSE_VALUE = 0
		TRUE_VALUE = 1
	end

	class KalturaPartnerGroupType
		PUBLISHER = 1
		VAR_GROUP = 2
		GROUP = 3
		TEMPLATE = 4
	end

	class KalturaPartnerStatus
		DELETED = 0
		ACTIVE = 1
		BLOCKED = 2
		FULL_BLOCK = 3
	end

	class KalturaPartnerType
		KMC = 1
		WIKI = 100
		WORDPRESS = 101
		DRUPAL = 102
		DEKIWIKI = 103
		MOODLE = 104
		COMMUNITY_EDITION = 105
		JOOMLA = 106
		BLACKBOARD = 107
		SAKAI = 108
		ADMIN_CONSOLE = 109
	end

	class KalturaPermissionStatus
		ACTIVE = 1
		BLOCKED = 2
		DELETED = 3
	end

	class KalturaPermissionType
		NORMAL = 1
		SPECIAL_FEATURE = 2
		PLUGIN = 3
		PARTNER_GROUP = 4
	end

	class KalturaPlaylistType
		STATIC_LIST = 3
		DYNAMIC = 10
		EXTERNAL = 101
	end

	class KalturaPrivacyType
		ALL = 1
		AUTHENTICATED_USERS = 2
		MEMBERS_ONLY = 3
	end

	class KalturaRecordStatus
		DISABLED = 0
		ENABLED = 1
	end

	class KalturaReportType
		TOP_CONTENT = 1
		CONTENT_DROPOFF = 2
		CONTENT_INTERACTIONS = 3
		MAP_OVERLAY = 4
		TOP_CONTRIBUTORS = 5
		TOP_SYNDICATION = 6
		CONTENT_CONTRIBUTIONS = 7
		USER_ENGAGEMENT = 11
		SPEFICIC_USER_ENGAGEMENT = 12
		USER_TOP_CONTENT = 13
		USER_CONTENT_DROPOFF = 14
		USER_CONTENT_INTERACTIONS = 15
		APPLICATIONS = 16
		USER_USAGE = 17
		SPECIFIC_USER_USAGE = 18
		VAR_USAGE = 19
		TOP_CREATORS = 20
		PLATFORMS = 21
		OPERATION_SYSTEM = 22
		BROWSERS = 23
		LIVE = 24
		PARTNER_USAGE = 201
	end

	class KalturaResponseType
		RESPONSE_TYPE_JSON = 1
		RESPONSE_TYPE_XML = 2
		RESPONSE_TYPE_PHP = 3
		RESPONSE_TYPE_PHP_ARRAY = 4
		RESPONSE_TYPE_HTML = 7
		RESPONSE_TYPE_MRSS = 8
		RESPONSE_TYPE_JSONP = 9
	end

	class KalturaSearchOperatorType
		SEARCH_AND = 1
		SEARCH_OR = 2
	end

	class KalturaSearchProviderType
		FLICKR = 3
		YOUTUBE = 4
		MYSPACE = 7
		PHOTOBUCKET = 8
		JAMENDO = 9
		CCMIXTER = 10
		NYPL = 11
		CURRENT = 12
		MEDIA_COMMONS = 13
		KALTURA = 20
		KALTURA_USER_CLIPS = 21
		ARCHIVE_ORG = 22
		KALTURA_PARTNER = 23
		METACAFE = 24
		SEARCH_PROXY = 28
		PARTNER_SPECIFIC = 100
	end

	class KalturaSessionType
		USER = 0
		ADMIN = 2
	end

	class KalturaSiteRestrictionType
		RESTRICT_SITE_LIST = 0
		ALLOW_SITE_LIST = 1
	end

	class KalturaStatsEventType
		WIDGET_LOADED = 1
		MEDIA_LOADED = 2
		PLAY = 3
		PLAY_REACHED_25 = 4
		PLAY_REACHED_50 = 5
		PLAY_REACHED_75 = 6
		PLAY_REACHED_100 = 7
		OPEN_EDIT = 8
		OPEN_VIRAL = 9
		OPEN_DOWNLOAD = 10
		OPEN_REPORT = 11
		BUFFER_START = 12
		BUFFER_END = 13
		OPEN_FULL_SCREEN = 14
		CLOSE_FULL_SCREEN = 15
		REPLAY = 16
		SEEK = 17
		OPEN_UPLOAD = 18
		SAVE_PUBLISH = 19
		CLOSE_EDITOR = 20
		PRE_BUMPER_PLAYED = 21
		POST_BUMPER_PLAYED = 22
		BUMPER_CLICKED = 23
		PREROLL_STARTED = 24
		MIDROLL_STARTED = 25
		POSTROLL_STARTED = 26
		OVERLAY_STARTED = 27
		PREROLL_CLICKED = 28
		MIDROLL_CLICKED = 29
		POSTROLL_CLICKED = 30
		OVERLAY_CLICKED = 31
		PREROLL_25 = 32
		PREROLL_50 = 33
		PREROLL_75 = 34
		MIDROLL_25 = 35
		MIDROLL_50 = 36
		MIDROLL_75 = 37
		POSTROLL_25 = 38
		POSTROLL_50 = 39
		POSTROLL_75 = 40
	end

	class KalturaStatsFeatureType
		NONE = 0
		RELATED = 1
	end

	class KalturaStatsKmcEventType
		CONTENT_PAGE_VIEW = 1001
		CONTENT_ADD_PLAYLIST = 1010
		CONTENT_EDIT_PLAYLIST = 1011
		CONTENT_DELETE_PLAYLIST = 1012
		CONTENT_EDIT_ENTRY = 1013
		CONTENT_CHANGE_THUMBNAIL = 1014
		CONTENT_ADD_TAGS = 1015
		CONTENT_REMOVE_TAGS = 1016
		CONTENT_ADD_ADMIN_TAGS = 1017
		CONTENT_REMOVE_ADMIN_TAGS = 1018
		CONTENT_DOWNLOAD = 1019
		CONTENT_APPROVE_MODERATION = 1020
		CONTENT_REJECT_MODERATION = 1021
		CONTENT_BULK_UPLOAD = 1022
		CONTENT_ADMIN_KCW_UPLOAD = 1023
		ACCOUNT_CHANGE_PARTNER_INFO = 1030
		ACCOUNT_CHANGE_LOGIN_INFO = 1031
		ACCOUNT_CONTACT_US_USAGE = 1032
		ACCOUNT_UPDATE_SERVER_SETTINGS = 1033
		ACCOUNT_ACCOUNT_OVERVIEW = 1034
		ACCOUNT_ACCESS_CONTROL = 1035
		ACCOUNT_TRANSCODING_SETTINGS = 1036
		ACCOUNT_ACCOUNT_UPGRADE = 1037
		ACCOUNT_SAVE_SERVER_SETTINGS = 1038
		ACCOUNT_ACCESS_CONTROL_DELETE = 1039
		ACCOUNT_SAVE_TRANSCODING_SETTINGS = 1040
		LOGIN = 1041
		DASHBOARD_IMPORT_CONTENT = 1042
		DASHBOARD_UPDATE_CONTENT = 1043
		DASHBOARD_ACCOUNT_CONTACT_US = 1044
		DASHBOARD_VIEW_REPORTS = 1045
		DASHBOARD_EMBED_PLAYER = 1046
		DASHBOARD_EMBED_PLAYLIST = 1047
		DASHBOARD_CUSTOMIZE_PLAYERS = 1048
		APP_STUDIO_NEW_PLAYER_SINGLE_VIDEO = 1050
		APP_STUDIO_NEW_PLAYER_PLAYLIST = 1051
		APP_STUDIO_NEW_PLAYER_MULTI_TAB_PLAYLIST = 1052
		APP_STUDIO_EDIT_PLAYER_SINGLE_VIDEO = 1053
		APP_STUDIO_EDIT_PLAYER_PLAYLIST = 1054
		APP_STUDIO_EDIT_PLAYER_MULTI_TAB_PLAYLIST = 1055
		APP_STUDIO_DUPLICATE_PLAYER = 1056
		CONTENT_CONTENT_GO_TO_PAGE = 1057
		CONTENT_DELETE_ITEM = 1058
		CONTENT_DELETE_MIX = 1059
		REPORTS_AND_ANALYTICS_BANDWIDTH_USAGE_TAB = 1070
		REPORTS_AND_ANALYTICS_CONTENT_REPORTS_TAB = 1071
		REPORTS_AND_ANALYTICS_USERS_AND_COMMUNITY_REPORTS_TAB = 1072
		REPORTS_AND_ANALYTICS_TOP_CONTRIBUTORS = 1073
		REPORTS_AND_ANALYTICS_MAP_OVERLAYS = 1074
		REPORTS_AND_ANALYTICS_TOP_SYNDICATIONS = 1075
		REPORTS_AND_ANALYTICS_TOP_CONTENT = 1076
		REPORTS_AND_ANALYTICS_CONTENT_DROPOFF = 1077
		REPORTS_AND_ANALYTICS_CONTENT_INTERACTIONS = 1078
		REPORTS_AND_ANALYTICS_CONTENT_CONTRIBUTIONS = 1079
		REPORTS_AND_ANALYTICS_VIDEO_DRILL_DOWN = 1080
		REPORTS_AND_ANALYTICS_CONTENT_DRILL_DOWN_INTERACTION = 1081
		REPORTS_AND_ANALYTICS_CONTENT_CONTRIBUTIONS_DRILLDOWN = 1082
		REPORTS_AND_ANALYTICS_VIDEO_DRILL_DOWN_DROPOFF = 1083
		REPORTS_AND_ANALYTICS_MAP_OVERLAYS_DRILLDOWN = 1084
		REPORTS_AND_ANALYTICS_TOP_SYNDICATIONS_DRILL_DOWN = 1085
		REPORTS_AND_ANALYTICS_BANDWIDTH_USAGE_VIEW_MONTHLY = 1086
		REPORTS_AND_ANALYTICS_BANDWIDTH_USAGE_VIEW_YEARLY = 1087
		CONTENT_ENTRY_DRILLDOWN = 1088
		CONTENT_OPEN_PREVIEW_AND_EMBED = 1089
	end

	class KalturaStorageProfileDeliveryStatus
		ACTIVE = 1
		BLOCKED = 2
	end

	class KalturaStorageProfileReadyBehavior
		NO_IMPACT = 0
		REQUIRED = 1
	end

	class KalturaStorageProfileStatus
		DISABLED = 1
		AUTOMATIC = 2
		MANUAL = 3
	end

	class KalturaSyndicationFeedStatus
		DELETED = -1
		ACTIVE = 1
	end

	class KalturaSyndicationFeedType
		GOOGLE_VIDEO = 1
		YAHOO = 2
		ITUNES = 3
		TUBE_MOGUL = 4
		KALTURA = 5
		KALTURA_XSLT = 6
	end

	class KalturaThumbAssetStatus
		ERROR = -1
		QUEUED = 0
		CAPTURING = 1
		READY = 2
		DELETED = 3
		IMPORTING = 7
		EXPORTING = 9
	end

	class KalturaThumbCropType
		RESIZE = 1
		RESIZE_WITH_PADDING = 2
		CROP = 3
		CROP_FROM_TOP = 4
		RESIZE_WITH_FORCE = 5
	end

	class KalturaUiConfCreationMode
		WIZARD = 2
		ADVANCED = 3
	end

	class KalturaUiConfObjType
		PLAYER = 1
		CONTRIBUTION_WIZARD = 2
		SIMPLE_EDITOR = 3
		ADVANCED_EDITOR = 4
		PLAYLIST = 5
		APP_STUDIO = 6
		KRECORD = 7
		PLAYER_V3 = 8
		KMC_ACCOUNT = 9
		KMC_ANALYTICS = 10
		KMC_CONTENT = 11
		KMC_DASHBOARD = 12
		KMC_LOGIN = 13
		PLAYER_SL = 14
		CLIENTSIDE_ENCODER = 15
		KMC_GENERAL = 16
		KMC_ROLES_AND_PERMISSIONS = 17
		CLIPPER = 18
		KSR = 19
		KUPLOAD = 20
	end

	class KalturaUpdateMethodType
		MANUAL = 0
		AUTOMATIC = 1
	end

	class KalturaUploadErrorCode
		NO_ERROR = 0
		GENERAL_ERROR = 1
		PARTIAL_UPLOAD = 2
	end

	class KalturaUploadTokenStatus
		PENDING = 0
		PARTIAL_UPLOAD = 1
		FULL_UPLOAD = 2
		CLOSED = 3
		TIMED_OUT = 4
		DELETED = 5
	end

	class KalturaUserAgentRestrictionType
		RESTRICT_LIST = 0
		ALLOW_LIST = 1
	end

	class KalturaUserJoinPolicyType
		AUTO_JOIN = 1
		REQUEST_TO_JOIN = 2
		NOT_ALLOWED = 3
	end

	class KalturaUserRoleStatus
		ACTIVE = 1
		BLOCKED = 2
		DELETED = 3
	end

	class KalturaUserStatus
		BLOCKED = 0
		ACTIVE = 1
		DELETED = 2
	end

	class KalturaWidgetSecurityType
		NONE = 1
		TIMEHASH = 2
	end

	class KalturaAccessControlOrderBy
		CREATED_AT_ASC = "+createdAt"
		CREATED_AT_DESC = "-createdAt"
	end

	class KalturaAccessControlProfileOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaAdminUserOrderBy
		CREATED_AT_ASC = "+createdAt"
		ID_ASC = "+id"
		CREATED_AT_DESC = "-createdAt"
		ID_DESC = "-id"
	end

	class KalturaAkamaiUniversalStreamType
		HD_IPHONE_IPAD_LIVE = "HD iPhone/iPad Live"
		UNIVERSAL_STREAMING_LIVE = "Universal Streaming Live"
	end

	class KalturaAmazonS3StorageProfileFilesPermissionLevel
		ACL_AUTHENTICATED_READ = "authenticated-read"
		ACL_PRIVATE = "private"
		ACL_PUBLIC_READ = "public-read"
		ACL_PUBLIC_READ_WRITE = "public-read-write"
	end

	class KalturaAmazonS3StorageProfileOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaApiActionPermissionItemOrderBy
		CREATED_AT_ASC = "+createdAt"
		ID_ASC = "+id"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		ID_DESC = "-id"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaApiParameterPermissionItemAction
		USAGE = "all"
		INSERT = "insert"
		READ = "read"
		UPDATE = "update"
	end

	class KalturaApiParameterPermissionItemOrderBy
		CREATED_AT_ASC = "+createdAt"
		ID_ASC = "+id"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		ID_DESC = "-id"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaAssetOrderBy
		CREATED_AT_ASC = "+createdAt"
		DELETED_AT_ASC = "+deletedAt"
		SIZE_ASC = "+size"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		DELETED_AT_DESC = "-deletedAt"
		SIZE_DESC = "-size"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaAssetParamsOrderBy
	end

	class KalturaAssetParamsOutputOrderBy
	end

	class KalturaAssetType
		ATTACHMENT = "attachment.Attachment"
		CAPTION = "caption.Caption"
		DOCUMENT = "document.Document"
		IMAGE = "document.Image"
		PDF = "document.PDF"
		SWF = "document.SWF"
		TIMED_THUMB_ASSET = "thumbCuePoint.timedThumb"
		WIDEVINE_FLAVOR = "widevine.WidevineFlavor"
		FLAVOR = "1"
		THUMBNAIL = "2"
		LIVE = "3"
	end

	class KalturaAudioCodec
		NONE = ""
		AAC = "aac"
		AACHE = "aache"
		AC3 = "ac3"
		AMRNB = "amrnb"
		COPY = "copy"
		MP3 = "mp3"
		MPEG2 = "mpeg2"
		PCM = "pcm"
		VORBIS = "vorbis"
		WMA = "wma"
		WMAPRO = "wmapro"
	end

	class KalturaBaseEntryOrderBy
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

	class KalturaBaseSyndicationFeedOrderBy
		CREATED_AT_ASC = "+createdAt"
		NAME_ASC = "+name"
		PLAYLIST_ID_ASC = "+playlistId"
		TYPE_ASC = "+type"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		NAME_DESC = "-name"
		PLAYLIST_ID_DESC = "-playlistId"
		TYPE_DESC = "-type"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaBatchJobOrderBy
		CREATED_AT_ASC = "+createdAt"
		ESTIMATED_EFFORT_ASC = "+estimatedEffort"
		EXECUTION_ATTEMPTS_ASC = "+executionAttempts"
		FINISH_TIME_ASC = "+finishTime"
		LOCK_VERSION_ASC = "+lockVersion"
		PRIORITY_ASC = "+priority"
		QUEUE_TIME_ASC = "+queueTime"
		STATUS_ASC = "+status"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		ESTIMATED_EFFORT_DESC = "-estimatedEffort"
		EXECUTION_ATTEMPTS_DESC = "-executionAttempts"
		FINISH_TIME_DESC = "-finishTime"
		LOCK_VERSION_DESC = "-lockVersion"
		PRIORITY_DESC = "-priority"
		QUEUE_TIME_DESC = "-queueTime"
		STATUS_DESC = "-status"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaBatchJobType
		PARSE_CAPTION_ASSET = "captionSearch.parseCaptionAsset"
		DISTRIBUTION_DELETE = "contentDistribution.DistributionDelete"
		CONVERT = "0"
		DISTRIBUTION_DISABLE = "contentDistribution.DistributionDisable"
		DISTRIBUTION_ENABLE = "contentDistribution.DistributionEnable"
		DISTRIBUTION_FETCH_REPORT = "contentDistribution.DistributionFetchReport"
		DISTRIBUTION_SUBMIT = "contentDistribution.DistributionSubmit"
		DISTRIBUTION_SYNC = "contentDistribution.DistributionSync"
		DISTRIBUTION_UPDATE = "contentDistribution.DistributionUpdate"
		DROP_FOLDER_CONTENT_PROCESSOR = "dropFolder.DropFolderContentProcessor"
		DROP_FOLDER_WATCHER = "dropFolder.DropFolderWatcher"
		EVENT_NOTIFICATION_HANDLER = "eventNotification.EventNotificationHandler"
		SCHEDULED_TASK = "scheduledTask.ScheduledTask"
		INDEX_TAGS = "tagSearch.IndexTagsByPrivacyContext"
		TAG_RESOLVE = "tagSearch.TagResolve"
		VIRUS_SCAN = "virusScan.VirusScan"
		WIDEVINE_REPOSITORY_SYNC = "widevine.WidevineRepositorySync"
		IMPORT = "1"
		DELETE = "2"
		FLATTEN = "3"
		BULKUPLOAD = "4"
		DVDCREATOR = "5"
		DOWNLOAD = "6"
		OOCONVERT = "7"
		CONVERT_PROFILE = "10"
		POSTCONVERT = "11"
		EXTRACT_MEDIA = "14"
		MAIL = "15"
		NOTIFICATION = "16"
		CLEANUP = "17"
		SCHEDULER_HELPER = "18"
		BULKDOWNLOAD = "19"
		DB_CLEANUP = "20"
		PROVISION_PROVIDE = "21"
		CONVERT_COLLECTION = "22"
		STORAGE_EXPORT = "23"
		PROVISION_DELETE = "24"
		STORAGE_DELETE = "25"
		EMAIL_INGESTION = "26"
		METADATA_IMPORT = "27"
		METADATA_TRANSFORM = "28"
		FILESYNC_IMPORT = "29"
		CAPTURE_THUMB = "30"
		DELETE_FILE = "31"
		INDEX = "32"
		MOVE_CATEGORY_ENTRIES = "33"
		COPY = "34"
		CONCAT = "35"
		CONVERT_LIVE_SEGMENT = "36"
		COPY_PARTNER = "37"
		VALIDATE_LIVE_MEDIA_SERVERS = "38"
		SYNC_CATEGORY_PRIVACY_CONTEXT = "39"
		LIVE_REPORT_EXPORT = "40"
	end

	class KalturaBulkUploadAction
		ADD = "1"
		UPDATE = "2"
		DELETE = "3"
		REPLACE = "4"
		TRANSFORM_XSLT = "5"
		ADD_OR_UPDATE = "6"
	end

	class KalturaBulkUploadObjectType
		ENTRY = "1"
		CATEGORY = "2"
		USER = "3"
		CATEGORY_USER = "4"
		CATEGORY_ENTRY = "5"
	end

	class KalturaBulkUploadOrderBy
	end

	class KalturaBulkUploadResultObjectType
		ENTRY = "1"
		CATEGORY = "2"
		USER = "3"
		CATEGORY_USER = "4"
		CATEGORY_ENTRY = "5"
	end

	class KalturaBulkUploadResultStatus
		ERROR = "1"
		OK = "2"
		IN_PROGRESS = "3"
	end

	class KalturaBulkUploadType
		CSV = "bulkUploadCsv.CSV"
		FILTER = "bulkUploadFilter.FILTER"
		XML = "bulkUploadXml.XML"
		DROP_FOLDER_XML = "dropFolderXmlBulkUpload.DROP_FOLDER_XML"
	end

	class KalturaCategoryEntryAdvancedOrderBy
		CREATED_AT_ASC = "+createdAt"
		CREATED_AT_DESC = "-createdAt"
	end

	class KalturaCategoryEntryOrderBy
		CREATED_AT_ASC = "+createdAt"
		CREATED_AT_DESC = "-createdAt"
	end

	class KalturaCategoryIdentifierField
		FULL_NAME = "fullName"
		ID = "id"
		REFERENCE_ID = "referenceId"
	end

	class KalturaCategoryOrderBy
		CREATED_AT_ASC = "+createdAt"
		DEPTH_ASC = "+depth"
		DIRECT_ENTRIES_COUNT_ASC = "+directEntriesCount"
		DIRECT_SUB_CATEGORIES_COUNT_ASC = "+directSubCategoriesCount"
		ENTRIES_COUNT_ASC = "+entriesCount"
		FULL_NAME_ASC = "+fullName"
		MEMBERS_COUNT_ASC = "+membersCount"
		NAME_ASC = "+name"
		PARTNER_SORT_VALUE_ASC = "+partnerSortValue"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		DEPTH_DESC = "-depth"
		DIRECT_ENTRIES_COUNT_DESC = "-directEntriesCount"
		DIRECT_SUB_CATEGORIES_COUNT_DESC = "-directSubCategoriesCount"
		ENTRIES_COUNT_DESC = "-entriesCount"
		FULL_NAME_DESC = "-fullName"
		MEMBERS_COUNT_DESC = "-membersCount"
		NAME_DESC = "-name"
		PARTNER_SORT_VALUE_DESC = "-partnerSortValue"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaCategoryUserOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaConditionType
		ABC_WATERMARK = "abcScreenersWatermarkAccessControl.abcWatermark"
		EVENT_NOTIFICATION_FIELD = "eventNotification.BooleanField"
		EVENT_NOTIFICATION_OBJECT_CHANGED = "eventNotification.ObjectChanged"
		METADATA_FIELD_CHANGED = "metadata.FieldChanged"
		METADATA_FIELD_COMPARE = "metadata.FieldCompare"
		METADATA_FIELD_MATCH = "metadata.FieldMatch"
		AUTHENTICATED = "1"
		COUNTRY = "2"
		IP_ADDRESS = "3"
		SITE = "4"
		USER_AGENT = "5"
		FIELD_MATCH = "6"
		FIELD_COMPARE = "7"
		ASSET_PROPERTIES_COMPARE = "8"
		USER_ROLE = "9"
		GEO_DISTANCE = "10"
	end

	class KalturaContainerFormat
		_3GP = "3gp"
		APPLEHTTP = "applehttp"
		AVI = "avi"
		BMP = "bmp"
		COPY = "copy"
		FLV = "flv"
		HLS = "hls"
		ISMV = "ismv"
		JPG = "jpg"
		M4V = "m4v"
		MKV = "mkv"
		MOV = "mov"
		MP3 = "mp3"
		MP4 = "mp4"
		MPEG = "mpeg"
		MPEGTS = "mpegts"
		OGG = "ogg"
		OGV = "ogv"
		PDF = "pdf"
		PNG = "png"
		SWF = "swf"
		WAV = "wav"
		WEBM = "webm"
		WMA = "wma"
		WMV = "wmv"
		WVM = "wvm"
	end

	class KalturaContextType
		PLAY = "1"
		DOWNLOAD = "2"
		THUMBNAIL = "3"
		METADATA = "4"
		EXPORT = "5"
	end

	class KalturaControlPanelCommandOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaConversionProfileAssetParamsOrderBy
	end

	class KalturaConversionProfileOrderBy
		CREATED_AT_ASC = "+createdAt"
		CREATED_AT_DESC = "-createdAt"
	end

	class KalturaConversionProfileStatus
		DISABLED = "1"
		ENABLED = "2"
		DELETED = "3"
	end

	class KalturaConversionProfileType
		MEDIA = "1"
		LIVE_STREAM = "2"
	end

	class KalturaDataEntryOrderBy
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

	class KalturaDeliveryProfileAkamaiAppleHttpManifestOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaDeliveryProfileAkamaiHdsOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaDeliveryProfileAkamaiHttpOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaDeliveryProfileGenericAppleHttpOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaDeliveryProfileGenericHdsOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaDeliveryProfileGenericHttpOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaDeliveryProfileGenericRtmpOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaDeliveryProfileGenericSilverLightOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaDeliveryProfileLiveAppleHttpOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaDeliveryProfileOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaDeliveryProfileRtmpOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaDeliveryProfileType
		EDGE_CAST_HTTP = "edgeCast.EDGE_CAST_HTTP"
		EDGE_CAST_RTMP = "edgeCast.EDGE_CAST_RTMP"
		KONTIKI_HTTP = "kontiki.KONTIKI_HTTP"
		UPLYNK_HTTP = "uplynk.UPLYNK_HTTP"
		UPLYNK_RTMP = "uplynk.UPLYNK_RTMP"
		VELOCIX_HDS = "velocix.VELOCIX_HDS"
		VELOCIX_HLS = "velocix.VELOCIX_HLS"
		APPLE_HTTP = "1"
		HDS = "3"
		HTTP = "4"
		RTMP = "5"
		RTSP = "6"
		SILVER_LIGHT = "7"
		AKAMAI_HLS_DIRECT = "10"
		AKAMAI_HLS_MANIFEST = "11"
		AKAMAI_HD = "12"
		AKAMAI_HDS = "13"
		AKAMAI_HTTP = "14"
		AKAMAI_RTMP = "15"
		AKAMAI_RTSP = "16"
		AKAMAI_SS = "17"
		GENERIC_HLS = "21"
		GENERIC_HDS = "23"
		GENERIC_HTTP = "24"
		GENERIC_HLS_MANIFEST = "25"
		GENERIC_HDS_MANIFEST = "26"
		GENERIC_SS = "27"
		GENERIC_RTMP = "28"
		LEVEL3_HLS = "31"
		LEVEL3_HTTP = "34"
		LEVEL3_RTMP = "35"
		LIMELIGHT_HTTP = "44"
		LIMELIGHT_RTMP = "45"
		LOCAL_PATH_APPLE_HTTP = "51"
		LOCAL_PATH_HTTP = "54"
		LOCAL_PATH_RTMP = "55"
		VOD_PACKAGER_HLS = "61"
		VOD_PACKAGER_HDS = "63"
		VOD_PACKAGER_MSS = "67"
		VOD_PACKAGER_DASH = "68"
		LIVE_HLS = "1001"
		LIVE_HDS = "1002"
		LIVE_RTMP = "1005"
		LIVE_AKAMAI_HDS = "1013"
	end

	class KalturaDurationType
		LONG = "long"
		MEDIUM = "medium"
		NOT_AVAILABLE = "notavailable"
		SHORT = "short"
	end

	class KalturaDynamicEnum
	end

	class KalturaEntryIdentifierField
		ID = "id"
		REFERENCE_ID = "referenceId"
	end

	class KalturaEntryReplacementStatus
		NONE = "0"
		APPROVED_BUT_NOT_READY = "1"
		READY_BUT_NOT_APPROVED = "2"
		NOT_READY_AND_NOT_APPROVED = "3"
		FAILED = "4"
	end

	class KalturaEntryStatus
		ERROR_IMPORTING = "-2"
		ERROR_CONVERTING = "-1"
		SCAN_FAILURE = "virusScan.ScanFailure"
		IMPORT = "0"
		INFECTED = "virusScan.Infected"
		PRECONVERT = "1"
		READY = "2"
		DELETED = "3"
		PENDING = "4"
		MODERATE = "5"
		BLOCKED = "6"
		NO_CONTENT = "7"
	end

	class KalturaEntryType
		AUTOMATIC = "-1"
		EXTERNAL_MEDIA = "externalMedia.externalMedia"
		MEDIA_CLIP = "1"
		MIX = "2"
		PLAYLIST = "5"
		DATA = "6"
		LIVE_STREAM = "7"
		LIVE_CHANNEL = "8"
		DOCUMENT = "10"
	end

	class KalturaFileAssetObjectType
		UI_CONF = "2"
	end

	class KalturaFileAssetOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaFileAssetStatus
		PENDING = "0"
		UPLOADING = "1"
		READY = "2"
		DELETED = "3"
		ERROR = "4"
	end

	class KalturaFileSyncObjectType
		DISTRIBUTION_PROFILE = "contentDistribution.DistributionProfile"
		ENTRY_DISTRIBUTION = "contentDistribution.EntryDistribution"
		GENERIC_DISTRIBUTION_ACTION = "contentDistribution.GenericDistributionAction"
		EMAIL_NOTIFICATION_TEMPLATE = "emailNotification.EmailNotificationTemplate"
		HTTP_NOTIFICATION_TEMPLATE = "httpNotification.HttpNotificationTemplate"
		ENTRY = "1"
		UICONF = "2"
		BATCHJOB = "3"
		ASSET = "4"
		FLAVOR_ASSET = "4"
		METADATA = "5"
		METADATA_PROFILE = "6"
		SYNDICATION_FEED = "7"
		CONVERSION_PROFILE = "8"
		FILE_ASSET = "9"
	end

	class KalturaFlavorAssetOrderBy
		CREATED_AT_ASC = "+createdAt"
		DELETED_AT_ASC = "+deletedAt"
		SIZE_ASC = "+size"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		DELETED_AT_DESC = "-deletedAt"
		SIZE_DESC = "-size"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaFlavorParamsOrderBy
	end

	class KalturaFlavorParamsOutputOrderBy
	end

	class KalturaGenericSyndicationFeedOrderBy
		CREATED_AT_ASC = "+createdAt"
		NAME_ASC = "+name"
		PLAYLIST_ID_ASC = "+playlistId"
		TYPE_ASC = "+type"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		NAME_DESC = "-name"
		PLAYLIST_ID_DESC = "-playlistId"
		TYPE_DESC = "-type"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaGenericXsltSyndicationFeedOrderBy
		CREATED_AT_ASC = "+createdAt"
		NAME_ASC = "+name"
		PLAYLIST_ID_ASC = "+playlistId"
		TYPE_ASC = "+type"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		NAME_DESC = "-name"
		PLAYLIST_ID_DESC = "-playlistId"
		TYPE_DESC = "-type"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaGeoCoderType
		KALTURA = "1"
	end

	class KalturaGoogleSyndicationFeedAdultValues
		NO = "No"
		YES = "Yes"
	end

	class KalturaGoogleVideoSyndicationFeedOrderBy
		CREATED_AT_ASC = "+createdAt"
		NAME_ASC = "+name"
		PLAYLIST_ID_ASC = "+playlistId"
		TYPE_ASC = "+type"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		NAME_DESC = "-name"
		PLAYLIST_ID_DESC = "-playlistId"
		TYPE_DESC = "-type"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaITunesSyndicationFeedAdultValues
		CLEAN = "clean"
		NO = "no"
		YES = "yes"
	end

	class KalturaITunesSyndicationFeedCategories
		ARTS = "Arts"
		ARTS_DESIGN = "Arts/Design"
		ARTS_FASHION_BEAUTY = "Arts/Fashion &amp; Beauty"
		ARTS_FOOD = "Arts/Food"
		ARTS_LITERATURE = "Arts/Literature"
		ARTS_PERFORMING_ARTS = "Arts/Performing Arts"
		ARTS_VISUAL_ARTS = "Arts/Visual Arts"
		BUSINESS = "Business"
		BUSINESS_BUSINESS_NEWS = "Business/Business News"
		BUSINESS_CAREERS = "Business/Careers"
		BUSINESS_INVESTING = "Business/Investing"
		BUSINESS_MANAGEMENT_MARKETING = "Business/Management &amp; Marketing"
		BUSINESS_SHOPPING = "Business/Shopping"
		COMEDY = "Comedy"
		EDUCATION = "Education"
		EDUCATION_TECHNOLOGY = "Education/Education Technology"
		EDUCATION_HIGHER_EDUCATION = "Education/Higher Education"
		EDUCATION_K_12 = "Education/K-12"
		EDUCATION_LANGUAGE_COURSES = "Education/Language Courses"
		EDUCATION_TRAINING = "Education/Training"
		GAMES_HOBBIES = "Games &amp; Hobbies"
		GAMES_HOBBIES_AUTOMOTIVE = "Games &amp; Hobbies/Automotive"
		GAMES_HOBBIES_AVIATION = "Games &amp; Hobbies/Aviation"
		GAMES_HOBBIES_HOBBIES = "Games &amp; Hobbies/Hobbies"
		GAMES_HOBBIES_OTHER_GAMES = "Games &amp; Hobbies/Other Games"
		GAMES_HOBBIES_VIDEO_GAMES = "Games &amp; Hobbies/Video Games"
		GOVERNMENT_ORGANIZATIONS = "Government &amp; Organizations"
		GOVERNMENT_ORGANIZATIONS_LOCAL = "Government &amp; Organizations/Local"
		GOVERNMENT_ORGANIZATIONS_NATIONAL = "Government &amp; Organizations/National"
		GOVERNMENT_ORGANIZATIONS_NON_PROFIT = "Government &amp; Organizations/Non-Profit"
		GOVERNMENT_ORGANIZATIONS_REGIONAL = "Government &amp; Organizations/Regional"
		HEALTH = "Health"
		HEALTH_ALTERNATIVE_HEALTH = "Health/Alternative Health"
		HEALTH_FITNESS_NUTRITION = "Health/Fitness &amp; Nutrition"
		HEALTH_SELF_HELP = "Health/Self-Help"
		HEALTH_SEXUALITY = "Health/Sexuality"
		KIDS_FAMILY = "Kids &amp; Family"
		MUSIC = "Music"
		NEWS_POLITICS = "News &amp; Politics"
		RELIGION_SPIRITUALITY = "Religion &amp; Spirituality"
		RELIGION_SPIRITUALITY_BUDDHISM = "Religion &amp; Spirituality/Buddhism"
		RELIGION_SPIRITUALITY_CHRISTIANITY = "Religion &amp; Spirituality/Christianity"
		RELIGION_SPIRITUALITY_HINDUISM = "Religion &amp; Spirituality/Hinduism"
		RELIGION_SPIRITUALITY_ISLAM = "Religion &amp; Spirituality/Islam"
		RELIGION_SPIRITUALITY_JUDAISM = "Religion &amp; Spirituality/Judaism"
		RELIGION_SPIRITUALITY_OTHER = "Religion &amp; Spirituality/Other"
		RELIGION_SPIRITUALITY_SPIRITUALITY = "Religion &amp; Spirituality/Spirituality"
		SCIENCE_MEDICINE = "Science &amp; Medicine"
		SCIENCE_MEDICINE_MEDICINE = "Science &amp; Medicine/Medicine"
		SCIENCE_MEDICINE_NATURAL_SCIENCES = "Science &amp; Medicine/Natural Sciences"
		SCIENCE_MEDICINE_SOCIAL_SCIENCES = "Science &amp; Medicine/Social Sciences"
		SOCIETY_CULTURE = "Society &amp; Culture"
		SOCIETY_CULTURE_HISTORY = "Society &amp; Culture/History"
		SOCIETY_CULTURE_PERSONAL_JOURNALS = "Society &amp; Culture/Personal Journals"
		SOCIETY_CULTURE_PHILOSOPHY = "Society &amp; Culture/Philosophy"
		SOCIETY_CULTURE_PLACES_TRAVEL = "Society &amp; Culture/Places &amp; Travel"
		SPORTS_RECREATION = "Sports &amp; Recreation"
		SPORTS_RECREATION_AMATEUR = "Sports &amp; Recreation/Amateur"
		SPORTS_RECREATION_COLLEGE_HIGH_SCHOOL = "Sports &amp; Recreation/College &amp; High School"
		SPORTS_RECREATION_OUTDOOR = "Sports &amp; Recreation/Outdoor"
		SPORTS_RECREATION_PROFESSIONAL = "Sports &amp; Recreation/Professional"
		TV_FILM = "TV &amp; Film"
		TECHNOLOGY = "Technology"
		TECHNOLOGY_GADGETS = "Technology/Gadgets"
		TECHNOLOGY_PODCASTING = "Technology/Podcasting"
		TECHNOLOGY_SOFTWARE_HOW_TO = "Technology/Software How-To"
		TECHNOLOGY_TECH_NEWS = "Technology/Tech News"
	end

	class KalturaITunesSyndicationFeedOrderBy
		CREATED_AT_ASC = "+createdAt"
		NAME_ASC = "+name"
		PLAYLIST_ID_ASC = "+playlistId"
		TYPE_ASC = "+type"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		NAME_DESC = "-name"
		PLAYLIST_ID_DESC = "-playlistId"
		TYPE_DESC = "-type"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaLanguage
		AB = "Abkhazian"
		AA = "Afar"
		AF = "Afrikaans"
		SQ = "Albanian"
		AM = "Amharic"
		AR = "Arabic"
		HY = "Armenian"
		AS_ = "Assamese"
		AY = "Aymara"
		AZ = "Azerbaijani"
		BA = "Bashkir"
		EU = "Basque"
		BN = "Bengali (Bangla)"
		DZ = "Bhutani"
		BH = "Bihari"
		BI = "Bislama"
		BR = "Breton"
		BG = "Bulgarian"
		MY = "Burmese"
		BE = "Byelorussian (Belarusian)"
		KM = "Cambodian"
		CA = "Catalan"
		ZH = "Chinese"
		CO = "Corsican"
		HR = "Croatian"
		CS = "Czech"
		DA = "Danish"
		NL = "Dutch"
		EN = "English"
		EO = "Esperanto"
		ET = "Estonian"
		FO = "Faeroese"
		FA = "Farsi"
		FJ = "Fiji"
		FI = "Finnish"
		FR = "French"
		FY = "Frisian"
		GV = "Gaelic (Manx)"
		GD = "Gaelic (Scottish)"
		GL = "Galician"
		KA = "Georgian"
		DE = "German"
		EL = "Greek"
		KL = "Greenlandic"
		GN = "Guarani"
		GU = "Gujarati"
		HA = "Hausa"
		IW = "Hebrew"
		HE = "Hebrew"
		HI = "Hindi"
		HU = "Hungarian"
		IS = "Icelandic"
		IN = "Indonesian"
		ID = "Indonesian"
		IA = "Interlingua"
		IE = "Interlingue"
		IU = "Inuktitut"
		IK = "Inupiak"
		GA = "Irish"
		IT = "Italian"
		JA = "Japanese"
		JV = "Javanese"
		KN = "Kannada"
		KS = "Kashmiri"
		KK = "Kazakh"
		RW = "Kinyarwanda (Ruanda)"
		KY = "Kirghiz"
		RN = "Kirundi (Rundi)"
		KO = "Korean"
		KU = "Kurdish"
		LO = "Laothian"
		LA = "Latin"
		LV = "Latvian (Lettish)"
		LI = "Limburgish ( Limburger)"
		LN = "Lingala"
		LT = "Lithuanian"
		MK = "Macedonian"
		MG = "Malagasy"
		MS = "Malay"
		ML = "Malayalam"
		MT = "Maltese"
		MI = "Maori"
		MR = "Marathi"
		MO = "Moldavian"
		MN = "Mongolian"
		NA = "Nauru"
		NE = "Nepali"
		NO = "Norwegian"
		OC = "Occitan"
		OR_ = "Oriya"
		OM = "Oromo (Afan, Galla)"
		PS = "Pashto (Pushto)"
		PL = "Polish"
		PT = "Portuguese"
		PA = "Punjabi"
		QU = "Quechua"
		RM = "Rhaeto-Romance"
		RO = "Romanian"
		RU = "Russian"
		SM = "Samoan"
		SG = "Sangro"
		SA = "Sanskrit"
		SR = "Serbian"
		SH = "Serbo-Croatian"
		ST = "Sesotho"
		TN = "Setswana"
		SN = "Shona"
		SD = "Sindhi"
		SI = "Sinhalese"
		SS = "Siswati"
		SK = "Slovak"
		SL = "Slovenian"
		SO = "Somali"
		ES = "Spanish"
		SU = "Sundanese"
		SW = "Swahili (Kiswahili)"
		SV = "Swedish"
		TL = "Tagalog"
		TG = "Tajik"
		TA = "Tamil"
		TT = "Tatar"
		TE = "Telugu"
		TH = "Thai"
		BO = "Tibetan"
		TI = "Tigrinya"
		TO = "Tonga"
		TS = "Tsonga"
		TR = "Turkish"
		TK = "Turkmen"
		TW = "Twi"
		UG = "Uighur"
		UK = "Ukrainian"
		UR = "Urdu"
		UZ = "Uzbek"
		VI = "Vietnamese"
		VO = "Volapuk"
		CY = "Welsh"
		WO = "Wolof"
		XH = "Xhosa"
		YI = "Yiddish"
		JI = "Yiddish"
		YO = "Yoruba"
		ZU = "Zulu"
	end

	class KalturaLanguageCode
		AA = "aa"
		AB = "ab"
		AF = "af"
		AM = "am"
		AR = "ar"
		AS_ = "as"
		AY = "ay"
		AZ = "az"
		BA = "ba"
		BE = "be"
		BG = "bg"
		BH = "bh"
		BI = "bi"
		BN = "bn"
		BO = "bo"
		BR = "br"
		CA = "ca"
		CO = "co"
		CS = "cs"
		CY = "cy"
		DA = "da"
		DE = "de"
		DZ = "dz"
		EL = "el"
		EN = "en"
		EO = "eo"
		ES = "es"
		ET = "et"
		EU = "eu"
		FA = "fa"
		FI = "fi"
		FJ = "fj"
		FO = "fo"
		FR = "fr"
		FY = "fy"
		GA = "ga"
		GD = "gd"
		GL = "gl"
		GN = "gn"
		GU = "gu"
		GV = "gv"
		HA = "ha"
		HE = "he"
		HI = "hi"
		HR = "hr"
		HU = "hu"
		HY = "hy"
		IA = "ia"
		ID = "id"
		IE = "ie"
		IK = "ik"
		IN = "in"
		IS = "is"
		IT = "it"
		IU = "iu"
		IW = "iw"
		JA = "ja"
		JI = "ji"
		JV = "jv"
		KA = "ka"
		KK = "kk"
		KL = "kl"
		KM = "km"
		KN = "kn"
		KO = "ko"
		KS = "ks"
		KU = "ku"
		KY = "ky"
		LA = "la"
		LI = "li"
		LN = "ln"
		LO = "lo"
		LT = "lt"
		LV = "lv"
		MG = "mg"
		MI = "mi"
		MK = "mk"
		ML = "ml"
		MN = "mn"
		MO = "mo"
		MR = "mr"
		MS = "ms"
		MT = "mt"
		MY = "my"
		NA = "na"
		NE = "ne"
		NL = "nl"
		NO = "no"
		OC = "oc"
		OM = "om"
		OR_ = "or"
		PA = "pa"
		PL = "pl"
		PS = "ps"
		PT = "pt"
		QU = "qu"
		RM = "rm"
		RN = "rn"
		RO = "ro"
		RU = "ru"
		RW = "rw"
		SA = "sa"
		SD = "sd"
		SG = "sg"
		SH = "sh"
		SI = "si"
		SK = "sk"
		SL = "sl"
		SM = "sm"
		SN = "sn"
		SO = "so"
		SQ = "sq"
		SR = "sr"
		SS = "ss"
		ST = "st"
		SU = "su"
		SV = "sv"
		SW = "sw"
		TA = "ta"
		TE = "te"
		TG = "tg"
		TH = "th"
		TI = "ti"
		TK = "tk"
		TL = "tl"
		TN = "tn"
		TO = "to"
		TR = "tr"
		TS = "ts"
		TT = "tt"
		TW = "tw"
		UG = "ug"
		UK = "uk"
		UR = "ur"
		UZ = "uz"
		VI = "vi"
		VO = "vo"
		WO = "wo"
		XH = "xh"
		YI = "yi"
		YO = "yo"
		ZH = "zh"
		ZU = "zu"
	end

	class KalturaLiveAssetOrderBy
		CREATED_AT_ASC = "+createdAt"
		DELETED_AT_ASC = "+deletedAt"
		SIZE_ASC = "+size"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		DELETED_AT_DESC = "-deletedAt"
		SIZE_DESC = "-size"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaLiveChannelOrderBy
		CREATED_AT_ASC = "+createdAt"
		DURATION_ASC = "+duration"
		END_DATE_ASC = "+endDate"
		FIRST_BROADCAST_ASC = "+firstBroadcast"
		LAST_BROADCAST_ASC = "+lastBroadcast"
		LAST_PLAYED_AT_ASC = "+lastPlayedAt"
		MEDIA_TYPE_ASC = "+mediaType"
		MODERATION_COUNT_ASC = "+moderationCount"
		NAME_ASC = "+name"
		PARTNER_SORT_VALUE_ASC = "+partnerSortValue"
		PLAYS_ASC = "+plays"
		RANK_ASC = "+rank"
		RECENT_ASC = "+recent"
		START_DATE_ASC = "+startDate"
		TOTAL_RANK_ASC = "+totalRank"
		UPDATED_AT_ASC = "+updatedAt"
		VIEWS_ASC = "+views"
		WEIGHT_ASC = "+weight"
		CREATED_AT_DESC = "-createdAt"
		DURATION_DESC = "-duration"
		END_DATE_DESC = "-endDate"
		FIRST_BROADCAST_DESC = "-firstBroadcast"
		LAST_BROADCAST_DESC = "-lastBroadcast"
		LAST_PLAYED_AT_DESC = "-lastPlayedAt"
		MEDIA_TYPE_DESC = "-mediaType"
		MODERATION_COUNT_DESC = "-moderationCount"
		NAME_DESC = "-name"
		PARTNER_SORT_VALUE_DESC = "-partnerSortValue"
		PLAYS_DESC = "-plays"
		RANK_DESC = "-rank"
		RECENT_DESC = "-recent"
		START_DATE_DESC = "-startDate"
		TOTAL_RANK_DESC = "-totalRank"
		UPDATED_AT_DESC = "-updatedAt"
		VIEWS_DESC = "-views"
		WEIGHT_DESC = "-weight"
	end

	class KalturaLiveChannelSegmentOrderBy
		CREATED_AT_ASC = "+createdAt"
		START_TIME_ASC = "+startTime"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		START_TIME_DESC = "-startTime"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaLiveChannelSegmentStatus
		ACTIVE = "2"
		DELETED = "3"
	end

	class KalturaLiveChannelSegmentTriggerType
		CHANNEL_RELATIVE = "1"
		ABSOLUTE_TIME = "2"
		SEGMENT_START_RELATIVE = "3"
		SEGMENT_END_RELATIVE = "4"
	end

	class KalturaLiveChannelSegmentType
		VIDEO_AND_AUDIO = "1"
	end

	class KalturaLiveEntryOrderBy
		CREATED_AT_ASC = "+createdAt"
		DURATION_ASC = "+duration"
		END_DATE_ASC = "+endDate"
		FIRST_BROADCAST_ASC = "+firstBroadcast"
		LAST_BROADCAST_ASC = "+lastBroadcast"
		LAST_PLAYED_AT_ASC = "+lastPlayedAt"
		MEDIA_TYPE_ASC = "+mediaType"
		MODERATION_COUNT_ASC = "+moderationCount"
		NAME_ASC = "+name"
		PARTNER_SORT_VALUE_ASC = "+partnerSortValue"
		PLAYS_ASC = "+plays"
		RANK_ASC = "+rank"
		RECENT_ASC = "+recent"
		START_DATE_ASC = "+startDate"
		TOTAL_RANK_ASC = "+totalRank"
		UPDATED_AT_ASC = "+updatedAt"
		VIEWS_ASC = "+views"
		WEIGHT_ASC = "+weight"
		CREATED_AT_DESC = "-createdAt"
		DURATION_DESC = "-duration"
		END_DATE_DESC = "-endDate"
		FIRST_BROADCAST_DESC = "-firstBroadcast"
		LAST_BROADCAST_DESC = "-lastBroadcast"
		LAST_PLAYED_AT_DESC = "-lastPlayedAt"
		MEDIA_TYPE_DESC = "-mediaType"
		MODERATION_COUNT_DESC = "-moderationCount"
		NAME_DESC = "-name"
		PARTNER_SORT_VALUE_DESC = "-partnerSortValue"
		PLAYS_DESC = "-plays"
		RANK_DESC = "-rank"
		RECENT_DESC = "-recent"
		START_DATE_DESC = "-startDate"
		TOTAL_RANK_DESC = "-totalRank"
		UPDATED_AT_DESC = "-updatedAt"
		VIEWS_DESC = "-views"
		WEIGHT_DESC = "-weight"
	end

	class KalturaLiveParamsOrderBy
	end

	class KalturaLiveReportType
		ENTRY_GEO_TIME_LINE = "ENTRY_GEO_TIME_LINE"
		ENTRY_SYNDICATION_TOTAL = "ENTRY_SYNDICATION_TOTAL"
		ENTRY_TIME_LINE = "ENTRY_TIME_LINE"
		ENTRY_TOTAL = "ENTRY_TOTAL"
		PARTNER_TOTAL = "PARTNER_TOTAL"
	end

	class KalturaLiveStreamAdminEntryOrderBy
		CREATED_AT_ASC = "+createdAt"
		DURATION_ASC = "+duration"
		END_DATE_ASC = "+endDate"
		FIRST_BROADCAST_ASC = "+firstBroadcast"
		LAST_BROADCAST_ASC = "+lastBroadcast"
		LAST_PLAYED_AT_ASC = "+lastPlayedAt"
		MEDIA_TYPE_ASC = "+mediaType"
		MODERATION_COUNT_ASC = "+moderationCount"
		NAME_ASC = "+name"
		PARTNER_SORT_VALUE_ASC = "+partnerSortValue"
		PLAYS_ASC = "+plays"
		RANK_ASC = "+rank"
		RECENT_ASC = "+recent"
		START_DATE_ASC = "+startDate"
		TOTAL_RANK_ASC = "+totalRank"
		UPDATED_AT_ASC = "+updatedAt"
		VIEWS_ASC = "+views"
		WEIGHT_ASC = "+weight"
		CREATED_AT_DESC = "-createdAt"
		DURATION_DESC = "-duration"
		END_DATE_DESC = "-endDate"
		FIRST_BROADCAST_DESC = "-firstBroadcast"
		LAST_BROADCAST_DESC = "-lastBroadcast"
		LAST_PLAYED_AT_DESC = "-lastPlayedAt"
		MEDIA_TYPE_DESC = "-mediaType"
		MODERATION_COUNT_DESC = "-moderationCount"
		NAME_DESC = "-name"
		PARTNER_SORT_VALUE_DESC = "-partnerSortValue"
		PLAYS_DESC = "-plays"
		RANK_DESC = "-rank"
		RECENT_DESC = "-recent"
		START_DATE_DESC = "-startDate"
		TOTAL_RANK_DESC = "-totalRank"
		UPDATED_AT_DESC = "-updatedAt"
		VIEWS_DESC = "-views"
		WEIGHT_DESC = "-weight"
	end

	class KalturaLiveStreamEntryOrderBy
		CREATED_AT_ASC = "+createdAt"
		DURATION_ASC = "+duration"
		END_DATE_ASC = "+endDate"
		FIRST_BROADCAST_ASC = "+firstBroadcast"
		LAST_BROADCAST_ASC = "+lastBroadcast"
		LAST_PLAYED_AT_ASC = "+lastPlayedAt"
		MEDIA_TYPE_ASC = "+mediaType"
		MODERATION_COUNT_ASC = "+moderationCount"
		NAME_ASC = "+name"
		PARTNER_SORT_VALUE_ASC = "+partnerSortValue"
		PLAYS_ASC = "+plays"
		RANK_ASC = "+rank"
		RECENT_ASC = "+recent"
		START_DATE_ASC = "+startDate"
		TOTAL_RANK_ASC = "+totalRank"
		UPDATED_AT_ASC = "+updatedAt"
		VIEWS_ASC = "+views"
		WEIGHT_ASC = "+weight"
		CREATED_AT_DESC = "-createdAt"
		DURATION_DESC = "-duration"
		END_DATE_DESC = "-endDate"
		FIRST_BROADCAST_DESC = "-firstBroadcast"
		LAST_BROADCAST_DESC = "-lastBroadcast"
		LAST_PLAYED_AT_DESC = "-lastPlayedAt"
		MEDIA_TYPE_DESC = "-mediaType"
		MODERATION_COUNT_DESC = "-moderationCount"
		NAME_DESC = "-name"
		PARTNER_SORT_VALUE_DESC = "-partnerSortValue"
		PLAYS_DESC = "-plays"
		RANK_DESC = "-rank"
		RECENT_DESC = "-recent"
		START_DATE_DESC = "-startDate"
		TOTAL_RANK_DESC = "-totalRank"
		UPDATED_AT_DESC = "-updatedAt"
		VIEWS_DESC = "-views"
		WEIGHT_DESC = "-weight"
	end

	class KalturaMailType
		MAIL_TYPE_KALTURA_NEWSLETTER = "10"
		MAIL_TYPE_ADDED_TO_FAVORITES = "11"
		MAIL_TYPE_ADDED_TO_CLIP_FAVORITES = "12"
		MAIL_TYPE_NEW_COMMENT_IN_PROFILE = "13"
		MAIL_TYPE_CLIP_ADDED_YOUR_KALTURA = "20"
		MAIL_TYPE_VIDEO_ADDED = "21"
		MAIL_TYPE_ROUGHCUT_CREATED = "22"
		MAIL_TYPE_ADDED_KALTURA_TO_YOUR_FAVORITES = "23"
		MAIL_TYPE_NEW_COMMENT_IN_KALTURA = "24"
		MAIL_TYPE_CLIP_ADDED = "30"
		MAIL_TYPE_VIDEO_CREATED = "31"
		MAIL_TYPE_ADDED_KALTURA_TO_HIS_FAVORITES = "32"
		MAIL_TYPE_NEW_COMMENT_IN_KALTURA_YOU_CONTRIBUTED = "33"
		MAIL_TYPE_CLIP_CONTRIBUTED = "40"
		MAIL_TYPE_ROUGHCUT_CREATED_SUBSCRIBED = "41"
		MAIL_TYPE_ADDED_KALTURA_TO_HIS_FAVORITES_SUBSCRIBED = "42"
		MAIL_TYPE_NEW_COMMENT_IN_KALTURA_YOU_SUBSCRIBED = "43"
		MAIL_TYPE_REGISTER_CONFIRM = "50"
		MAIL_TYPE_PASSWORD_RESET = "51"
		MAIL_TYPE_LOGIN_MAIL_RESET = "52"
		MAIL_TYPE_REGISTER_CONFIRM_VIDEO_SERVICE = "54"
		MAIL_TYPE_VIDEO_READY = "60"
		MAIL_TYPE_VIDEO_IS_READY = "62"
		MAIL_TYPE_BULK_DOWNLOAD_READY = "63"
		MAIL_TYPE_BULKUPLOAD_FINISHED = "64"
		MAIL_TYPE_BULKUPLOAD_FAILED = "65"
		MAIL_TYPE_BULKUPLOAD_ABORTED = "66"
		MAIL_TYPE_NOTIFY_ERR = "70"
		MAIL_TYPE_ACCOUNT_UPGRADE_CONFIRM = "80"
		MAIL_TYPE_VIDEO_SERVICE_NOTICE = "81"
		MAIL_TYPE_VIDEO_SERVICE_NOTICE_LIMIT_REACHED = "82"
		MAIL_TYPE_VIDEO_SERVICE_NOTICE_ACCOUNT_LOCKED = "83"
		MAIL_TYPE_VIDEO_SERVICE_NOTICE_ACCOUNT_DELETED = "84"
		MAIL_TYPE_VIDEO_SERVICE_NOTICE_UPGRADE_OFFER = "85"
		MAIL_TYPE_ACCOUNT_REACTIVE_CONFIRM = "86"
		MAIL_TYPE_SYSTEM_USER_RESET_PASSWORD = "110"
		MAIL_TYPE_SYSTEM_USER_RESET_PASSWORD_SUCCESS = "111"
		MAIL_TYPE_SYSTEM_USER_NEW_PASSWORD = "112"
		MAIL_TYPE_SYSTEM_USER_CREDENTIALS_SAVED = "113"
		MAIL_TYPE_LIVE_REPORT_EXPORT_SUCCESS = "130"
		MAIL_TYPE_LIVE_REPORT_EXPORT_FAILURE = "131"
		MAIL_TYPE_LIVE_REPORT_EXPORT_ABORT = "132"
	end

	class KalturaMediaEntryOrderBy
		CREATED_AT_ASC = "+createdAt"
		DURATION_ASC = "+duration"
		END_DATE_ASC = "+endDate"
		LAST_PLAYED_AT_ASC = "+lastPlayedAt"
		MEDIA_TYPE_ASC = "+mediaType"
		MODERATION_COUNT_ASC = "+moderationCount"
		NAME_ASC = "+name"
		PARTNER_SORT_VALUE_ASC = "+partnerSortValue"
		PLAYS_ASC = "+plays"
		RANK_ASC = "+rank"
		RECENT_ASC = "+recent"
		START_DATE_ASC = "+startDate"
		TOTAL_RANK_ASC = "+totalRank"
		UPDATED_AT_ASC = "+updatedAt"
		VIEWS_ASC = "+views"
		WEIGHT_ASC = "+weight"
		CREATED_AT_DESC = "-createdAt"
		DURATION_DESC = "-duration"
		END_DATE_DESC = "-endDate"
		LAST_PLAYED_AT_DESC = "-lastPlayedAt"
		MEDIA_TYPE_DESC = "-mediaType"
		MODERATION_COUNT_DESC = "-moderationCount"
		NAME_DESC = "-name"
		PARTNER_SORT_VALUE_DESC = "-partnerSortValue"
		PLAYS_DESC = "-plays"
		RANK_DESC = "-rank"
		RECENT_DESC = "-recent"
		START_DATE_DESC = "-startDate"
		TOTAL_RANK_DESC = "-totalRank"
		UPDATED_AT_DESC = "-updatedAt"
		VIEWS_DESC = "-views"
		WEIGHT_DESC = "-weight"
	end

	class KalturaMediaFlavorParamsOrderBy
	end

	class KalturaMediaFlavorParamsOutputOrderBy
	end

	class KalturaMediaInfoOrderBy
	end

	class KalturaMediaParserType
		MEDIAINFO = "0"
		REMOTE_MEDIAINFO = "remoteMediaInfo.RemoteMediaInfo"
		FFMPEG = "1"
	end

	class KalturaMediaServerOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaMixEntryOrderBy
		CREATED_AT_ASC = "+createdAt"
		DURATION_ASC = "+duration"
		END_DATE_ASC = "+endDate"
		LAST_PLAYED_AT_ASC = "+lastPlayedAt"
		MODERATION_COUNT_ASC = "+moderationCount"
		NAME_ASC = "+name"
		PARTNER_SORT_VALUE_ASC = "+partnerSortValue"
		PLAYS_ASC = "+plays"
		RANK_ASC = "+rank"
		RECENT_ASC = "+recent"
		START_DATE_ASC = "+startDate"
		TOTAL_RANK_ASC = "+totalRank"
		UPDATED_AT_ASC = "+updatedAt"
		VIEWS_ASC = "+views"
		WEIGHT_ASC = "+weight"
		CREATED_AT_DESC = "-createdAt"
		DURATION_DESC = "-duration"
		END_DATE_DESC = "-endDate"
		LAST_PLAYED_AT_DESC = "-lastPlayedAt"
		MODERATION_COUNT_DESC = "-moderationCount"
		NAME_DESC = "-name"
		PARTNER_SORT_VALUE_DESC = "-partnerSortValue"
		PLAYS_DESC = "-plays"
		RANK_DESC = "-rank"
		RECENT_DESC = "-recent"
		START_DATE_DESC = "-startDate"
		TOTAL_RANK_DESC = "-totalRank"
		UPDATED_AT_DESC = "-updatedAt"
		VIEWS_DESC = "-views"
		WEIGHT_DESC = "-weight"
	end

	class KalturaModerationFlagStatus
		PENDING = "1"
		MODERATED = "2"
	end

	class KalturaModerationObjectType
		ENTRY = "2"
		USER = "3"
	end

	class KalturaPartnerOrderBy
		ADMIN_EMAIL_ASC = "+adminEmail"
		ADMIN_NAME_ASC = "+adminName"
		CREATED_AT_ASC = "+createdAt"
		ID_ASC = "+id"
		NAME_ASC = "+name"
		STATUS_ASC = "+status"
		WEBSITE_ASC = "+website"
		ADMIN_EMAIL_DESC = "-adminEmail"
		ADMIN_NAME_DESC = "-adminName"
		CREATED_AT_DESC = "-createdAt"
		ID_DESC = "-id"
		NAME_DESC = "-name"
		STATUS_DESC = "-status"
		WEBSITE_DESC = "-website"
	end

	class KalturaPermissionItemOrderBy
		CREATED_AT_ASC = "+createdAt"
		ID_ASC = "+id"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		ID_DESC = "-id"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaPermissionItemType
		API_ACTION_ITEM = "kApiActionPermissionItem"
		API_PARAMETER_ITEM = "kApiParameterPermissionItem"
	end

	class KalturaPermissionOrderBy
		CREATED_AT_ASC = "+createdAt"
		ID_ASC = "+id"
		NAME_ASC = "+name"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		ID_DESC = "-id"
		NAME_DESC = "-name"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaPlayableEntryOrderBy
		CREATED_AT_ASC = "+createdAt"
		DURATION_ASC = "+duration"
		END_DATE_ASC = "+endDate"
		LAST_PLAYED_AT_ASC = "+lastPlayedAt"
		MODERATION_COUNT_ASC = "+moderationCount"
		NAME_ASC = "+name"
		PARTNER_SORT_VALUE_ASC = "+partnerSortValue"
		PLAYS_ASC = "+plays"
		RANK_ASC = "+rank"
		RECENT_ASC = "+recent"
		START_DATE_ASC = "+startDate"
		TOTAL_RANK_ASC = "+totalRank"
		UPDATED_AT_ASC = "+updatedAt"
		VIEWS_ASC = "+views"
		WEIGHT_ASC = "+weight"
		CREATED_AT_DESC = "-createdAt"
		DURATION_DESC = "-duration"
		END_DATE_DESC = "-endDate"
		LAST_PLAYED_AT_DESC = "-lastPlayedAt"
		MODERATION_COUNT_DESC = "-moderationCount"
		NAME_DESC = "-name"
		PARTNER_SORT_VALUE_DESC = "-partnerSortValue"
		PLAYS_DESC = "-plays"
		RANK_DESC = "-rank"
		RECENT_DESC = "-recent"
		START_DATE_DESC = "-startDate"
		TOTAL_RANK_DESC = "-totalRank"
		UPDATED_AT_DESC = "-updatedAt"
		VIEWS_DESC = "-views"
		WEIGHT_DESC = "-weight"
	end

	class KalturaPlaybackProtocol
		APPLE_HTTP = "applehttp"
		AUTO = "auto"
		AKAMAI_HD = "hdnetwork"
		AKAMAI_HDS = "hdnetworkmanifest"
		HDS = "hds"
		HLS = "hls"
		HTTP = "http"
		MPEG_DASH = "mpegdash"
		MULTICAST_SL = "multicast_silverlight"
		RTMP = "rtmp"
		RTSP = "rtsp"
		SILVER_LIGHT = "sl"
	end

	class KalturaPlaylistOrderBy
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

	class KalturaReportInterval
		DAYS = "days"
		MONTHS = "months"
	end

	class KalturaReportOrderBy
		CREATED_AT_ASC = "+createdAt"
		CREATED_AT_DESC = "-createdAt"
	end

	class KalturaRuleActionType
		DRM_POLICY = "playReady.DRM_POLICY"
		BLOCK = "1"
		PREVIEW = "2"
		LIMIT_FLAVORS = "3"
		ADD_TO_STORAGE = "4"
	end

	class KalturaSchemaType
		BULK_UPLOAD_RESULT_XML = "bulkUploadXml.bulkUploadResultXML"
		BULK_UPLOAD_XML = "bulkUploadXml.bulkUploadXML"
		INGEST_API = "cuePoint.ingestAPI"
		SERVE_API = "cuePoint.serveAPI"
		DROP_FOLDER_XML = "dropFolderXmlBulkUpload.dropFolderXml"
		SYNDICATION = "syndication"
	end

	class KalturaSearchConditionComparison
		EQUAL = "1"
		GREATER_THAN = "2"
		GREATER_THAN_OR_EQUAL = "3"
		LESS_THAN = "4"
		LESS_THAN_OR_EQUAL = "5"
	end

	class KalturaSourceType
		LIMELIGHT_LIVE = "limeLight.LIVE_STREAM"
		VELOCIX_LIVE = "velocix.VELOCIX_LIVE"
		FILE = "1"
		WEBCAM = "2"
		URL = "5"
		SEARCH_PROVIDER = "6"
		AKAMAI_LIVE = "29"
		MANUAL_LIVE_STREAM = "30"
		AKAMAI_UNIVERSAL_LIVE = "31"
		LIVE_STREAM = "32"
		LIVE_CHANNEL = "33"
		RECORDED_LIVE = "34"
		CLIP = "35"
		LIVE_STREAM_ONTEXTDATA_CAPTIONS = "42"
	end

	class KalturaStorageProfileOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaStorageProfileProtocol
		KONTIKI = "kontiki.KONTIKI"
		KALTURA_DC = "0"
		FTP = "1"
		SCP = "2"
		SFTP = "3"
		S3 = "6"
		LOCAL = "7"
	end

	class KalturaSyndicationFeedEntriesOrderBy
		CREATED_AT_DESC = "-createdAt"
		RECENT = "recent"
	end

	class KalturaTaggedObjectType
		ENTRY = "1"
		CATEGORY = "2"
	end

	class KalturaThumbAssetOrderBy
		CREATED_AT_ASC = "+createdAt"
		DELETED_AT_ASC = "+deletedAt"
		SIZE_ASC = "+size"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		DELETED_AT_DESC = "-deletedAt"
		SIZE_DESC = "-size"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaThumbParamsOrderBy
	end

	class KalturaThumbParamsOutputOrderBy
	end

	class KalturaTubeMogulSyndicationFeedCategories
		ANIMALS_AND_PETS = "Animals &amp; Pets"
		ARTS_AND_ANIMATION = "Arts &amp; Animation"
		AUTOS = "Autos"
		COMEDY = "Comedy"
		COMMERCIALS_PROMOTIONAL = "Commercials/Promotional"
		ENTERTAINMENT = "Entertainment"
		FAMILY_AND_KIDS = "Family &amp; Kids"
		HOW_TO_INSTRUCTIONAL_DIY = "How To/Instructional/DIY"
		MUSIC = "Music"
		NEWS_AND_BLOGS = "News &amp; Blogs"
		SCIENCE_AND_TECHNOLOGY = "Science &amp; Technology"
		SPORTS = "Sports"
		TRAVEL_AND_PLACES = "Travel &amp; Places"
		VIDEO_GAMES = "Video Games"
		VLOGS_PEOPLE = "Vlogs &amp; People"
	end

	class KalturaTubeMogulSyndicationFeedOrderBy
		CREATED_AT_ASC = "+createdAt"
		NAME_ASC = "+name"
		PLAYLIST_ID_ASC = "+playlistId"
		TYPE_ASC = "+type"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		NAME_DESC = "-name"
		PLAYLIST_ID_DESC = "-playlistId"
		TYPE_DESC = "-type"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaUiConfOrderBy
		CREATED_AT_ASC = "+createdAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaUploadTokenOrderBy
		CREATED_AT_ASC = "+createdAt"
		CREATED_AT_DESC = "-createdAt"
	end

	class KalturaUserLoginDataOrderBy
	end

	class KalturaUserOrderBy
		CREATED_AT_ASC = "+createdAt"
		ID_ASC = "+id"
		CREATED_AT_DESC = "-createdAt"
		ID_DESC = "-id"
	end

	class KalturaUserRoleOrderBy
		CREATED_AT_ASC = "+createdAt"
		ID_ASC = "+id"
		NAME_ASC = "+name"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		ID_DESC = "-id"
		NAME_DESC = "-name"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaVideoCodec
		NONE = ""
		APCH = "apch"
		APCN = "apcn"
		APCO = "apco"
		APCS = "apcs"
		COPY = "copy"
		DNXHD = "dnxhd"
		DV = "dv"
		FLV = "flv"
		H263 = "h263"
		H264 = "h264"
		H264B = "h264b"
		H264H = "h264h"
		H264M = "h264m"
		H265 = "h265"
		MPEG2 = "mpeg2"
		MPEG4 = "mpeg4"
		THEORA = "theora"
		VP6 = "vp6"
		VP8 = "vp8"
		VP9 = "vp9"
		WMV2 = "wmv2"
		WMV3 = "wmv3"
		WVC1A = "wvc1a"
	end

	class KalturaWidgetOrderBy
		CREATED_AT_ASC = "+createdAt"
		CREATED_AT_DESC = "-createdAt"
	end

	class KalturaYahooSyndicationFeedAdultValues
		ADULT = "adult"
		NON_ADULT = "nonadult"
	end

	class KalturaYahooSyndicationFeedCategories
		ACTION = "Action"
		ANIMALS = "Animals"
		ART_AND_ANIMATION = "Art &amp; Animation"
		COMMERCIALS = "Commercials"
		ENTERTAINMENT_AND_TV = "Entertainment &amp; TV"
		FAMILY = "Family"
		FOOD = "Food"
		FUNNY_VIDEOS = "Funny Videos"
		GAMES = "Games"
		HEALTH_AND_BEAUTY = "Health &amp; Beauty"
		HOW_TO = "How-To"
		MOVIES_AND_SHORTS = "Movies &amp; Shorts"
		MUSIC = "Music"
		NEWS_AND_POLITICS = "News &amp; Politics"
		PEOPLE_AND_VLOGS = "People &amp; Vlogs"
		PRODUCTS_AND_TECH = "Products &amp; Tech."
		SCIENCE_AND_ENVIRONMENT = "Science &amp; Environment"
		SPORTS = "Sports"
		TRANSPORTATION = "Transportation"
		TRAVEL = "Travel"
	end

	class KalturaYahooSyndicationFeedOrderBy
		CREATED_AT_ASC = "+createdAt"
		NAME_ASC = "+name"
		PLAYLIST_ID_ASC = "+playlistId"
		TYPE_ASC = "+type"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		NAME_DESC = "-name"
		PLAYLIST_ID_DESC = "-playlistId"
		TYPE_DESC = "-type"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaBaseRestriction < KalturaObjectBase

	end

	class KalturaAccessControl < KalturaObjectBase
		# The id of the Access Control Profile
		# 	 
		attr_accessor :id
		attr_accessor :partner_id
		# The name of the Access Control Profile
		# 	 
		attr_accessor :name
		# System name of the Access Control Profile
		# 	 
		attr_accessor :system_name
		# The description of the Access Control Profile
		# 	 
		attr_accessor :description
		# Creation date as Unix timestamp (In seconds) 
		# 	 
		attr_accessor :created_at
		# True if this Conversion Profile is the default
		# 	 
		attr_accessor :is_default
		# Array of Access Control Restrictions
		# 	 
		attr_accessor :restrictions
		# Indicates that the access control profile is new and should be handled using KalturaAccessControlProfile object and accessControlProfile service
		# 	 
		attr_accessor :contains_unsuported_restrictions

		def id=(val)
			@id = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def is_default=(val)
			@is_default = val.to_i
		end
		def contains_unsuported_restrictions=(val)
			@contains_unsuported_restrictions = to_b(val)
		end
	end

	class KalturaContextTypeHolder < KalturaObjectBase
		# The type of the condition context
		# 	 
		attr_accessor :type

	end

	class KalturaAccessControlContextTypeHolder < KalturaContextTypeHolder

	end

	class KalturaAccessControlListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaRuleAction < KalturaObjectBase
		# The type of the action
		# 	 
		attr_accessor :type

	end

	class KalturaCondition < KalturaObjectBase
		# The type of the access control condition
		# 	 
		attr_accessor :type
		attr_accessor :description
		attr_accessor :not

		def not=(val)
			@not = to_b(val)
		end
	end

	class KalturaRule < KalturaObjectBase
		# Message to be thrown to the player in case the rule is fulfilled
		# 	 
		attr_accessor :message
		# Actions to be performed by the player in case the rule is fulfilled
		# 	 
		attr_accessor :actions
		# Conditions to validate the rule
		# 	 
		attr_accessor :conditions
		# Indicates what contexts should be tested by this rule 
		# 	 
		attr_accessor :contexts
		# Indicates that this rule is enough and no need to continue checking the rest of the rules 
		# 	 
		attr_accessor :stop_processing

		def stop_processing=(val)
			@stop_processing = to_b(val)
		end
	end

	class KalturaAccessControlProfile < KalturaObjectBase
		# The id of the Access Control Profile
		# 	 
		attr_accessor :id
		attr_accessor :partner_id
		# The name of the Access Control Profile
		# 	 
		attr_accessor :name
		# System name of the Access Control Profile
		# 	 
		attr_accessor :system_name
		# The description of the Access Control Profile
		# 	 
		attr_accessor :description
		# Creation time as Unix timestamp (In seconds) 
		# 	 
		attr_accessor :created_at
		# Update time as Unix timestamp (In seconds) 
		# 	 
		attr_accessor :updated_at
		# True if this access control profile is the partner default
		# 	 
		attr_accessor :is_default
		# Array of access control rules
		# 	 
		attr_accessor :rules

		def id=(val)
			@id = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
		def is_default=(val)
			@is_default = val.to_i
		end
	end

	class KalturaAccessControlProfileListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	# A key value pair representation to return an array of key-value pairs (associative array)
	#  
	class KalturaKeyValue < KalturaObjectBase
		attr_accessor :key
		attr_accessor :value

	end

	class KalturaAccessControlScope < KalturaObjectBase
		# URL to be used to test domain conditions.
		# 	 
		attr_accessor :referrer
		# IP to be used to test geographic location conditions.
		# 	 
		attr_accessor :ip
		# Kaltura session to be used to test session and user conditions.
		# 	 
		attr_accessor :ks
		# Browser or client application to be used to test agent conditions.
		# 	 
		attr_accessor :user_agent
		# Unix timestamp (In seconds) to be used to test entry scheduling, keep null to use now.
		# 	 
		attr_accessor :time
		# Indicates what contexts should be tested. No contexts means any context.
		# 	 
		attr_accessor :contexts
		# Array of hashes to pass to the access control profile scope
		# 	 
		attr_accessor :hashes

		def time=(val)
			@time = val.to_i
		end
	end

	class KalturaAsset < KalturaObjectBase
		# The ID of the Flavor Asset
		# 	 
		attr_accessor :id
		# The entry ID of the Flavor Asset
		# 	 
		attr_accessor :entry_id
		attr_accessor :partner_id
		# The version of the Flavor Asset
		# 	 
		attr_accessor :version
		# The size (in KBytes) of the Flavor Asset
		# 	 
		attr_accessor :size
		# Tags used to identify the Flavor Asset in various scenarios
		# 	 
		attr_accessor :tags
		# The file extension
		# 	 
		attr_accessor :file_ext
		attr_accessor :created_at
		attr_accessor :updated_at
		attr_accessor :deleted_at
		# System description, error message, warnings and failure cause.
		# 	 
		attr_accessor :description
		# Partner private data
		# 	 
		attr_accessor :partner_data
		# Partner friendly description
		# 	 
		attr_accessor :partner_description
		# Comma separated list of source flavor params ids
		# 	 
		attr_accessor :actual_source_asset_params_ids

		def partner_id=(val)
			@partner_id = val.to_i
		end
		def version=(val)
			@version = val.to_i
		end
		def size=(val)
			@size = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
		def deleted_at=(val)
			@deleted_at = val.to_i
		end
	end

	# A string representation to return an array of strings
	#  
	class KalturaString < KalturaObjectBase
		attr_accessor :value

	end

	class KalturaAssetParams < KalturaObjectBase
		# The id of the Flavor Params
		# 	 
		attr_accessor :id
		attr_accessor :partner_id
		# The name of the Flavor Params
		# 	 
		attr_accessor :name
		# System name of the Flavor Params
		# 	 
		attr_accessor :system_name
		# The description of the Flavor Params
		# 	 
		attr_accessor :description
		# Creation date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :created_at
		# True if those Flavor Params are part of system defaults
		# 	 
		attr_accessor :is_system_default
		# The Flavor Params tags are used to identify the flavor for different usage (e.g. web, hd, mobile)
		# 	 
		attr_accessor :tags
		# Array of partner permisison names that required for using this asset params
		# 	 
		attr_accessor :required_permissions
		# Id of remote storage profile that used to get the source, zero indicates Kaltura data center
		# 	 
		attr_accessor :source_remote_storage_profile_id
		# Comma seperated ids of remote storage profiles that the flavor distributed to, the distribution done by the conversion engine
		# 	 
		attr_accessor :remote_storage_profile_ids
		# Media parser type to be used for post-conversion validation
		# 	 
		attr_accessor :media_parser_type
		# Comma seperated ids of source flavor params this flavor is created from
		# 	 
		attr_accessor :source_asset_params_ids

		def id=(val)
			@id = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def is_system_default=(val)
			@is_system_default = val.to_i
		end
		def source_remote_storage_profile_id=(val)
			@source_remote_storage_profile_id = val.to_i
		end
		def remote_storage_profile_ids=(val)
			@remote_storage_profile_ids = val.to_i
		end
	end

	# Used to ingest entry object, as single resource or list of resources accompanied by asset params ids.
	#  
	class KalturaResource < KalturaObjectBase

	end

	# Is a unified way to add content to Kaltura whether it's an uploaded file, webcam recording, imported URL or existing file sync.
	#  
	class KalturaContentResource < KalturaResource

	end

	class KalturaAssetParamsResourceContainer < KalturaResource
		# The content resource to associate with asset params
		# 	 
		attr_accessor :resource
		# The asset params to associate with the reaource
		# 	 
		attr_accessor :asset_params_id

		def asset_params_id=(val)
			@asset_params_id = val.to_i
		end
	end

	# Base class to all operation attributes types
	#  
	class KalturaOperationAttributes < KalturaObjectBase

	end

	class KalturaBaseEntry < KalturaObjectBase
		# Auto generated 10 characters alphanumeric string
		# 	 
		attr_accessor :id
		# Entry name (Min 1 chars)
		# 	 
		attr_accessor :name
		# Entry description
		# 	 
		attr_accessor :description
		attr_accessor :partner_id
		# The ID of the user who is the owner of this entry 
		# 	 
		attr_accessor :user_id
		# The ID of the user who created this entry 
		# 	 
		attr_accessor :creator_id
		# Entry tags
		# 	 
		attr_accessor :tags
		# Entry admin tags can be updated only by administrators
		# 	 
		attr_accessor :admin_tags
		# Categories with no entitlement that this entry belongs to.
		# 	 
		attr_accessor :categories
		# Categories Ids of categories with no entitlement that this entry belongs to
		# 	 
		attr_accessor :categories_ids
		attr_accessor :status
		# Entry moderation status
		# 	 
		attr_accessor :moderation_status
		# Number of moderation requests waiting for this entry
		# 	 
		attr_accessor :moderation_count
		# The type of the entry, this is auto filled by the derived entry object
		# 	 
		attr_accessor :type
		# Entry creation date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :created_at
		# Entry update date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :updated_at
		# The calculated average rank. rank = totalRank / votes
		# 	 
		attr_accessor :rank
		# The sum of all rank values submitted to the baseEntry.anonymousRank action
		# 	 
		attr_accessor :total_rank
		# A count of all requests made to the baseEntry.anonymousRank action
		# 	 
		attr_accessor :votes
		attr_accessor :group_id
		# Can be used to store various partner related data as a string 
		# 	 
		attr_accessor :partner_data
		# Download URL for the entry
		# 	 
		attr_accessor :download_url
		# Indexed search text for full text search
		# 	 
		attr_accessor :search_text
		# License type used for this entry
		# 	 
		attr_accessor :license_type
		# Version of the entry data
		# 	 
		attr_accessor :version
		# Thumbnail URL
		# 	 
		attr_accessor :thumbnail_url
		# The Access Control ID assigned to this entry (null when not set, send -1 to remove)  
		# 	 
		attr_accessor :access_control_id
		# Entry scheduling start date (null when not set, send -1 to remove)
		# 	 
		attr_accessor :start_date
		# Entry scheduling end date (null when not set, send -1 to remove)
		# 	 
		attr_accessor :end_date
		# Entry external reference id
		# 	 
		attr_accessor :reference_id
		# ID of temporary entry that will replace this entry when it's approved and ready for replacement
		# 	 
		attr_accessor :replacing_entry_id
		# ID of the entry that will be replaced when the replacement approved and this entry is ready
		# 	 
		attr_accessor :replaced_entry_id
		# Status of the replacement readiness and approval
		# 	 
		attr_accessor :replacement_status
		# Can be used to store various partner related data as a numeric value
		# 	 
		attr_accessor :partner_sort_value
		# Override the default ingestion profile  
		# 	 
		attr_accessor :conversion_profile_id
		# IF not empty, points to an entry ID the should replace this current entry's id. 
		# 	 
		attr_accessor :redirect_entry_id
		# ID of source root entry, used for clipped, skipped and cropped entries that created from another entry
		# 	 
		attr_accessor :root_entry_id
		# ID of source root entry, used for defining entires association
		#  	 
		attr_accessor :parent_entry_id
		# clipping, skipping and cropping attributes that used to create this entry  
		# 	 
		attr_accessor :operation_attributes
		# list of user ids that are entitled to edit the entry (no server enforcement) The difference between entitledUsersEdit and entitledUsersPublish is applicative only
		# 	 
		attr_accessor :entitled_users_edit
		# list of user ids that are entitled to publish the entry (no server enforcement) The difference between entitledUsersEdit and entitledUsersPublish is applicative only
		# 	 
		attr_accessor :entitled_users_publish

		def partner_id=(val)
			@partner_id = val.to_i
		end
		def moderation_status=(val)
			@moderation_status = val.to_i
		end
		def moderation_count=(val)
			@moderation_count = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
		def rank=(val)
			@rank = val.to_f
		end
		def total_rank=(val)
			@total_rank = val.to_i
		end
		def votes=(val)
			@votes = val.to_i
		end
		def group_id=(val)
			@group_id = val.to_i
		end
		def license_type=(val)
			@license_type = val.to_i
		end
		def version=(val)
			@version = val.to_i
		end
		def access_control_id=(val)
			@access_control_id = val.to_i
		end
		def start_date=(val)
			@start_date = val.to_i
		end
		def end_date=(val)
			@end_date = val.to_i
		end
		def partner_sort_value=(val)
			@partner_sort_value = val.to_i
		end
		def conversion_profile_id=(val)
			@conversion_profile_id = val.to_i
		end
	end

	class KalturaBaseEntryListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaBaseSyndicationFeed < KalturaObjectBase
		attr_accessor :id
		attr_accessor :feed_url
		attr_accessor :partner_id
		# link a playlist that will set what content the feed will include
		# 	 if empty, all content will be included in feed
		# 	 
		attr_accessor :playlist_id
		# feed name
		# 	 
		attr_accessor :name
		# feed status
		# 	 
		attr_accessor :status
		# feed type
		# 	 
		attr_accessor :type
		# Base URL for each video, on the partners site
		# 	 This is required by all syndication types.
		# 	 
		attr_accessor :landing_page
		# Creation date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :created_at
		# allow_embed tells google OR yahoo weather to allow embedding the video on google OR yahoo video results
		# 	 or just to provide a link to the landing page.
		# 	 it is applied on the video-player_loc property in the XML (google)
		# 	 and addes media-player tag (yahoo)
		# 	 
		attr_accessor :allow_embed
		# Select a uiconf ID as player skin to include in the kwidget url
		# 	 
		attr_accessor :player_uiconf_id
		attr_accessor :flavor_param_id
		attr_accessor :transcode_existing_content
		attr_accessor :add_to_default_conversion_profile
		attr_accessor :categories
		attr_accessor :storage_id
		attr_accessor :entries_order_by
		# Should enforce entitlement on feed entries
		# 	 
		attr_accessor :enforce_entitlement
		# Set privacy context for search entries that assiged to private and public categories within a category privacy context.
		# 	 
		attr_accessor :privacy_context
		# Update date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :updated_at

		def partner_id=(val)
			@partner_id = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
		def type=(val)
			@type = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def allow_embed=(val)
			@allow_embed = to_b(val)
		end
		def player_uiconf_id=(val)
			@player_uiconf_id = val.to_i
		end
		def flavor_param_id=(val)
			@flavor_param_id = val.to_i
		end
		def transcode_existing_content=(val)
			@transcode_existing_content = to_b(val)
		end
		def add_to_default_conversion_profile=(val)
			@add_to_default_conversion_profile = to_b(val)
		end
		def storage_id=(val)
			@storage_id = val.to_i
		end
		def enforce_entitlement=(val)
			@enforce_entitlement = to_b(val)
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
	end

	class KalturaBaseSyndicationFeedListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaBulkUploadPluginData < KalturaObjectBase
		attr_accessor :field
		attr_accessor :value

	end

	class KalturaBulkUploadResult < KalturaObjectBase
		# The id of the result
		#      
		attr_accessor :id
		# The id of the parent job
		# 	 
		attr_accessor :bulk_upload_job_id
		# The index of the line in the CSV
		# 	 
		attr_accessor :line_index
		attr_accessor :partner_id
		attr_accessor :status
		attr_accessor :action
		attr_accessor :object_id
		attr_accessor :object_status
		attr_accessor :bulk_upload_result_object_type
		# The data as recieved in the csv
		# 	 
		attr_accessor :row_data
		attr_accessor :partner_data
		attr_accessor :object_error_description
		attr_accessor :plugins_data
		attr_accessor :error_description
		attr_accessor :error_code
		attr_accessor :error_type

		def id=(val)
			@id = val.to_i
		end
		def bulk_upload_job_id=(val)
			@bulk_upload_job_id = val.to_i
		end
		def line_index=(val)
			@line_index = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def object_status=(val)
			@object_status = val.to_i
		end
		def error_type=(val)
			@error_type = val.to_i
		end
	end

	class KalturaBulkUpload < KalturaObjectBase
		attr_accessor :id
		attr_accessor :uploaded_by
		attr_accessor :uploaded_by_user_id
		attr_accessor :uploaded_on
		attr_accessor :num_of_entries
		attr_accessor :status
		attr_accessor :log_file_url
		attr_accessor :csv_file_url
		attr_accessor :bulk_file_url
		attr_accessor :bulk_upload_type
		attr_accessor :results
		attr_accessor :error
		attr_accessor :error_type
		attr_accessor :error_number
		attr_accessor :file_name
		attr_accessor :description
		attr_accessor :num_of_objects
		attr_accessor :bulk_upload_object_type

		def id=(val)
			@id = val.to_i
		end
		def uploaded_on=(val)
			@uploaded_on = val.to_i
		end
		def num_of_entries=(val)
			@num_of_entries = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
		def error_type=(val)
			@error_type = val.to_i
		end
		def error_number=(val)
			@error_number = val.to_i
		end
		def num_of_objects=(val)
			@num_of_objects = val.to_i
		end
	end

	class KalturaBulkUploadListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	# This class represents object-specific data passed to the 
	#  bulk upload job.
	#  
	class KalturaBulkUploadObjectData < KalturaObjectBase

	end

	class KalturaCEError < KalturaObjectBase
		attr_accessor :id
		attr_accessor :partner_id
		attr_accessor :browser
		attr_accessor :server_ip
		attr_accessor :server_os
		attr_accessor :php_version
		attr_accessor :ce_admin_email
		attr_accessor :type
		attr_accessor :description
		attr_accessor :data

		def partner_id=(val)
			@partner_id = val.to_i
		end
	end

	class KalturaCategory < KalturaObjectBase
		# The id of the Category
		# 	 
		attr_accessor :id
		attr_accessor :parent_id
		attr_accessor :depth
		attr_accessor :partner_id
		# The name of the Category. 
		# 	 The following characters are not allowed: '<', '>', ','
		# 	 
		attr_accessor :name
		# The full name of the Category
		# 	 
		attr_accessor :full_name
		# The full ids of the Category
		# 	 
		attr_accessor :full_ids
		# Number of entries in this Category (including child categories)
		# 	 
		attr_accessor :entries_count
		# Creation date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :created_at
		# Update date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :updated_at
		# Category description
		# 	 
		attr_accessor :description
		# Category tags
		# 	 
		attr_accessor :tags
		# If category will be returned for list action.
		# 	 
		attr_accessor :appear_in_list
		# defines the privacy of the entries that assigned to this category
		# 	 
		attr_accessor :privacy
		# If Category members are inherited from parent category or set manualy. 
		# 	 
		attr_accessor :inheritance_type
		# Who can ask to join this category
		# 	 
		attr_accessor :user_join_policy
		# Default permissionLevel for new users
		# 	 
		attr_accessor :default_permission_level
		# Category Owner (User id)
		# 	 
		attr_accessor :owner
		# Number of entries that belong to this category directly
		# 	 
		attr_accessor :direct_entries_count
		# Category external id, controlled and managed by the partner.
		# 	 
		attr_accessor :reference_id
		# who can assign entries to this category
		# 	 
		attr_accessor :contribution_policy
		# Number of active members for this category
		# 	 
		attr_accessor :members_count
		# Number of pending members for this category
		# 	 
		attr_accessor :pending_members_count
		# Set privacy context for search entries that assiged to private and public categories. the entries will be private if the search context is set with those categories.
		# 	 
		attr_accessor :privacy_context
		# comma separated parents that defines a privacyContext for search
		# 	 
		attr_accessor :privacy_contexts
		# Status
		# 	 
		attr_accessor :status
		# The category id that this category inherit its members and members permission (for contribution and join)
		# 	 
		attr_accessor :inherited_parent_id
		# Can be used to store various partner related data as a numeric value
		# 	 
		attr_accessor :partner_sort_value
		# Can be used to store various partner related data as a string 
		# 	 
		attr_accessor :partner_data
		# Enable client side applications to define how to sort the category child categories 
		# 	 
		attr_accessor :default_order_by
		# Number of direct children categories
		# 	 
		attr_accessor :direct_sub_categories_count
		# Moderation to add entries to this category by users that are not of permission level Manager or Moderator.  
		# 	 
		attr_accessor :moderation
		# Nunber of pending moderation entries
		# 	 
		attr_accessor :pending_entries_count

		def id=(val)
			@id = val.to_i
		end
		def parent_id=(val)
			@parent_id = val.to_i
		end
		def depth=(val)
			@depth = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def entries_count=(val)
			@entries_count = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
		def appear_in_list=(val)
			@appear_in_list = val.to_i
		end
		def privacy=(val)
			@privacy = val.to_i
		end
		def inheritance_type=(val)
			@inheritance_type = val.to_i
		end
		def user_join_policy=(val)
			@user_join_policy = val.to_i
		end
		def default_permission_level=(val)
			@default_permission_level = val.to_i
		end
		def direct_entries_count=(val)
			@direct_entries_count = val.to_i
		end
		def contribution_policy=(val)
			@contribution_policy = val.to_i
		end
		def members_count=(val)
			@members_count = val.to_i
		end
		def pending_members_count=(val)
			@pending_members_count = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
		def inherited_parent_id=(val)
			@inherited_parent_id = val.to_i
		end
		def partner_sort_value=(val)
			@partner_sort_value = val.to_i
		end
		def direct_sub_categories_count=(val)
			@direct_sub_categories_count = val.to_i
		end
		def moderation=(val)
			@moderation = val.to_i
		end
		def pending_entries_count=(val)
			@pending_entries_count = val.to_i
		end
	end

	class KalturaCategoryEntry < KalturaObjectBase
		attr_accessor :category_id
		# entry id
		# 	 
		attr_accessor :entry_id
		# Creation date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :created_at
		# The full ids of the Category
		# 	 
		attr_accessor :category_full_ids
		# CategroyEntry status
		# 	 
		attr_accessor :status

		def category_id=(val)
			@category_id = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
	end

	class KalturaCategoryEntryListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaCategoryListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaCategoryUser < KalturaObjectBase
		attr_accessor :category_id
		# User id
		# 	 
		attr_accessor :user_id
		# Partner id
		# 	 
		attr_accessor :partner_id
		# Permission level
		# 	 
		attr_accessor :permission_level
		# Status
		# 	 
		attr_accessor :status
		# CategoryUser creation date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :created_at
		# CategoryUser update date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :updated_at
		# Update method can be either manual or automatic to distinguish between manual operations (for example in KMC) on automatic - using bulk upload 
		# 	 
		attr_accessor :update_method
		# The full ids of the Category
		# 	 
		attr_accessor :category_full_ids
		# Set of category-related permissions for the current category user.
		# 	 
		attr_accessor :permission_names

		def category_id=(val)
			@category_id = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def permission_level=(val)
			@permission_level = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
		def update_method=(val)
			@update_method = val.to_i
		end
	end

	class KalturaCategoryUserListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	# Client notification object to hold the notification url and the data when sending client side notifications
	#  
	class KalturaClientNotification < KalturaObjectBase
		# The URL where the notification should be sent to 
		#      
		attr_accessor :url
		# The serialized notification data to send
		#      
		attr_accessor :data

	end

	class KalturaContext < KalturaObjectBase

	end

	class KalturaContextDataResult < KalturaObjectBase
		# Array of messages as received from the rules that invalidated
		# 	 
		attr_accessor :messages
		# Array of actions as received from the rules that invalidated
		# 	 
		attr_accessor :actions

	end

	class KalturaConversionAttribute < KalturaObjectBase
		# The id of the flavor params, set to null for source flavor
		# 	 
		attr_accessor :flavor_params_id
		# Attribute name  
		# 	 
		attr_accessor :name
		# Attribute value  
		# 	 
		attr_accessor :value

		def flavor_params_id=(val)
			@flavor_params_id = val.to_i
		end
	end

	class KalturaCropDimensions < KalturaObjectBase
		# Crop left point
		# 	 
		attr_accessor :left
		# Crop top point
		# 	 
		attr_accessor :top
		# Crop width
		# 	 
		attr_accessor :width
		# Crop height
		# 	 
		attr_accessor :height

		def left=(val)
			@left = val.to_i
		end
		def top=(val)
			@top = val.to_i
		end
		def width=(val)
			@width = val.to_i
		end
		def height=(val)
			@height = val.to_i
		end
	end

	class KalturaConversionProfile < KalturaObjectBase
		# The id of the Conversion Profile
		# 	 
		attr_accessor :id
		attr_accessor :partner_id
		attr_accessor :status
		attr_accessor :type
		# The name of the Conversion Profile
		# 	 
		attr_accessor :name
		# System name of the Conversion Profile
		# 	 
		attr_accessor :system_name
		# Comma separated tags
		# 	 
		attr_accessor :tags
		# The description of the Conversion Profile
		# 	 
		attr_accessor :description
		# ID of the default entry to be used for template data
		# 	 
		attr_accessor :default_entry_id
		# Creation date as Unix timestamp (In seconds) 
		# 	 
		attr_accessor :created_at
		# List of included flavor ids (comma separated)
		# 	 
		attr_accessor :flavor_params_ids
		# Indicates that this conversion profile is system default
		# 	 
		attr_accessor :is_default
		# Indicates that this conversion profile is partner default
		# 	 
		attr_accessor :is_partner_default
		# Cropping dimensions
		# 	 
		attr_accessor :crop_dimensions
		# Clipping start position (in miliseconds)
		# 	 
		attr_accessor :clip_start
		# Clipping duration (in miliseconds)
		# 	 
		attr_accessor :clip_duration
		# XSL to transform ingestion MRSS XML
		# 	 
		attr_accessor :xsl_transformation
		# ID of default storage profile to be used for linked net-storage file syncs
		# 	 
		attr_accessor :storage_profile_id
		# Media parser type to be used for extract media
		# 	 
		attr_accessor :media_parser_type

		def id=(val)
			@id = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def is_default=(val)
			@is_default = val.to_i
		end
		def is_partner_default=(val)
			@is_partner_default = to_b(val)
		end
		def clip_start=(val)
			@clip_start = val.to_i
		end
		def clip_duration=(val)
			@clip_duration = val.to_i
		end
		def storage_profile_id=(val)
			@storage_profile_id = val.to_i
		end
	end

	class KalturaConversionProfileAssetParams < KalturaObjectBase
		# The id of the conversion profile
		# 	 
		attr_accessor :conversion_profile_id
		# The id of the asset params
		# 	 
		attr_accessor :asset_params_id
		# The ingestion origin of the asset params
		# 	 
		attr_accessor :ready_behavior
		# The ingestion origin of the asset params
		# 	 
		attr_accessor :origin
		# Asset params system name
		# 	 
		attr_accessor :system_name
		# Starts conversion even if the decision layer reduced the configuration to comply with the source
		# 	 
		attr_accessor :force_none_complied
		# Specifies how to treat the flavor after conversion is finished
		# 	 
		attr_accessor :delete_policy

		def conversion_profile_id=(val)
			@conversion_profile_id = val.to_i
		end
		def asset_params_id=(val)
			@asset_params_id = val.to_i
		end
		def ready_behavior=(val)
			@ready_behavior = val.to_i
		end
		def origin=(val)
			@origin = val.to_i
		end
		def force_none_complied=(val)
			@force_none_complied = val.to_i
		end
		def delete_policy=(val)
			@delete_policy = val.to_i
		end
	end

	class KalturaConversionProfileAssetParamsListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaConversionProfileListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaConvertCollectionFlavorData < KalturaObjectBase
		attr_accessor :flavor_asset_id
		attr_accessor :flavor_params_output_id
		attr_accessor :ready_behavior
		attr_accessor :video_bitrate
		attr_accessor :audio_bitrate
		attr_accessor :dest_file_sync_local_path
		attr_accessor :dest_file_sync_remote_url

		def flavor_params_output_id=(val)
			@flavor_params_output_id = val.to_i
		end
		def ready_behavior=(val)
			@ready_behavior = val.to_i
		end
		def video_bitrate=(val)
			@video_bitrate = val.to_i
		end
		def audio_bitrate=(val)
			@audio_bitrate = val.to_i
		end
	end

	class KalturaCoordinate < KalturaObjectBase
		attr_accessor :latitude
		attr_accessor :longitude
		attr_accessor :name

		def latitude=(val)
			@latitude = val.to_f
		end
		def longitude=(val)
			@longitude = val.to_f
		end
	end

	class KalturaDataEntry < KalturaBaseEntry
		# The data of the entry
		# 	 
		attr_accessor :data_content
		# indicator whether to return the object for get action with the dataContent field.
		# 	 
		attr_accessor :retrieve_data_content_by_get

		def retrieve_data_content_by_get=(val)
			@retrieve_data_content_by_get = to_b(val)
		end
	end

	class KalturaDataListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaUrlRecognizer < KalturaObjectBase
		# The hosts that are recognized
		# 	 
		attr_accessor :hosts
		# The URI prefix we use for security
		# 	 
		attr_accessor :uri_prefix

	end

	class KalturaUrlTokenizer < KalturaObjectBase
		# Window
		# 	 
		attr_accessor :window
		# key
		# 	 
		attr_accessor :key

		def window=(val)
			@window = val.to_i
		end
	end

	class KalturaDeliveryProfile < KalturaObjectBase
		# The id of the Delivery
		# 	 
		attr_accessor :id
		attr_accessor :partner_id
		# The name of the Delivery
		# 	 
		attr_accessor :name
		# Delivery type
		# 	 
		attr_accessor :type
		# System name of the delivery
		# 	 
		attr_accessor :system_name
		# The description of the Delivery
		# 	 
		attr_accessor :description
		# Creation time as Unix timestamp (In seconds)
		# 	 
		attr_accessor :created_at
		# Update time as Unix timestamp (In seconds)
		# 	 
		attr_accessor :updated_at
		attr_accessor :streamer_type
		attr_accessor :url
		# the host part of the url
		# 	 
		attr_accessor :host_name
		attr_accessor :status
		attr_accessor :recognizer
		attr_accessor :tokenizer
		# True if this is the systemwide default for the protocol
		# 	 
		attr_accessor :is_default
		# the object from which this object was cloned (or 0)
		# 	 
		attr_accessor :parent_id
		# Comma separated list of supported media protocols. f.i. rtmpe
		# 	 
		attr_accessor :media_protocols

		def id=(val)
			@id = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
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
		def is_default=(val)
			@is_default = val.to_i
		end
		def parent_id=(val)
			@parent_id = val.to_i
		end
	end

	class KalturaDeliveryProfileListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaFileSyncDescriptor < KalturaObjectBase
		attr_accessor :file_sync_local_path
		# The translated path as used by the scheduler
		# 	 
		attr_accessor :file_sync_remote_url
		attr_accessor :file_sync_object_sub_type

		def file_sync_object_sub_type=(val)
			@file_sync_object_sub_type = val.to_i
		end
	end

	class KalturaDestFileSyncDescriptor < KalturaFileSyncDescriptor

	end

	class KalturaEmailIngestionProfile < KalturaObjectBase
		attr_accessor :id
		attr_accessor :name
		attr_accessor :description
		attr_accessor :email_address
		attr_accessor :mailbox_id
		attr_accessor :partner_id
		attr_accessor :conversion_profile2id
		attr_accessor :moderation_status
		attr_accessor :status
		attr_accessor :created_at
		attr_accessor :default_category
		attr_accessor :default_user_id
		attr_accessor :default_tags
		attr_accessor :default_admin_tags
		attr_accessor :max_attachment_size_kbytes
		attr_accessor :max_attachments_per_mail

		def id=(val)
			@id = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def conversion_profile2id=(val)
			@conversion_profile2id = val.to_i
		end
		def moderation_status=(val)
			@moderation_status = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
		def max_attachment_size_kbytes=(val)
			@max_attachment_size_kbytes = val.to_i
		end
		def max_attachments_per_mail=(val)
			@max_attachments_per_mail = val.to_i
		end
	end

	# A representation to return an array of values
	#  
	class KalturaValue < KalturaObjectBase
		attr_accessor :description

	end

	# A string representation to return an array of strings
	#  
	class KalturaStringValue < KalturaValue
		attr_accessor :value

	end

	# Advanced configuration for entry replacement process
	#  
	class KalturaEntryReplacementOptions < KalturaObjectBase
		# If true manually created thumbnails will not be deleted on entry replacement
		# 	 
		attr_accessor :keep_manual_thumbnails

		def keep_manual_thumbnails=(val)
			@keep_manual_thumbnails = val.to_i
		end
	end

	# Configuration for extended item in the Kaltura MRSS feeds
	#  
	class KalturaObjectIdentifier < KalturaObjectBase
		# Comma separated string of enum values denoting which features of the item need to be included in the MRSS 
		# 	 
		attr_accessor :extended_features

	end

	class KalturaExtendingItemMrssParameter < KalturaObjectBase
		# XPath for the extending item
		# 	 
		attr_accessor :xpath
		# Object identifier
		# 	 
		attr_accessor :identifier
		# Mode of extension - append to MRSS or replace the xpath content.
		# 	 
		attr_accessor :extension_mode

		def extension_mode=(val)
			@extension_mode = val.to_i
		end
	end

	class KalturaPlayableEntry < KalturaBaseEntry
		# Number of plays
		# 	 
		attr_accessor :plays
		# Number of views
		# 	 
		attr_accessor :views
		# The last time the entry was played
		# 	 
		attr_accessor :last_played_at
		# The width in pixels
		# 	 
		attr_accessor :width
		# The height in pixels
		# 	 
		attr_accessor :height
		# The duration in seconds
		# 	 
		attr_accessor :duration
		# The duration in miliseconds
		# 	 
		attr_accessor :ms_duration
		# The duration type (short for 0-4 mins, medium for 4-20 mins, long for 20+ mins)
		# 	 
		attr_accessor :duration_type

		def plays=(val)
			@plays = val.to_i
		end
		def views=(val)
			@views = val.to_i
		end
		def last_played_at=(val)
			@last_played_at = val.to_i
		end
		def width=(val)
			@width = val.to_i
		end
		def height=(val)
			@height = val.to_i
		end
		def duration=(val)
			@duration = val.to_i
		end
		def ms_duration=(val)
			@ms_duration = val.to_i
		end
	end

	class KalturaMediaEntry < KalturaPlayableEntry
		# The media type of the entry
		# 	 
		attr_accessor :media_type
		# Override the default conversion quality  
		# 	 
		attr_accessor :conversion_quality
		# The source type of the entry 
		# 	 
		attr_accessor :source_type
		# The search provider type used to import this entry
		# 	 
		attr_accessor :search_provider_type
		# The ID of the media in the importing site
		# 	 
		attr_accessor :search_provider_id
		# The user name used for credits
		# 	 
		attr_accessor :credit_user_name
		# The URL for credits
		# 	 
		attr_accessor :credit_url
		# The media date extracted from EXIF data (For images) as Unix timestamp (In seconds)
		# 	 
		attr_accessor :media_date
		# The URL used for playback. This is not the download URL.
		# 	 
		attr_accessor :data_url
		# Comma separated flavor params ids that exists for this media entry
		# 	 
		attr_accessor :flavor_params_ids

		def media_type=(val)
			@media_type = val.to_i
		end
		def search_provider_type=(val)
			@search_provider_type = val.to_i
		end
		def media_date=(val)
			@media_date = val.to_i
		end
	end

	class KalturaFeatureStatus < KalturaObjectBase
		attr_accessor :type
		attr_accessor :value

		def type=(val)
			@type = val.to_i
		end
		def value=(val)
			@value = val.to_i
		end
	end

	class KalturaFeatureStatusListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaFileAsset < KalturaObjectBase
		attr_accessor :id
		attr_accessor :partner_id
		attr_accessor :file_asset_object_type
		attr_accessor :object_id
		attr_accessor :name
		attr_accessor :system_name
		attr_accessor :file_ext
		attr_accessor :version
		attr_accessor :created_at
		attr_accessor :updated_at
		attr_accessor :status

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
	end

	class KalturaFileAssetListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaSearchItem < KalturaObjectBase

	end

	class KalturaFilter < KalturaObjectBase
		attr_accessor :order_by
		attr_accessor :advanced_search

	end

	# The KalturaFilterPager object enables paging management to be applied upon service list actions. 
	#  
	class KalturaFilterPager < KalturaObjectBase
		# The number of objects to retrieve. (Default is 30, maximum page size is 500).
		# 	 
		attr_accessor :page_size
		# The page number for which {pageSize} of objects should be retrieved (Default is 1).
		# 	 
		attr_accessor :page_index

		def page_size=(val)
			@page_size = val.to_i
		end
		def page_index=(val)
			@page_index = val.to_i
		end
	end

	class KalturaFlavorAsset < KalturaAsset
		# The Flavor Params used to create this Flavor Asset
		# 	 
		attr_accessor :flavor_params_id
		# The width of the Flavor Asset 
		# 	 
		attr_accessor :width
		# The height of the Flavor Asset
		# 	 
		attr_accessor :height
		# The overall bitrate (in KBits) of the Flavor Asset 
		# 	 
		attr_accessor :bitrate
		# The frame rate (in FPS) of the Flavor Asset
		# 	 
		attr_accessor :frame_rate
		# True if this Flavor Asset is the original source
		# 	 
		attr_accessor :is_original
		# True if this Flavor Asset is playable in KDP
		# 	 
		attr_accessor :is_web
		# The container format
		# 	 
		attr_accessor :container_format
		# The video codec
		# 	 
		attr_accessor :video_codec_id
		# The status of the Flavor Asset
		# 	 
		attr_accessor :status

		def flavor_params_id=(val)
			@flavor_params_id = val.to_i
		end
		def width=(val)
			@width = val.to_i
		end
		def height=(val)
			@height = val.to_i
		end
		def bitrate=(val)
			@bitrate = val.to_i
		end
		def frame_rate=(val)
			@frame_rate = val.to_f
		end
		def is_original=(val)
			@is_original = to_b(val)
		end
		def is_web=(val)
			@is_web = to_b(val)
		end
		def status=(val)
			@status = val.to_i
		end
	end

	class KalturaFlavorAssetListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaFlavorParams < KalturaAssetParams
		# The video codec of the Flavor Params
		# 	 
		attr_accessor :video_codec
		# The video bitrate (in KBits) of the Flavor Params
		# 	 
		attr_accessor :video_bitrate
		# The audio codec of the Flavor Params
		# 	 
		attr_accessor :audio_codec
		# The audio bitrate (in KBits) of the Flavor Params
		# 	 
		attr_accessor :audio_bitrate
		# The number of audio channels for "downmixing"
		# 	 
		attr_accessor :audio_channels
		# The audio sample rate of the Flavor Params
		# 	 
		attr_accessor :audio_sample_rate
		# The desired width of the Flavor Params
		# 	 
		attr_accessor :width
		# The desired height of the Flavor Params
		# 	 
		attr_accessor :height
		# The frame rate of the Flavor Params
		# 	 
		attr_accessor :frame_rate
		# The gop size of the Flavor Params
		# 	 
		attr_accessor :gop_size
		# The list of conversion engines (comma separated)
		# 	 
		attr_accessor :conversion_engines
		# The list of conversion engines extra params (separated with "|")
		# 	 
		attr_accessor :conversion_engines_extra_params
		attr_accessor :two_pass
		attr_accessor :deinterlice
		attr_accessor :rotate
		attr_accessor :operators
		attr_accessor :engine_version
		# The container format of the Flavor Params
		# 	 
		attr_accessor :format
		attr_accessor :aspect_ratio_processing_mode
		attr_accessor :force_frame_to_multiplication16
		attr_accessor :is_gop_in_sec
		attr_accessor :is_avoid_video_shrink_framesize_to_source
		attr_accessor :is_avoid_video_shrink_bitrate_to_source
		attr_accessor :is_video_frame_rate_for_low_br_apple_hls
		attr_accessor :multi_stream
		attr_accessor :anamorphic_pixels
		attr_accessor :is_avoid_forced_key_frames
		attr_accessor :max_frame_rate
		attr_accessor :video_constant_bitrate
		attr_accessor :video_bitrate_tolerance
		attr_accessor :watermark_data
		attr_accessor :clip_offset
		attr_accessor :clip_duration

		def video_bitrate=(val)
			@video_bitrate = val.to_i
		end
		def audio_bitrate=(val)
			@audio_bitrate = val.to_i
		end
		def audio_channels=(val)
			@audio_channels = val.to_i
		end
		def audio_sample_rate=(val)
			@audio_sample_rate = val.to_i
		end
		def width=(val)
			@width = val.to_i
		end
		def height=(val)
			@height = val.to_i
		end
		def frame_rate=(val)
			@frame_rate = val.to_i
		end
		def gop_size=(val)
			@gop_size = val.to_i
		end
		def two_pass=(val)
			@two_pass = to_b(val)
		end
		def deinterlice=(val)
			@deinterlice = val.to_i
		end
		def rotate=(val)
			@rotate = val.to_i
		end
		def engine_version=(val)
			@engine_version = val.to_i
		end
		def aspect_ratio_processing_mode=(val)
			@aspect_ratio_processing_mode = val.to_i
		end
		def force_frame_to_multiplication16=(val)
			@force_frame_to_multiplication16 = val.to_i
		end
		def is_gop_in_sec=(val)
			@is_gop_in_sec = val.to_i
		end
		def is_avoid_video_shrink_framesize_to_source=(val)
			@is_avoid_video_shrink_framesize_to_source = val.to_i
		end
		def is_avoid_video_shrink_bitrate_to_source=(val)
			@is_avoid_video_shrink_bitrate_to_source = val.to_i
		end
		def is_video_frame_rate_for_low_br_apple_hls=(val)
			@is_video_frame_rate_for_low_br_apple_hls = val.to_i
		end
		def anamorphic_pixels=(val)
			@anamorphic_pixels = val.to_f
		end
		def is_avoid_forced_key_frames=(val)
			@is_avoid_forced_key_frames = val.to_i
		end
		def max_frame_rate=(val)
			@max_frame_rate = val.to_i
		end
		def video_constant_bitrate=(val)
			@video_constant_bitrate = val.to_i
		end
		def video_bitrate_tolerance=(val)
			@video_bitrate_tolerance = val.to_i
		end
		def clip_offset=(val)
			@clip_offset = val.to_i
		end
		def clip_duration=(val)
			@clip_duration = val.to_i
		end
	end

	class KalturaFlavorAssetWithParams < KalturaObjectBase
		# The Flavor Asset (Can be null when there are params without asset)
		# 	 
		attr_accessor :flavor_asset
		# The Flavor Params
		# 	 
		attr_accessor :flavor_params
		# The entry id
		# 	 
		attr_accessor :entry_id

	end

	class KalturaFlavorParamsListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaFlavorParamsOutput < KalturaFlavorParams
		attr_accessor :flavor_params_id
		attr_accessor :command_lines_str
		attr_accessor :flavor_params_version
		attr_accessor :flavor_asset_id
		attr_accessor :flavor_asset_version
		attr_accessor :ready_behavior

		def flavor_params_id=(val)
			@flavor_params_id = val.to_i
		end
		def ready_behavior=(val)
			@ready_behavior = val.to_i
		end
	end

	class KalturaFlavorParamsOutputListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaObject < KalturaObjectBase

	end

	# An int representation to return an array of ints
	#  
	class KalturaIntegerValue < KalturaValue
		attr_accessor :value

		def value=(val)
			@value = val.to_i
		end
	end

	class KalturaJobData < KalturaObjectBase

	end

	# A representation of a live stream configuration
	#  
	class KalturaLiveStreamConfiguration < KalturaObjectBase
		attr_accessor :protocol
		attr_accessor :url
		attr_accessor :publish_url
		attr_accessor :backup_url
		attr_accessor :stream_name

	end

	# Basic push-publish configuration for Kaltura live stream entry
	#  
	class KalturaLiveStreamPushPublishConfiguration < KalturaObjectBase
		attr_accessor :publish_url
		attr_accessor :backup_publish_url
		attr_accessor :port

	end

	class KalturaLiveEntry < KalturaMediaEntry
		# The message to be presented when the stream is offline
		# 	 
		attr_accessor :offline_message
		# Recording Status Enabled/Disabled
		# 	 
		attr_accessor :record_status
		# DVR Status Enabled/Disabled
		# 	 
		attr_accessor :dvr_status
		# Window of time which the DVR allows for backwards scrubbing (in minutes)
		# 	 
		attr_accessor :dvr_window
		# Elapsed recording time (in msec) up to the point where the live stream was last stopped (unpublished).
		# 	 
		attr_accessor :last_elapsed_recording_time
		# Array of key value protocol->live stream url objects
		# 	 
		attr_accessor :live_stream_configurations
		# Recorded entry id
		# 	 
		attr_accessor :recorded_entry_id
		# Flag denoting whether entry should be published by the media server
		# 	 
		attr_accessor :push_publish_enabled
		# Array of publish configurations
		# 	 
		attr_accessor :publish_configurations
		# The first time in which the entry was broadcast
		# 	 
		attr_accessor :first_broadcast
		# The Last time in which the entry was broadcast
		# 	 
		attr_accessor :last_broadcast
		# The time (unix timestamp in milliseconds) in which the entry broadcast started or 0 when the entry is off the air
		# 	 
		attr_accessor :current_broadcast_start_time

		def record_status=(val)
			@record_status = val.to_i
		end
		def dvr_status=(val)
			@dvr_status = val.to_i
		end
		def dvr_window=(val)
			@dvr_window = val.to_i
		end
		def last_elapsed_recording_time=(val)
			@last_elapsed_recording_time = val.to_i
		end
		def push_publish_enabled=(val)
			@push_publish_enabled = val.to_i
		end
		def first_broadcast=(val)
			@first_broadcast = val.to_i
		end
		def last_broadcast=(val)
			@last_broadcast = val.to_i
		end
		def current_broadcast_start_time=(val)
			@current_broadcast_start_time = val.to_f
		end
	end

	class KalturaLiveChannel < KalturaLiveEntry
		# Playlist id to be played
		# 	 
		attr_accessor :playlist_id
		# Indicates that the segments should be repeated for ever
		# 	 
		attr_accessor :repeat

		def repeat=(val)
			@repeat = val.to_i
		end
	end

	class KalturaLiveChannelListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaLiveChannelSegment < KalturaObjectBase
		# Unique identifier
		# 	 
		attr_accessor :id
		attr_accessor :partner_id
		# Segment creation date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :created_at
		# Segment update date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :updated_at
		# Segment name
		# 	 
		attr_accessor :name
		# Segment description
		# 	 
		attr_accessor :description
		# Segment tags
		# 	 
		attr_accessor :tags
		# Segment could be associated with the main stream, as additional stream or as overlay
		# 	 
		attr_accessor :type
		attr_accessor :status
		# Live channel id
		# 	 
		attr_accessor :channel_id
		# Entry id to be played
		# 	 
		attr_accessor :entry_id
		# Segment start time trigger type
		# 	 
		attr_accessor :trigger_type
		# Live channel segment that the trigger relates to
		# 	 
		attr_accessor :trigger_segment_id
		# Segment play start time, in mili-seconds, according to trigger type
		# 	 
		attr_accessor :start_time
		# Segment play duration time, in mili-seconds
		# 	 
		attr_accessor :duration

		def partner_id=(val)
			@partner_id = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
		def start_time=(val)
			@start_time = val.to_f
		end
		def duration=(val)
			@duration = val.to_f
		end
	end

	class KalturaLiveChannelSegmentListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaLiveReportExportParams < KalturaObjectBase
		attr_accessor :entry_ids
		attr_accessor :recpient_email
		# Time zone offset in minutes (between client to UTC)
		# 	 
		attr_accessor :time_zone_offset

		def time_zone_offset=(val)
			@time_zone_offset = val.to_i
		end
	end

	class KalturaLiveReportExportResponse < KalturaObjectBase
		attr_accessor :reference_job_id
		attr_accessor :report_email

		def reference_job_id=(val)
			@reference_job_id = val.to_i
		end
	end

	class KalturaLiveReportInputFilter < KalturaObjectBase
		attr_accessor :entry_ids
		attr_accessor :from_time
		attr_accessor :to_time
		attr_accessor :live

		def from_time=(val)
			@from_time = val.to_i
		end
		def to_time=(val)
			@to_time = val.to_i
		end
		def live=(val)
			@live = val.to_i
		end
	end

	class KalturaLiveStats < KalturaObjectBase
		attr_accessor :audience
		attr_accessor :avg_bitrate
		attr_accessor :buffer_time
		attr_accessor :plays
		attr_accessor :seconds_viewed
		attr_accessor :start_event
		attr_accessor :timestamp

		def audience=(val)
			@audience = val.to_i
		end
		def avg_bitrate=(val)
			@avg_bitrate = val.to_f
		end
		def buffer_time=(val)
			@buffer_time = val.to_i
		end
		def plays=(val)
			@plays = val.to_i
		end
		def seconds_viewed=(val)
			@seconds_viewed = val.to_i
		end
		def start_event=(val)
			@start_event = val.to_i
		end
		def timestamp=(val)
			@timestamp = val.to_i
		end
	end

	class KalturaLiveStatsListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaLiveStreamBitrate < KalturaObjectBase
		attr_accessor :bitrate
		attr_accessor :width
		attr_accessor :height
		attr_accessor :tags

		def bitrate=(val)
			@bitrate = val.to_i
		end
		def width=(val)
			@width = val.to_i
		end
		def height=(val)
			@height = val.to_i
		end
	end

	class KalturaLiveStreamEntry < KalturaLiveEntry
		# The stream id as provided by the provider
		# 	 
		attr_accessor :stream_remote_id
		# The backup stream id as provided by the provider
		# 	 
		attr_accessor :stream_remote_backup_id
		# Array of supported bitrates
		# 	 
		attr_accessor :bitrates
		attr_accessor :primary_broadcasting_url
		attr_accessor :secondary_broadcasting_url
		attr_accessor :primary_rtsp_broadcasting_url
		attr_accessor :secondary_rtsp_broadcasting_url
		attr_accessor :stream_name
		# The stream url
		# 	 
		attr_accessor :stream_url
		# HLS URL - URL for live stream playback on mobile device
		# 	 
		attr_accessor :hls_stream_url
		# URL Manager to handle the live stream URL (for instance, add token)
		# 	 
		attr_accessor :url_manager
		# The broadcast primary ip
		# 	 
		attr_accessor :encoding_ip1
		# The broadcast secondary ip
		# 	 
		attr_accessor :encoding_ip2
		# The broadcast password
		# 	 
		attr_accessor :stream_password
		# The broadcast username
		# 	 
		attr_accessor :stream_username

	end

	class KalturaLiveStreamListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaBaseEntryBaseFilter < KalturaFilter
		# This filter should be in use for retrieving only a specific entry (identified by its entryId).
		# 	 
		attr_accessor :id_equal
		# This filter should be in use for retrieving few specific entries (string should include comma separated list of entryId strings).
		# 	 
		attr_accessor :id_in
		attr_accessor :id_not_in
		# This filter should be in use for retrieving specific entries. It should include only one string to search for in entry names (no wildcards, spaces are treated as part of the string).
		# 	 
		attr_accessor :name_like
		# This filter should be in use for retrieving specific entries. It could include few (comma separated) strings for searching in entry names, while applying an OR logic to retrieve entries that contain at least one input string (no wildcards, spaces are treated as part of the string).
		# 	 
		attr_accessor :name_multi_like_or
		# This filter should be in use for retrieving specific entries. It could include few (comma separated) strings for searching in entry names, while applying an AND logic to retrieve entries that contain all input strings (no wildcards, spaces are treated as part of the string).
		# 	 
		attr_accessor :name_multi_like_and
		# This filter should be in use for retrieving entries with a specific name.
		# 	 
		attr_accessor :name_equal
		# This filter should be in use for retrieving only entries which were uploaded by/assigned to users of a specific Kaltura Partner (identified by Partner ID).
		# 	 
		attr_accessor :partner_id_equal
		# This filter should be in use for retrieving only entries within Kaltura network which were uploaded by/assigned to users of few Kaltura Partners  (string should include comma separated list of PartnerIDs)
		# 	 
		attr_accessor :partner_id_in
		# This filter parameter should be in use for retrieving only entries, uploaded by/assigned to a specific user (identified by user Id).
		# 	 
		attr_accessor :user_id_equal
		attr_accessor :user_id_in
		attr_accessor :creator_id_equal
		# This filter should be in use for retrieving specific entries. It should include only one string to search for in entry tags (no wildcards, spaces are treated as part of the string).
		# 	 
		attr_accessor :tags_like
		# This filter should be in use for retrieving specific entries. It could include few (comma separated) strings for searching in entry tags, while applying an OR logic to retrieve entries that contain at least one input string (no wildcards, spaces are treated as part of the string).
		# 	 
		attr_accessor :tags_multi_like_or
		# This filter should be in use for retrieving specific entries. It could include few (comma separated) strings for searching in entry tags, while applying an AND logic to retrieve entries that contain all input strings (no wildcards, spaces are treated as part of the string).
		# 	 
		attr_accessor :tags_multi_like_and
		# This filter should be in use for retrieving specific entries. It should include only one string to search for in entry tags set by an ADMIN user (no wildcards, spaces are treated as part of the string).
		# 	 
		attr_accessor :admin_tags_like
		# This filter should be in use for retrieving specific entries. It could include few (comma separated) strings for searching in entry tags, set by an ADMIN user, while applying an OR logic to retrieve entries that contain at least one input string (no wildcards, spaces are treated as part of the string).
		# 	 
		attr_accessor :admin_tags_multi_like_or
		# This filter should be in use for retrieving specific entries. It could include few (comma separated) strings for searching in entry tags, set by an ADMIN user, while applying an AND logic to retrieve entries that contain all input strings (no wildcards, spaces are treated as part of the string).
		# 	 
		attr_accessor :admin_tags_multi_like_and
		attr_accessor :categories_match_and
		# All entries within these categories or their child categories.
		# 	 
		attr_accessor :categories_match_or
		attr_accessor :categories_not_contains
		attr_accessor :categories_ids_match_and
		# All entries of the categories, excluding their child categories.
		# 	 To include entries of the child categories, use categoryAncestorIdIn, or categoriesMatchOr.
		# 	 
		attr_accessor :categories_ids_match_or
		attr_accessor :categories_ids_not_contains
		attr_accessor :categories_ids_empty
		# This filter should be in use for retrieving only entries, at a specific {
		attr_accessor :status_equal
		# This filter should be in use for retrieving only entries, not at a specific {
		attr_accessor :status_not_equal
		# This filter should be in use for retrieving only entries, at few specific {
		attr_accessor :status_in
		# This filter should be in use for retrieving only entries, not at few specific {
		attr_accessor :status_not_in
		attr_accessor :moderation_status_equal
		attr_accessor :moderation_status_not_equal
		attr_accessor :moderation_status_in
		attr_accessor :moderation_status_not_in
		attr_accessor :type_equal
		# This filter should be in use for retrieving entries of few {
		attr_accessor :type_in
		# This filter parameter should be in use for retrieving only entries which were created at Kaltura system after a specific time/date (standard timestamp format).
		# 	 
		attr_accessor :created_at_greater_than_or_equal
		# This filter parameter should be in use for retrieving only entries which were created at Kaltura system before a specific time/date (standard timestamp format).
		# 	 
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
		attr_accessor :total_rank_less_than_or_equal
		attr_accessor :total_rank_greater_than_or_equal
		attr_accessor :group_id_equal
		# This filter should be in use for retrieving specific entries while search match the input string within all of the following metadata attributes: name, description, tags, adminTags.
		# 	 
		attr_accessor :search_text_match_and
		# This filter should be in use for retrieving specific entries while search match the input string within at least one of the following metadata attributes: name, description, tags, adminTags.
		# 	 
		attr_accessor :search_text_match_or
		attr_accessor :access_control_id_equal
		attr_accessor :access_control_id_in
		attr_accessor :start_date_greater_than_or_equal
		attr_accessor :start_date_less_than_or_equal
		attr_accessor :start_date_greater_than_or_equal_or_null
		attr_accessor :start_date_less_than_or_equal_or_null
		attr_accessor :end_date_greater_than_or_equal
		attr_accessor :end_date_less_than_or_equal
		attr_accessor :end_date_greater_than_or_equal_or_null
		attr_accessor :end_date_less_than_or_equal_or_null
		attr_accessor :reference_id_equal
		attr_accessor :reference_id_in
		attr_accessor :replacing_entry_id_equal
		attr_accessor :replacing_entry_id_in
		attr_accessor :replaced_entry_id_equal
		attr_accessor :replaced_entry_id_in
		attr_accessor :replacement_status_equal
		attr_accessor :replacement_status_in
		attr_accessor :partner_sort_value_greater_than_or_equal
		attr_accessor :partner_sort_value_less_than_or_equal
		attr_accessor :root_entry_id_equal
		attr_accessor :root_entry_id_in
		attr_accessor :parent_entry_id_equal
		attr_accessor :tags_name_multi_like_or
		attr_accessor :tags_admin_tags_multi_like_or
		attr_accessor :tags_admin_tags_name_multi_like_or
		attr_accessor :tags_name_multi_like_and
		attr_accessor :tags_admin_tags_multi_like_and
		attr_accessor :tags_admin_tags_name_multi_like_and

		def partner_id_equal=(val)
			@partner_id_equal = val.to_i
		end
		def categories_ids_empty=(val)
			@categories_ids_empty = val.to_i
		end
		def moderation_status_equal=(val)
			@moderation_status_equal = val.to_i
		end
		def moderation_status_not_equal=(val)
			@moderation_status_not_equal = val.to_i
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
		def total_rank_less_than_or_equal=(val)
			@total_rank_less_than_or_equal = val.to_i
		end
		def total_rank_greater_than_or_equal=(val)
			@total_rank_greater_than_or_equal = val.to_i
		end
		def group_id_equal=(val)
			@group_id_equal = val.to_i
		end
		def access_control_id_equal=(val)
			@access_control_id_equal = val.to_i
		end
		def start_date_greater_than_or_equal=(val)
			@start_date_greater_than_or_equal = val.to_i
		end
		def start_date_less_than_or_equal=(val)
			@start_date_less_than_or_equal = val.to_i
		end
		def start_date_greater_than_or_equal_or_null=(val)
			@start_date_greater_than_or_equal_or_null = val.to_i
		end
		def start_date_less_than_or_equal_or_null=(val)
			@start_date_less_than_or_equal_or_null = val.to_i
		end
		def end_date_greater_than_or_equal=(val)
			@end_date_greater_than_or_equal = val.to_i
		end
		def end_date_less_than_or_equal=(val)
			@end_date_less_than_or_equal = val.to_i
		end
		def end_date_greater_than_or_equal_or_null=(val)
			@end_date_greater_than_or_equal_or_null = val.to_i
		end
		def end_date_less_than_or_equal_or_null=(val)
			@end_date_less_than_or_equal_or_null = val.to_i
		end
		def partner_sort_value_greater_than_or_equal=(val)
			@partner_sort_value_greater_than_or_equal = val.to_i
		end
		def partner_sort_value_less_than_or_equal=(val)
			@partner_sort_value_less_than_or_equal = val.to_i
		end
	end

	class KalturaBaseEntryFilter < KalturaBaseEntryBaseFilter
		attr_accessor :free_text
		attr_accessor :is_root
		attr_accessor :categories_full_name_in
		# All entries within this categoy or in child categories  
		# 	 
		attr_accessor :category_ancestor_id_in
		# The id of the original entry
		# 	 
		attr_accessor :redirect_from_entry_id

		def is_root=(val)
			@is_root = val.to_i
		end
	end

	class KalturaPlayableEntryBaseFilter < KalturaBaseEntryFilter
		attr_accessor :last_played_at_greater_than_or_equal
		attr_accessor :last_played_at_less_than_or_equal
		attr_accessor :duration_less_than
		attr_accessor :duration_greater_than
		attr_accessor :duration_less_than_or_equal
		attr_accessor :duration_greater_than_or_equal
		attr_accessor :duration_type_match_or

		def last_played_at_greater_than_or_equal=(val)
			@last_played_at_greater_than_or_equal = val.to_i
		end
		def last_played_at_less_than_or_equal=(val)
			@last_played_at_less_than_or_equal = val.to_i
		end
		def duration_less_than=(val)
			@duration_less_than = val.to_i
		end
		def duration_greater_than=(val)
			@duration_greater_than = val.to_i
		end
		def duration_less_than_or_equal=(val)
			@duration_less_than_or_equal = val.to_i
		end
		def duration_greater_than_or_equal=(val)
			@duration_greater_than_or_equal = val.to_i
		end
	end

	class KalturaPlayableEntryFilter < KalturaPlayableEntryBaseFilter

	end

	class KalturaMediaEntryBaseFilter < KalturaPlayableEntryFilter
		attr_accessor :media_type_equal
		attr_accessor :media_type_in
		attr_accessor :source_type_equal
		attr_accessor :source_type_not_equal
		attr_accessor :source_type_in
		attr_accessor :source_type_not_in
		attr_accessor :media_date_greater_than_or_equal
		attr_accessor :media_date_less_than_or_equal
		attr_accessor :flavor_params_ids_match_or
		attr_accessor :flavor_params_ids_match_and

		def media_type_equal=(val)
			@media_type_equal = val.to_i
		end
		def media_date_greater_than_or_equal=(val)
			@media_date_greater_than_or_equal = val.to_i
		end
		def media_date_less_than_or_equal=(val)
			@media_date_less_than_or_equal = val.to_i
		end
	end

	class KalturaMediaEntryFilter < KalturaMediaEntryBaseFilter

	end

	class KalturaMediaEntryFilterForPlaylist < KalturaMediaEntryFilter
		attr_accessor :limit

		def limit=(val)
			@limit = val.to_i
		end
	end

	class KalturaMediaInfo < KalturaObjectBase
		# The id of the media info
		# 	 
		attr_accessor :id
		# The id of the related flavor asset
		# 	 
		attr_accessor :flavor_asset_id
		# The file size
		# 	 
		attr_accessor :file_size
		# The container format
		# 	 
		attr_accessor :container_format
		# The container id
		# 	 
		attr_accessor :container_id
		# The container profile
		# 	 
		attr_accessor :container_profile
		# The container duration
		# 	 
		attr_accessor :container_duration
		# The container bit rate
		# 	 
		attr_accessor :container_bit_rate
		# The video format
		# 	 
		attr_accessor :video_format
		# The video codec id
		# 	 
		attr_accessor :video_codec_id
		# The video duration
		# 	 
		attr_accessor :video_duration
		# The video bit rate
		# 	 
		attr_accessor :video_bit_rate
		# The video bit rate mode
		# 	 
		attr_accessor :video_bit_rate_mode
		# The video width
		# 	 
		attr_accessor :video_width
		# The video height
		# 	 
		attr_accessor :video_height
		# The video frame rate
		# 	 
		attr_accessor :video_frame_rate
		# The video display aspect ratio (dar)
		# 	 
		attr_accessor :video_dar
		attr_accessor :video_rotation
		# The audio format
		# 	 
		attr_accessor :audio_format
		# The audio codec id
		# 	 
		attr_accessor :audio_codec_id
		# The audio duration
		# 	 
		attr_accessor :audio_duration
		# The audio bit rate
		# 	 
		attr_accessor :audio_bit_rate
		# The audio bit rate mode
		# 	 
		attr_accessor :audio_bit_rate_mode
		# The number of audio channels
		# 	 
		attr_accessor :audio_channels
		# The audio sampling rate
		# 	 
		attr_accessor :audio_sampling_rate
		# The audio resolution
		# 	 
		attr_accessor :audio_resolution
		# The writing library
		# 	 
		attr_accessor :writing_lib
		# The data as returned by the mediainfo command line
		# 	 
		attr_accessor :raw_data
		attr_accessor :multi_stream_info
		attr_accessor :scan_type
		attr_accessor :multi_stream
		attr_accessor :is_fast_start
		attr_accessor :content_streams

		def id=(val)
			@id = val.to_i
		end
		def file_size=(val)
			@file_size = val.to_i
		end
		def container_duration=(val)
			@container_duration = val.to_i
		end
		def container_bit_rate=(val)
			@container_bit_rate = val.to_i
		end
		def video_duration=(val)
			@video_duration = val.to_i
		end
		def video_bit_rate=(val)
			@video_bit_rate = val.to_i
		end
		def video_bit_rate_mode=(val)
			@video_bit_rate_mode = val.to_i
		end
		def video_width=(val)
			@video_width = val.to_i
		end
		def video_height=(val)
			@video_height = val.to_i
		end
		def video_frame_rate=(val)
			@video_frame_rate = val.to_f
		end
		def video_dar=(val)
			@video_dar = val.to_f
		end
		def video_rotation=(val)
			@video_rotation = val.to_i
		end
		def audio_duration=(val)
			@audio_duration = val.to_i
		end
		def audio_bit_rate=(val)
			@audio_bit_rate = val.to_i
		end
		def audio_bit_rate_mode=(val)
			@audio_bit_rate_mode = val.to_i
		end
		def audio_channels=(val)
			@audio_channels = val.to_i
		end
		def audio_sampling_rate=(val)
			@audio_sampling_rate = val.to_i
		end
		def audio_resolution=(val)
			@audio_resolution = val.to_i
		end
		def scan_type=(val)
			@scan_type = val.to_i
		end
		def is_fast_start=(val)
			@is_fast_start = val.to_i
		end
	end

	class KalturaMediaInfoListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaMediaListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaMediaServer < KalturaObjectBase
		# Unique identifier
		# 	 
		attr_accessor :id
		# Server data center id
		# 	 
		attr_accessor :dc
		# Server host name
		# 	 
		attr_accessor :hostname
		# Server first registration date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :created_at
		# Server last update date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :updated_at

		def id=(val)
			@id = val.to_i
		end
		def dc=(val)
			@dc = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
	end

	class KalturaMediaServerStatus < KalturaObjectBase

	end

	class KalturaMixEntry < KalturaPlayableEntry
		# Indicates whether the user has submited a real thumbnail to the mix (Not the one that was generated automaticaly)
		# 	 
		attr_accessor :has_real_thumbnail
		# The editor type used to edit the metadata
		# 	 
		attr_accessor :editor_type
		# The xml data of the mix
		# 	 
		attr_accessor :data_content

		def has_real_thumbnail=(val)
			@has_real_thumbnail = to_b(val)
		end
		def editor_type=(val)
			@editor_type = val.to_i
		end
	end

	class KalturaMixListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaModerationFlag < KalturaObjectBase
		# Moderation flag id
		# 	 
		attr_accessor :id
		attr_accessor :partner_id
		# The user id that added the moderation flag
		# 	 
		attr_accessor :user_id
		# The type of the moderation flag (entry or user)
		# 	 
		attr_accessor :moderation_object_type
		# If moderation flag is set for entry, this is the flagged entry id
		# 	 
		attr_accessor :flagged_entry_id
		# If moderation flag is set for user, this is the flagged user id
		# 	 
		attr_accessor :flagged_user_id
		# The moderation flag status
		# 	 
		attr_accessor :status
		# The comment that was added to the flag
		# 	 
		attr_accessor :comments
		attr_accessor :flag_type
		attr_accessor :created_at
		attr_accessor :updated_at

		def id=(val)
			@id = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def flag_type=(val)
			@flag_type = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
	end

	class KalturaModerationFlagListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaObjectListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaPlayerDeliveryType < KalturaObjectBase
		attr_accessor :id
		attr_accessor :label
		attr_accessor :flashvars
		attr_accessor :min_version
		attr_accessor :enabled_by_default

		def enabled_by_default=(val)
			@enabled_by_default = to_b(val)
		end
	end

	class KalturaPlayerEmbedCodeType < KalturaObjectBase
		attr_accessor :id
		attr_accessor :label
		attr_accessor :entry_only
		attr_accessor :min_version

		def entry_only=(val)
			@entry_only = to_b(val)
		end
	end

	class KalturaPartner < KalturaObjectBase
		attr_accessor :id
		attr_accessor :name
		attr_accessor :website
		attr_accessor :notification_url
		attr_accessor :appear_in_search
		attr_accessor :created_at
		# deprecated - lastName and firstName replaces this field
		# 	 
		attr_accessor :admin_name
		attr_accessor :admin_email
		attr_accessor :description
		attr_accessor :commercial_use
		attr_accessor :landing_page
		attr_accessor :user_landing_page
		attr_accessor :content_categories
		attr_accessor :type
		attr_accessor :phone
		attr_accessor :describe_yourself
		attr_accessor :adult_content
		attr_accessor :def_conversion_profile_type
		attr_accessor :notify
		attr_accessor :status
		attr_accessor :allow_quick_edit
		attr_accessor :merge_entry_lists
		attr_accessor :notifications_config
		attr_accessor :max_upload_size
		attr_accessor :partner_package
		attr_accessor :secret
		attr_accessor :admin_secret
		attr_accessor :cms_password
		attr_accessor :allow_multi_notification
		attr_accessor :admin_login_users_quota
		attr_accessor :admin_user_id
		# firstName and lastName replace the old (deprecated) adminName
		# 	 
		attr_accessor :first_name
		# lastName and firstName replace the old (deprecated) adminName
		# 	 
		attr_accessor :last_name
		# country code (2char) - this field is optional
		# 	 
		attr_accessor :country
		# state code (2char) - this field is optional
		# 	 
		attr_accessor :state
		attr_accessor :additional_params
		attr_accessor :publishers_quota
		attr_accessor :partner_group_type
		attr_accessor :default_entitlement_enforcement
		attr_accessor :default_delivery_type
		attr_accessor :default_embed_code_type
		attr_accessor :delivery_types
		attr_accessor :embed_code_types
		attr_accessor :template_partner_id
		attr_accessor :ignore_seo_links
		attr_accessor :host
		attr_accessor :cdn_host
		attr_accessor :is_first_login
		attr_accessor :logout_url
		attr_accessor :partner_parent_id
		attr_accessor :crm_id
		attr_accessor :reference_id

		def id=(val)
			@id = val.to_i
		end
		def appear_in_search=(val)
			@appear_in_search = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def commercial_use=(val)
			@commercial_use = val.to_i
		end
		def type=(val)
			@type = val.to_i
		end
		def adult_content=(val)
			@adult_content = to_b(val)
		end
		def notify=(val)
			@notify = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
		def allow_quick_edit=(val)
			@allow_quick_edit = val.to_i
		end
		def merge_entry_lists=(val)
			@merge_entry_lists = val.to_i
		end
		def max_upload_size=(val)
			@max_upload_size = val.to_i
		end
		def partner_package=(val)
			@partner_package = val.to_i
		end
		def allow_multi_notification=(val)
			@allow_multi_notification = val.to_i
		end
		def admin_login_users_quota=(val)
			@admin_login_users_quota = val.to_i
		end
		def publishers_quota=(val)
			@publishers_quota = val.to_i
		end
		def partner_group_type=(val)
			@partner_group_type = val.to_i
		end
		def default_entitlement_enforcement=(val)
			@default_entitlement_enforcement = to_b(val)
		end
		def template_partner_id=(val)
			@template_partner_id = val.to_i
		end
		def ignore_seo_links=(val)
			@ignore_seo_links = to_b(val)
		end
		def is_first_login=(val)
			@is_first_login = to_b(val)
		end
		def partner_parent_id=(val)
			@partner_parent_id = val.to_i
		end
	end

	class KalturaPartnerListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaPartnerStatistics < KalturaObjectBase
		# Package total allowed bandwidth and storage
		# 	 
		attr_accessor :package_bandwidth_and_storage
		# Partner total hosting in GB on the disk
		# 	 
		attr_accessor :hosting
		# Partner total bandwidth in GB
		# 	 
		attr_accessor :bandwidth
		# total usage in GB - including bandwidth and storage
		# 	 
		attr_accessor :usage
		# Percent of usage out of partner's package. if usage is 5GB and package is 10GB, this value will be 50
		# 	 
		attr_accessor :usage_percent
		# date when partner reached the limit of his package (timestamp)
		# 	 
		attr_accessor :reached_limit_date

		def package_bandwidth_and_storage=(val)
			@package_bandwidth_and_storage = val.to_i
		end
		def hosting=(val)
			@hosting = val.to_f
		end
		def bandwidth=(val)
			@bandwidth = val.to_f
		end
		def usage=(val)
			@usage = val.to_i
		end
		def usage_percent=(val)
			@usage_percent = val.to_f
		end
		def reached_limit_date=(val)
			@reached_limit_date = val.to_i
		end
	end

	class KalturaPartnerUsage < KalturaObjectBase
		# Partner total hosting in GB on the disk
		# 	 
		attr_accessor :hosting_gb
		# percent of usage out of partner's package. if usageGB is 5 and package is 10GB, this value will be 50
		# 	 
		attr_accessor :percent
		# package total BW - actually this is usage, which represents BW+storage
		# 	 
		attr_accessor :package_bw
		# total usage in GB - including bandwidth and storage
		# 	 
		attr_accessor :usage_gb
		# date when partner reached the limit of his package (timestamp)
		# 	 
		attr_accessor :reached_limit_date
		# a semi-colon separated list of comma-separated key-values to represent a usage graph.
		# 	 keys could be 1-12 for a year view (1,1.2;2,1.1;3,0.9;...;12,1.4;)
		# 	 keys could be 1-[28,29,30,31] depending on the requested month, for a daily view in a given month (1,0.4;2,0.2;...;31,0.1;)
		# 	 
		attr_accessor :usage_graph

		def hosting_gb=(val)
			@hosting_gb = val.to_f
		end
		def percent=(val)
			@percent = val.to_f
		end
		def package_bw=(val)
			@package_bw = val.to_i
		end
		def usage_gb=(val)
			@usage_gb = val.to_f
		end
		def reached_limit_date=(val)
			@reached_limit_date = val.to_i
		end
	end

	class KalturaPermission < KalturaObjectBase
		attr_accessor :id
		attr_accessor :type
		attr_accessor :name
		attr_accessor :friendly_name
		attr_accessor :description
		attr_accessor :status
		attr_accessor :partner_id
		attr_accessor :depends_on_permission_names
		attr_accessor :tags
		attr_accessor :permission_items_ids
		attr_accessor :created_at
		attr_accessor :updated_at
		attr_accessor :partner_group

		def id=(val)
			@id = val.to_i
		end
		def type=(val)
			@type = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
	end

	class KalturaPermissionItem < KalturaObjectBase
		attr_accessor :id
		attr_accessor :type
		attr_accessor :partner_id
		attr_accessor :tags
		attr_accessor :created_at
		attr_accessor :updated_at

		def id=(val)
			@id = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
	end

	class KalturaPermissionItemListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaPermissionListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaPlaylist < KalturaBaseEntry
		# Content of the playlist - 
		# 	 XML if the playlistType is dynamic 
		# 	 text if the playlistType is static 
		# 	 url if the playlistType is mRss 
		# 	 
		attr_accessor :playlist_content
		attr_accessor :filters
		# Maximum count of results to be returned in playlist execution
		# 	 
		attr_accessor :total_results
		# Type of playlist
		# 	 
		attr_accessor :playlist_type
		# Number of plays
		# 	 
		attr_accessor :plays
		# Number of views
		# 	 
		attr_accessor :views
		# The duration in seconds
		# 	 
		attr_accessor :duration
		# The url for this playlist
		# 	 
		attr_accessor :execute_url

		def total_results=(val)
			@total_results = val.to_i
		end
		def playlist_type=(val)
			@playlist_type = val.to_i
		end
		def plays=(val)
			@plays = val.to_i
		end
		def views=(val)
			@views = val.to_i
		end
		def duration=(val)
			@duration = val.to_i
		end
	end

	class KalturaPlaylistListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaRemotePath < KalturaObjectBase
		attr_accessor :storage_profile_id
		attr_accessor :uri

		def storage_profile_id=(val)
			@storage_profile_id = val.to_i
		end
	end

	class KalturaRemotePathListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	# Used to ingest media that is available on remote server and accessible using the supplied URL, media file will be downloaded using import job in order to make the asset ready.
	#  
	class KalturaUrlResource < KalturaContentResource
		# Remote URL, FTP, HTTP or HTTPS 
		# 	 
		attr_accessor :url
		# Force Import Job 
		# 	 
		attr_accessor :force_async_download

		def force_async_download=(val)
			@force_async_download = to_b(val)
		end
	end

	# Used to ingest media that is available on remote server and accessible using the supplied URL, the media file won't be downloaded but a file sync object of URL type will point to the media URL.
	#  
	class KalturaRemoteStorageResource < KalturaUrlResource
		# ID of storage profile to be associated with the created file sync, used for file serving URL composing. 
		# 	 
		attr_accessor :storage_profile_id

		def storage_profile_id=(val)
			@storage_profile_id = val.to_i
		end
	end

	class KalturaReportBaseTotal < KalturaObjectBase
		attr_accessor :id
		attr_accessor :data

	end

	class KalturaReportGraph < KalturaObjectBase
		attr_accessor :id
		attr_accessor :data

	end

	class KalturaReportInputBaseFilter < KalturaObjectBase
		# Start date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :from_date
		# End date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :to_date
		# Start day as string (YYYYMMDD)
		# 	 
		attr_accessor :from_day
		# End date as string (YYYYMMDD)
		# 	 
		attr_accessor :to_day

		def from_date=(val)
			@from_date = val.to_i
		end
		def to_date=(val)
			@to_date = val.to_i
		end
	end

	class KalturaReportResponse < KalturaObjectBase
		attr_accessor :columns
		attr_accessor :results

	end

	class KalturaReportTable < KalturaObjectBase
		attr_accessor :header
		attr_accessor :data
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaReportTotal < KalturaObjectBase
		attr_accessor :header
		attr_accessor :data

	end

	class KalturaScope < KalturaObjectBase

	end

	class KalturaSearch < KalturaObjectBase
		attr_accessor :key_words
		attr_accessor :search_source
		attr_accessor :media_type
		# Use this field to pass dynamic data for searching
		# 	 For example - if you set this field to "mymovies_$partner_id"
		# 	 The $partner_id will be automatically replcaed with your real partner Id
		# 	 
		attr_accessor :extra_data
		attr_accessor :auth_data

		def search_source=(val)
			@search_source = val.to_i
		end
		def media_type=(val)
			@media_type = val.to_i
		end
	end

	class KalturaSearchAuthData < KalturaObjectBase
		# The authentication data that further should be used for search
		# 	 
		attr_accessor :auth_data
		# Login URL when user need to sign-in and authorize the search
		# 	 
		attr_accessor :login_url
		# Information when there was an error
		# 	 
		attr_accessor :message

	end

	class KalturaSearchResult < KalturaSearch
		attr_accessor :id
		attr_accessor :title
		attr_accessor :thumb_url
		attr_accessor :description
		attr_accessor :tags
		attr_accessor :url
		attr_accessor :source_link
		attr_accessor :credit
		attr_accessor :license_type
		attr_accessor :flash_playback_type
		attr_accessor :file_ext

		def license_type=(val)
			@license_type = val.to_i
		end
	end

	class KalturaSearchResultResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :need_media_info

		def need_media_info=(val)
			@need_media_info = to_b(val)
		end
	end

	class KalturaSessionInfo < KalturaObjectBase
		attr_accessor :ks
		attr_accessor :session_type
		attr_accessor :partner_id
		attr_accessor :user_id
		attr_accessor :expiry
		attr_accessor :privileges

		def session_type=(val)
			@session_type = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def expiry=(val)
			@expiry = val.to_i
		end
	end

	class KalturaSourceFileSyncDescriptor < KalturaFileSyncDescriptor
		# The translated path as used by the scheduler
		# 	 
		attr_accessor :actual_file_sync_local_path
		attr_accessor :asset_id
		attr_accessor :asset_params_id

		def asset_params_id=(val)
			@asset_params_id = val.to_i
		end
	end

	class KalturaStartWidgetSessionResponse < KalturaObjectBase
		attr_accessor :partner_id
		attr_accessor :ks
		attr_accessor :user_id

		def partner_id=(val)
			@partner_id = val.to_i
		end
	end

	# Will hold data from the Kaltura UI components to be passed on to the reports and analytics system
	#  
	class KalturaStatsEvent < KalturaObjectBase
		attr_accessor :client_ver
		attr_accessor :event_type
		# the client's timestamp of this event
		# 	 
		attr_accessor :event_timestamp
		# a unique string generated by the client that will represent the client-side session: the primary component will pass it on to other components that sprout from it
		# 	 
		attr_accessor :session_id
		attr_accessor :partner_id
		attr_accessor :entry_id
		# the UV cookie - creates in the operational system and should be passed on ofr every event 
		# 	 
		attr_accessor :unique_viewer
		attr_accessor :widget_id
		attr_accessor :uiconf_id
		# the partner's user id 
		# 	 
		attr_accessor :user_id
		# the timestamp along the video when the event happend 
		# 	 
		attr_accessor :current_point
		# the duration of the video in milliseconds - will make it much faster than quering the db for each entry 
		# 	 
		attr_accessor :duration
		# will be retrieved from the request of the user 
		# 	 
		attr_accessor :user_ip
		# the time in milliseconds the event took
		# 	 
		attr_accessor :process_duration
		# the id of the GUI control - will be used in the future to better understand what the user clicked
		# 	 
		attr_accessor :control_id
		# true if the user ever used seek in this session 
		# 	 
		attr_accessor :seek
		# timestamp of the new point on the timeline of the video after the user seeks 
		# 	 
		attr_accessor :new_point
		# the referrer of the client
		# 	 
		attr_accessor :referrer
		# will indicate if the event is thrown for the first video in the session
		# 	 
		attr_accessor :is_first_in_session
		# kaltura application name 
		# 	 
		attr_accessor :application_id
		attr_accessor :context_id
		attr_accessor :feature_type

		def event_type=(val)
			@event_type = val.to_i
		end
		def event_timestamp=(val)
			@event_timestamp = val.to_f
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def uiconf_id=(val)
			@uiconf_id = val.to_i
		end
		def current_point=(val)
			@current_point = val.to_i
		end
		def duration=(val)
			@duration = val.to_i
		end
		def process_duration=(val)
			@process_duration = val.to_i
		end
		def seek=(val)
			@seek = to_b(val)
		end
		def new_point=(val)
			@new_point = val.to_i
		end
		def is_first_in_session=(val)
			@is_first_in_session = to_b(val)
		end
		def context_id=(val)
			@context_id = val.to_i
		end
		def feature_type=(val)
			@feature_type = val.to_i
		end
	end

	# Will hold data from the Kaltura UI components to be passed on to the reports and analytics system
	#  
	class KalturaStatsKmcEvent < KalturaObjectBase
		attr_accessor :client_ver
		attr_accessor :kmc_event_action_path
		attr_accessor :kmc_event_type
		# the client's timestamp of this event
		# 	 
		attr_accessor :event_timestamp
		# a unique string generated by the client that will represent the client-side session: the primary component will pass it on to other components that sprout from it
		# 	 
		attr_accessor :session_id
		attr_accessor :partner_id
		attr_accessor :entry_id
		attr_accessor :widget_id
		attr_accessor :uiconf_id
		# the partner's user id 
		# 	 
		attr_accessor :user_id
		# will be retrieved from the request of the user 
		# 	 
		attr_accessor :user_ip

		def kmc_event_type=(val)
			@kmc_event_type = val.to_i
		end
		def event_timestamp=(val)
			@event_timestamp = val.to_f
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def uiconf_id=(val)
			@uiconf_id = val.to_i
		end
	end

	class KalturaStorageProfile < KalturaObjectBase
		attr_accessor :id
		attr_accessor :created_at
		attr_accessor :updated_at
		attr_accessor :partner_id
		attr_accessor :name
		attr_accessor :system_name
		attr_accessor :desciption
		attr_accessor :status
		attr_accessor :protocol
		attr_accessor :storage_url
		attr_accessor :storage_base_dir
		attr_accessor :storage_username
		attr_accessor :storage_password
		attr_accessor :storage_ftp_passive_mode
		attr_accessor :min_file_size
		attr_accessor :max_file_size
		attr_accessor :flavor_params_ids
		attr_accessor :max_concurrent_connections
		attr_accessor :path_manager_class
		attr_accessor :path_manager_params
		# No need to create enum for temp field
		# 	 
		attr_accessor :trigger
		# Delivery Priority
		# 	 
		attr_accessor :delivery_priority
		attr_accessor :delivery_status
		attr_accessor :ready_behavior
		# Flag sugnifying that the storage exported content should be deleted when soure entry is deleted
		# 	 
		attr_accessor :allow_auto_delete
		# Indicates to the local file transfer manager to create a link to the file instead of copying it
		# 	 
		attr_accessor :create_file_link
		# Holds storage profile export rules
		# 	 
		attr_accessor :rules
		# Delivery profile ids
		# 	 
		attr_accessor :delivery_profile_ids

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
		def storage_ftp_passive_mode=(val)
			@storage_ftp_passive_mode = to_b(val)
		end
		def min_file_size=(val)
			@min_file_size = val.to_i
		end
		def max_file_size=(val)
			@max_file_size = val.to_i
		end
		def max_concurrent_connections=(val)
			@max_concurrent_connections = val.to_i
		end
		def trigger=(val)
			@trigger = val.to_i
		end
		def delivery_priority=(val)
			@delivery_priority = val.to_i
		end
		def delivery_status=(val)
			@delivery_status = val.to_i
		end
		def ready_behavior=(val)
			@ready_behavior = val.to_i
		end
		def allow_auto_delete=(val)
			@allow_auto_delete = val.to_i
		end
		def create_file_link=(val)
			@create_file_link = to_b(val)
		end
	end

	class KalturaStorageProfileListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaSyndicationFeedEntryCount < KalturaObjectBase
		# the total count of entries that should appear in the feed without flavor filtering
		# 	 
		attr_accessor :total_entry_count
		# count of entries that will appear in the feed (including all relevant filters)
		# 	 
		attr_accessor :actual_entry_count
		# count of entries that requires transcoding in order to be included in feed
		# 	 
		attr_accessor :require_transcoding_count

		def total_entry_count=(val)
			@total_entry_count = val.to_i
		end
		def actual_entry_count=(val)
			@actual_entry_count = val.to_i
		end
		def require_transcoding_count=(val)
			@require_transcoding_count = val.to_i
		end
	end

	class KalturaThumbAsset < KalturaAsset
		# The Flavor Params used to create this Flavor Asset
		# 	 
		attr_accessor :thumb_params_id
		# The width of the Flavor Asset 
		# 	 
		attr_accessor :width
		# The height of the Flavor Asset
		# 	 
		attr_accessor :height
		# The status of the asset
		# 	 
		attr_accessor :status

		def thumb_params_id=(val)
			@thumb_params_id = val.to_i
		end
		def width=(val)
			@width = val.to_i
		end
		def height=(val)
			@height = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
	end

	class KalturaThumbAssetListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaThumbParams < KalturaAssetParams
		attr_accessor :crop_type
		attr_accessor :quality
		attr_accessor :crop_x
		attr_accessor :crop_y
		attr_accessor :crop_width
		attr_accessor :crop_height
		attr_accessor :video_offset
		attr_accessor :width
		attr_accessor :height
		attr_accessor :scale_width
		attr_accessor :scale_height
		# Hexadecimal value
		# 	 
		attr_accessor :background_color
		# Id of the flavor params or the thumbnail params to be used as source for the thumbnail creation
		# 	 
		attr_accessor :source_params_id
		# The container format of the Flavor Params
		# 	 
		attr_accessor :format
		# The image density (dpi) for example: 72 or 96
		# 	 
		attr_accessor :density
		# Strip profiles and comments
		# 	 
		attr_accessor :strip_profiles
		# Create thumbnail from the videoLengthpercentage second
		#      
		attr_accessor :video_offset_in_percentage

		def crop_type=(val)
			@crop_type = val.to_i
		end
		def quality=(val)
			@quality = val.to_i
		end
		def crop_x=(val)
			@crop_x = val.to_i
		end
		def crop_y=(val)
			@crop_y = val.to_i
		end
		def crop_width=(val)
			@crop_width = val.to_i
		end
		def crop_height=(val)
			@crop_height = val.to_i
		end
		def video_offset=(val)
			@video_offset = val.to_f
		end
		def width=(val)
			@width = val.to_i
		end
		def height=(val)
			@height = val.to_i
		end
		def scale_width=(val)
			@scale_width = val.to_f
		end
		def scale_height=(val)
			@scale_height = val.to_f
		end
		def source_params_id=(val)
			@source_params_id = val.to_i
		end
		def density=(val)
			@density = val.to_i
		end
		def strip_profiles=(val)
			@strip_profiles = to_b(val)
		end
		def video_offset_in_percentage=(val)
			@video_offset_in_percentage = val.to_i
		end
	end

	class KalturaThumbParamsListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaThumbParamsOutput < KalturaThumbParams
		attr_accessor :thumb_params_id
		attr_accessor :thumb_params_version
		attr_accessor :thumb_asset_id
		attr_accessor :thumb_asset_version
		attr_accessor :rotate

		def thumb_params_id=(val)
			@thumb_params_id = val.to_i
		end
		def rotate=(val)
			@rotate = val.to_i
		end
	end

	class KalturaThumbParamsOutputListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaThumbnailServeOptions < KalturaObjectBase
		attr_accessor :download

		def download=(val)
			@download = to_b(val)
		end
	end

	class KalturaUiConf < KalturaObjectBase
		attr_accessor :id
		# Name of the uiConf, this is not a primary key
		# 	 
		attr_accessor :name
		attr_accessor :description
		attr_accessor :partner_id
		attr_accessor :obj_type
		attr_accessor :obj_type_as_string
		attr_accessor :width
		attr_accessor :height
		attr_accessor :html_params
		attr_accessor :swf_url
		attr_accessor :conf_file_path
		attr_accessor :conf_file
		attr_accessor :conf_file_features
		attr_accessor :config
		attr_accessor :conf_vars
		attr_accessor :use_cdn
		attr_accessor :tags
		attr_accessor :swf_url_version
		# Entry creation date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :created_at
		# Entry creation date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :updated_at
		attr_accessor :creation_mode
		attr_accessor :html5url
		# UiConf version
		# 	 
		attr_accessor :version
		attr_accessor :partner_tags

		def id=(val)
			@id = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def obj_type=(val)
			@obj_type = val.to_i
		end
		def width=(val)
			@width = val.to_i
		end
		def height=(val)
			@height = val.to_i
		end
		def use_cdn=(val)
			@use_cdn = to_b(val)
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
		def creation_mode=(val)
			@creation_mode = val.to_i
		end
	end

	class KalturaUiConfListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	# Info about uiconf type
	#  
	class KalturaUiConfTypeInfo < KalturaObjectBase
		# UiConf Type
		# 	 
		attr_accessor :type
		# Available versions
		#      
		attr_accessor :versions
		# The direcotry this type is saved at
		#      
		attr_accessor :directory
		# Filename for this UiConf type
		#      
		attr_accessor :filename

		def type=(val)
			@type = val.to_i
		end
	end

	class KalturaUploadResponse < KalturaObjectBase
		attr_accessor :upload_token_id
		attr_accessor :file_size
		attr_accessor :error_code
		attr_accessor :error_description

		def file_size=(val)
			@file_size = val.to_i
		end
		def error_code=(val)
			@error_code = val.to_i
		end
	end

	class KalturaUploadToken < KalturaObjectBase
		# Upload token unique ID
		# 	 
		attr_accessor :id
		# Partner ID of the upload token
		# 	 
		attr_accessor :partner_id
		# User id for the upload token
		# 	 
		attr_accessor :user_id
		# Status of the upload token
		# 	 
		attr_accessor :status
		# Name of the file for the upload token, can be empty when the upload token is created and will be updated internally after the file is uploaded
		# 	 
		attr_accessor :file_name
		# File size in bytes, can be empty when the upload token is created and will be updated internally after the file is uploaded
		# 	 
		attr_accessor :file_size
		# Uploaded file size in bytes, can be used to identify how many bytes were uploaded before resuming
		# 	 
		attr_accessor :uploaded_file_size
		# Creation date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :created_at
		# Last update date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :updated_at

		def partner_id=(val)
			@partner_id = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
		def file_size=(val)
			@file_size = val.to_f
		end
		def uploaded_file_size=(val)
			@uploaded_file_size = val.to_f
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
	end

	class KalturaUploadTokenListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaUser < KalturaObjectBase
		attr_accessor :id
		attr_accessor :partner_id
		attr_accessor :screen_name
		attr_accessor :full_name
		attr_accessor :email
		attr_accessor :date_of_birth
		attr_accessor :country
		attr_accessor :state
		attr_accessor :city
		attr_accessor :zip
		attr_accessor :thumbnail_url
		attr_accessor :description
		attr_accessor :tags
		# Admin tags can be updated only by using an admin session
		# 	 
		attr_accessor :admin_tags
		attr_accessor :gender
		attr_accessor :status
		# Creation date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :created_at
		# Last update date as Unix timestamp (In seconds)
		# 	 
		attr_accessor :updated_at
		# Can be used to store various partner related data as a string 
		# 	 
		attr_accessor :partner_data
		attr_accessor :indexed_partner_data_int
		attr_accessor :indexed_partner_data_string
		attr_accessor :storage_size
		attr_accessor :password
		attr_accessor :first_name
		attr_accessor :last_name
		attr_accessor :is_admin
		attr_accessor :language
		attr_accessor :last_login_time
		attr_accessor :status_updated_at
		attr_accessor :deleted_at
		attr_accessor :login_enabled
		attr_accessor :role_ids
		attr_accessor :role_names
		attr_accessor :is_account_owner
		attr_accessor :allowed_partner_ids
		attr_accessor :allowed_partner_packages

		def partner_id=(val)
			@partner_id = val.to_i
		end
		def date_of_birth=(val)
			@date_of_birth = val.to_i
		end
		def gender=(val)
			@gender = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
		def indexed_partner_data_int=(val)
			@indexed_partner_data_int = val.to_i
		end
		def storage_size=(val)
			@storage_size = val.to_i
		end
		def is_admin=(val)
			@is_admin = to_b(val)
		end
		def last_login_time=(val)
			@last_login_time = val.to_i
		end
		def status_updated_at=(val)
			@status_updated_at = val.to_i
		end
		def deleted_at=(val)
			@deleted_at = val.to_i
		end
		def login_enabled=(val)
			@login_enabled = to_b(val)
		end
		def is_account_owner=(val)
			@is_account_owner = to_b(val)
		end
	end

	class KalturaUserListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaUserRole < KalturaObjectBase
		attr_accessor :id
		attr_accessor :name
		attr_accessor :system_name
		attr_accessor :description
		attr_accessor :status
		attr_accessor :partner_id
		attr_accessor :permission_names
		attr_accessor :tags
		attr_accessor :created_at
		attr_accessor :updated_at

		def id=(val)
			@id = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
	end

	class KalturaUserRoleListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaWidget < KalturaObjectBase
		attr_accessor :id
		attr_accessor :source_widget_id
		attr_accessor :root_widget_id
		attr_accessor :partner_id
		attr_accessor :entry_id
		attr_accessor :ui_conf_id
		attr_accessor :security_type
		attr_accessor :security_policy
		attr_accessor :created_at
		attr_accessor :updated_at
		# Can be used to store various partner related data as a string 
		# 	 
		attr_accessor :partner_data
		attr_accessor :widget_ht_ml
		# Should enforce entitlement on feed entries
		# 	 
		attr_accessor :enforce_entitlement
		# Set privacy context for search entries that assiged to private and public categories within a category privacy context.
		# 	 
		attr_accessor :privacy_context
		# Addes the HTML5 script line to the widget's embed code
		# 	 
		attr_accessor :add_embed_html5support

		def partner_id=(val)
			@partner_id = val.to_i
		end
		def ui_conf_id=(val)
			@ui_conf_id = val.to_i
		end
		def security_type=(val)
			@security_type = val.to_i
		end
		def security_policy=(val)
			@security_policy = val.to_i
		end
		def created_at=(val)
			@created_at = val.to_i
		end
		def updated_at=(val)
			@updated_at = val.to_i
		end
		def enforce_entitlement=(val)
			@enforce_entitlement = to_b(val)
		end
		def add_embed_html5support=(val)
			@add_embed_html5support = to_b(val)
		end
	end

	class KalturaWidgetListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaAccessControlBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :system_name_equal
		attr_accessor :system_name_in
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal

		def id_equal=(val)
			@id_equal = val.to_i
		end
		def created_at_greater_than_or_equal=(val)
			@created_at_greater_than_or_equal = val.to_i
		end
		def created_at_less_than_or_equal=(val)
			@created_at_less_than_or_equal = val.to_i
		end
	end

	class KalturaAccessControlBlockAction < KalturaRuleAction

	end

	class KalturaAccessControlLimitFlavorsAction < KalturaRuleAction
		# Comma separated list of flavor ids 
		# 	 
		attr_accessor :flavor_params_ids
		attr_accessor :is_blocked_list

		def is_blocked_list=(val)
			@is_blocked_list = to_b(val)
		end
	end

	class KalturaAccessControlPreviewAction < KalturaRuleAction
		attr_accessor :limit

		def limit=(val)
			@limit = val.to_i
		end
	end

	class KalturaAccessControlProfileBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :system_name_equal
		attr_accessor :system_name_in
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal

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
	end

	class KalturaAdminUser < KalturaUser

	end

	class KalturaAmazonS3StorageProfile < KalturaStorageProfile
		attr_accessor :files_permission_in_s3

	end

	class KalturaApiActionPermissionItem < KalturaPermissionItem
		attr_accessor :service
		attr_accessor :action

	end

	class KalturaApiParameterPermissionItem < KalturaPermissionItem
		attr_accessor :object
		attr_accessor :parameter
		attr_accessor :action

	end

	class KalturaAssetBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :entry_id_equal
		attr_accessor :entry_id_in
		attr_accessor :partner_id_equal
		attr_accessor :partner_id_in
		attr_accessor :size_greater_than_or_equal
		attr_accessor :size_less_than_or_equal
		attr_accessor :tags_like
		attr_accessor :tags_multi_like_or
		attr_accessor :tags_multi_like_and
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
		attr_accessor :deleted_at_greater_than_or_equal
		attr_accessor :deleted_at_less_than_or_equal

		def partner_id_equal=(val)
			@partner_id_equal = val.to_i
		end
		def size_greater_than_or_equal=(val)
			@size_greater_than_or_equal = val.to_i
		end
		def size_less_than_or_equal=(val)
			@size_less_than_or_equal = val.to_i
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
		def deleted_at_greater_than_or_equal=(val)
			@deleted_at_greater_than_or_equal = val.to_i
		end
		def deleted_at_less_than_or_equal=(val)
			@deleted_at_less_than_or_equal = val.to_i
		end
	end

	class KalturaAssetParamsBaseFilter < KalturaFilter
		attr_accessor :system_name_equal
		attr_accessor :system_name_in
		attr_accessor :is_system_default_equal
		attr_accessor :tags_equal

		def is_system_default_equal=(val)
			@is_system_default_equal = val.to_i
		end
	end

	class KalturaAssetParamsOutput < KalturaAssetParams
		attr_accessor :asset_params_id
		attr_accessor :asset_params_version
		attr_accessor :asset_id
		attr_accessor :asset_version
		attr_accessor :ready_behavior
		# The container format of the Flavor Params
		# 	 
		attr_accessor :format

		def asset_params_id=(val)
			@asset_params_id = val.to_i
		end
		def ready_behavior=(val)
			@ready_behavior = val.to_i
		end
	end

	class KalturaAssetPropertiesCompareCondition < KalturaCondition
		# Array of key/value objects that holds the property and the value to find and compare on an asset object
		# 	 
		attr_accessor :properties

	end

	class KalturaAssetsParamsResourceContainers < KalturaResource
		# Array of resources associated with asset params ids
		# 	 
		attr_accessor :resources

	end

	class KalturaAuthenticatedCondition < KalturaCondition
		# The privelege needed to remove the restriction
		# 	 
		attr_accessor :privileges

	end

	class KalturaBaseSyndicationFeedBaseFilter < KalturaFilter

	end

	class KalturaBatchJobBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_greater_than_or_equal
		attr_accessor :partner_id_equal
		attr_accessor :partner_id_in
		attr_accessor :partner_id_not_in
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
		attr_accessor :execution_attempts_greater_than_or_equal
		attr_accessor :execution_attempts_less_than_or_equal
		attr_accessor :lock_version_greater_than_or_equal
		attr_accessor :lock_version_less_than_or_equal
		attr_accessor :entry_id_equal
		attr_accessor :job_type_equal
		attr_accessor :job_type_in
		attr_accessor :job_type_not_in
		attr_accessor :job_sub_type_equal
		attr_accessor :job_sub_type_in
		attr_accessor :job_sub_type_not_in
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :status_not_in
		attr_accessor :priority_greater_than_or_equal
		attr_accessor :priority_less_than_or_equal
		attr_accessor :priority_equal
		attr_accessor :priority_in
		attr_accessor :priority_not_in
		attr_accessor :batch_version_greater_than_or_equal
		attr_accessor :batch_version_less_than_or_equal
		attr_accessor :batch_version_equal
		attr_accessor :queue_time_greater_than_or_equal
		attr_accessor :queue_time_less_than_or_equal
		attr_accessor :finish_time_greater_than_or_equal
		attr_accessor :finish_time_less_than_or_equal
		attr_accessor :err_type_equal
		attr_accessor :err_type_in
		attr_accessor :err_type_not_in
		attr_accessor :err_number_equal
		attr_accessor :err_number_in
		attr_accessor :err_number_not_in
		attr_accessor :estimated_effort_less_than
		attr_accessor :estimated_effort_greater_than
		attr_accessor :urgency_less_than_or_equal
		attr_accessor :urgency_greater_than_or_equal

		def id_equal=(val)
			@id_equal = val.to_i
		end
		def id_greater_than_or_equal=(val)
			@id_greater_than_or_equal = val.to_i
		end
		def partner_id_equal=(val)
			@partner_id_equal = val.to_i
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
		def execution_attempts_greater_than_or_equal=(val)
			@execution_attempts_greater_than_or_equal = val.to_i
		end
		def execution_attempts_less_than_or_equal=(val)
			@execution_attempts_less_than_or_equal = val.to_i
		end
		def lock_version_greater_than_or_equal=(val)
			@lock_version_greater_than_or_equal = val.to_i
		end
		def lock_version_less_than_or_equal=(val)
			@lock_version_less_than_or_equal = val.to_i
		end
		def job_sub_type_equal=(val)
			@job_sub_type_equal = val.to_i
		end
		def status_equal=(val)
			@status_equal = val.to_i
		end
		def priority_greater_than_or_equal=(val)
			@priority_greater_than_or_equal = val.to_i
		end
		def priority_less_than_or_equal=(val)
			@priority_less_than_or_equal = val.to_i
		end
		def priority_equal=(val)
			@priority_equal = val.to_i
		end
		def batch_version_greater_than_or_equal=(val)
			@batch_version_greater_than_or_equal = val.to_i
		end
		def batch_version_less_than_or_equal=(val)
			@batch_version_less_than_or_equal = val.to_i
		end
		def batch_version_equal=(val)
			@batch_version_equal = val.to_i
		end
		def queue_time_greater_than_or_equal=(val)
			@queue_time_greater_than_or_equal = val.to_i
		end
		def queue_time_less_than_or_equal=(val)
			@queue_time_less_than_or_equal = val.to_i
		end
		def finish_time_greater_than_or_equal=(val)
			@finish_time_greater_than_or_equal = val.to_i
		end
		def finish_time_less_than_or_equal=(val)
			@finish_time_less_than_or_equal = val.to_i
		end
		def err_type_equal=(val)
			@err_type_equal = val.to_i
		end
		def err_number_equal=(val)
			@err_number_equal = val.to_i
		end
		def estimated_effort_less_than=(val)
			@estimated_effort_less_than = val.to_i
		end
		def estimated_effort_greater_than=(val)
			@estimated_effort_greater_than = val.to_i
		end
		def urgency_less_than_or_equal=(val)
			@urgency_less_than_or_equal = val.to_i
		end
		def urgency_greater_than_or_equal=(val)
			@urgency_greater_than_or_equal = val.to_i
		end
	end

	# A boolean representation to return an array of booleans
	#  
	class KalturaBooleanValue < KalturaValue
		attr_accessor :value

		def value=(val)
			@value = to_b(val)
		end
	end

	class KalturaBulkDownloadJobData < KalturaJobData
		# Comma separated list of entry ids
		# 	 
		attr_accessor :entry_ids
		# Flavor params id to use for conversion
		# 	 
		attr_accessor :flavor_params_id
		# The id of the requesting user
		# 	 
		attr_accessor :puser_id

		def flavor_params_id=(val)
			@flavor_params_id = val.to_i
		end
	end

	class KalturaBulkUploadBaseFilter < KalturaFilter
		attr_accessor :uploaded_on_greater_than_or_equal
		attr_accessor :uploaded_on_less_than_or_equal
		attr_accessor :uploaded_on_equal
		attr_accessor :status_in
		attr_accessor :status_equal
		attr_accessor :bulk_upload_object_type_equal
		attr_accessor :bulk_upload_object_type_in

		def uploaded_on_greater_than_or_equal=(val)
			@uploaded_on_greater_than_or_equal = val.to_i
		end
		def uploaded_on_less_than_or_equal=(val)
			@uploaded_on_less_than_or_equal = val.to_i
		end
		def uploaded_on_equal=(val)
			@uploaded_on_equal = val.to_i
		end
		def status_equal=(val)
			@status_equal = val.to_i
		end
	end

	# This class represents object-specific data passed to the 
	#  bulk upload job.
	#  
	class KalturaBulkUploadCategoryData < KalturaBulkUploadObjectData

	end

	# This class represents object-specific data passed to the 
	#  bulk upload job.
	#  
	class KalturaBulkUploadCategoryEntryData < KalturaBulkUploadObjectData

	end

	# This class represents object-specific data passed to the 
	#  bulk upload job.
	#  
	class KalturaBulkUploadCategoryUserData < KalturaBulkUploadObjectData

	end

	# This class represents object-specific data passed to the 
	#  bulk upload job.
	#  
	class KalturaBulkUploadEntryData < KalturaBulkUploadObjectData
		# Selected profile id for all bulk entries
		#      
		attr_accessor :conversion_profile_id

		def conversion_profile_id=(val)
			@conversion_profile_id = val.to_i
		end
	end

	class KalturaBulkUploadJobData < KalturaJobData
		attr_accessor :user_id
		# The screen name of the user
		# 	 
		attr_accessor :uploaded_by
		# Selected profile id for all bulk entries
		# 	 
		attr_accessor :conversion_profile_id
		# Created by the API
		# 	 
		attr_accessor :results_file_local_path
		# Created by the API
		# 	 
		attr_accessor :results_file_url
		# Number of created entries
		# 	 
		attr_accessor :num_of_entries
		# Number of created objects
		# 	 
		attr_accessor :num_of_objects
		# The bulk upload file path
		# 	 
		attr_accessor :file_path
		# Type of object for bulk upload
		# 	 
		attr_accessor :bulk_upload_object_type
		# Friendly name of the file, used to be recognized later in the logs.
		# 	 
		attr_accessor :file_name
		# Data pertaining to the objects being uploaded
		# 	 
		attr_accessor :object_data
		# Type of bulk upload
		# 	 
		attr_accessor :type
		# Recipients of the email for bulk upload success/failure
		# 	 
		attr_accessor :email_recipients
		# Number of objects that finished on error status
		# 	 
		attr_accessor :num_of_error_objects

		def conversion_profile_id=(val)
			@conversion_profile_id = val.to_i
		end
		def num_of_entries=(val)
			@num_of_entries = val.to_i
		end
		def num_of_objects=(val)
			@num_of_objects = val.to_i
		end
		def num_of_error_objects=(val)
			@num_of_error_objects = val.to_i
		end
	end

	class KalturaBulkUploadResultCategory < KalturaBulkUploadResult
		attr_accessor :relative_path
		attr_accessor :name
		attr_accessor :reference_id
		attr_accessor :description
		attr_accessor :tags
		attr_accessor :appear_in_list
		attr_accessor :privacy
		attr_accessor :inheritance_type
		attr_accessor :user_join_policy
		attr_accessor :default_permission_level
		attr_accessor :owner
		attr_accessor :contribution_policy
		attr_accessor :partner_sort_value
		attr_accessor :moderation

		def appear_in_list=(val)
			@appear_in_list = val.to_i
		end
		def privacy=(val)
			@privacy = val.to_i
		end
		def inheritance_type=(val)
			@inheritance_type = val.to_i
		end
		def user_join_policy=(val)
			@user_join_policy = val.to_i
		end
		def default_permission_level=(val)
			@default_permission_level = val.to_i
		end
		def contribution_policy=(val)
			@contribution_policy = val.to_i
		end
		def partner_sort_value=(val)
			@partner_sort_value = val.to_i
		end
		def moderation=(val)
			@moderation = to_b(val)
		end
	end

	class KalturaBulkUploadResultCategoryEntry < KalturaBulkUploadResult
		attr_accessor :category_id
		attr_accessor :entry_id

		def category_id=(val)
			@category_id = val.to_i
		end
	end

	class KalturaBulkUploadResultCategoryUser < KalturaBulkUploadResult
		attr_accessor :category_id
		attr_accessor :category_reference_id
		attr_accessor :user_id
		attr_accessor :permission_level
		attr_accessor :update_method
		attr_accessor :required_object_status

		def category_id=(val)
			@category_id = val.to_i
		end
		def permission_level=(val)
			@permission_level = val.to_i
		end
		def update_method=(val)
			@update_method = val.to_i
		end
		def required_object_status=(val)
			@required_object_status = val.to_i
		end
	end

	class KalturaBulkUploadResultEntry < KalturaBulkUploadResult
		attr_accessor :entry_id
		attr_accessor :title
		attr_accessor :description
		attr_accessor :tags
		attr_accessor :url
		attr_accessor :content_type
		attr_accessor :conversion_profile_id
		attr_accessor :access_control_profile_id
		attr_accessor :category
		attr_accessor :schedule_start_date
		attr_accessor :schedule_end_date
		attr_accessor :entry_status
		attr_accessor :thumbnail_url
		attr_accessor :thumbnail_saved
		attr_accessor :ssh_private_key
		attr_accessor :ssh_public_key
		attr_accessor :ssh_key_passphrase
		attr_accessor :creator_id
		attr_accessor :entitled_users_edit
		attr_accessor :entitled_users_publish
		attr_accessor :owner_id

		def conversion_profile_id=(val)
			@conversion_profile_id = val.to_i
		end
		def access_control_profile_id=(val)
			@access_control_profile_id = val.to_i
		end
		def schedule_start_date=(val)
			@schedule_start_date = val.to_i
		end
		def schedule_end_date=(val)
			@schedule_end_date = val.to_i
		end
		def entry_status=(val)
			@entry_status = val.to_i
		end
		def thumbnail_saved=(val)
			@thumbnail_saved = to_b(val)
		end
	end

	class KalturaBulkUploadResultUser < KalturaBulkUploadResult
		attr_accessor :user_id
		attr_accessor :screen_name
		attr_accessor :email
		attr_accessor :description
		attr_accessor :tags
		attr_accessor :date_of_birth
		attr_accessor :country
		attr_accessor :state
		attr_accessor :city
		attr_accessor :zip
		attr_accessor :gender
		attr_accessor :first_name
		attr_accessor :last_name

		def date_of_birth=(val)
			@date_of_birth = val.to_i
		end
		def gender=(val)
			@gender = val.to_i
		end
	end

	# This class represents object-specific data passed to the 
	#  bulk upload job.
	#  
	class KalturaBulkUploadUserData < KalturaBulkUploadObjectData

	end

	class KalturaCaptureThumbJobData < KalturaJobData
		attr_accessor :src_file_sync_local_path
		# The translated path as used by the scheduler
		# 	 
		attr_accessor :actual_src_file_sync_local_path
		attr_accessor :src_file_sync_remote_url
		attr_accessor :thumb_params_output_id
		attr_accessor :thumb_asset_id
		attr_accessor :src_asset_id
		attr_accessor :src_asset_type
		attr_accessor :thumb_path

		def thumb_params_output_id=(val)
			@thumb_params_output_id = val.to_i
		end
	end

	class KalturaCategoryBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :parent_id_equal
		attr_accessor :parent_id_in
		attr_accessor :depth_equal
		attr_accessor :full_name_equal
		attr_accessor :full_name_starts_with
		attr_accessor :full_name_in
		attr_accessor :full_ids_equal
		attr_accessor :full_ids_starts_with
		attr_accessor :full_ids_match_or
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
		attr_accessor :tags_like
		attr_accessor :tags_multi_like_or
		attr_accessor :tags_multi_like_and
		attr_accessor :appear_in_list_equal
		attr_accessor :privacy_equal
		attr_accessor :privacy_in
		attr_accessor :inheritance_type_equal
		attr_accessor :inheritance_type_in
		attr_accessor :reference_id_equal
		attr_accessor :reference_id_empty
		attr_accessor :contribution_policy_equal
		attr_accessor :members_count_greater_than_or_equal
		attr_accessor :members_count_less_than_or_equal
		attr_accessor :pending_members_count_greater_than_or_equal
		attr_accessor :pending_members_count_less_than_or_equal
		attr_accessor :privacy_context_equal
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :inherited_parent_id_equal
		attr_accessor :inherited_parent_id_in
		attr_accessor :partner_sort_value_greater_than_or_equal
		attr_accessor :partner_sort_value_less_than_or_equal

		def id_equal=(val)
			@id_equal = val.to_i
		end
		def parent_id_equal=(val)
			@parent_id_equal = val.to_i
		end
		def depth_equal=(val)
			@depth_equal = val.to_i
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
		def appear_in_list_equal=(val)
			@appear_in_list_equal = val.to_i
		end
		def privacy_equal=(val)
			@privacy_equal = val.to_i
		end
		def inheritance_type_equal=(val)
			@inheritance_type_equal = val.to_i
		end
		def reference_id_empty=(val)
			@reference_id_empty = val.to_i
		end
		def contribution_policy_equal=(val)
			@contribution_policy_equal = val.to_i
		end
		def members_count_greater_than_or_equal=(val)
			@members_count_greater_than_or_equal = val.to_i
		end
		def members_count_less_than_or_equal=(val)
			@members_count_less_than_or_equal = val.to_i
		end
		def pending_members_count_greater_than_or_equal=(val)
			@pending_members_count_greater_than_or_equal = val.to_i
		end
		def pending_members_count_less_than_or_equal=(val)
			@pending_members_count_less_than_or_equal = val.to_i
		end
		def status_equal=(val)
			@status_equal = val.to_i
		end
		def inherited_parent_id_equal=(val)
			@inherited_parent_id_equal = val.to_i
		end
		def partner_sort_value_greater_than_or_equal=(val)
			@partner_sort_value_greater_than_or_equal = val.to_i
		end
		def partner_sort_value_less_than_or_equal=(val)
			@partner_sort_value_less_than_or_equal = val.to_i
		end
	end

	class KalturaCategoryEntryAdvancedFilter < KalturaSearchItem
		attr_accessor :categories_match_or
		attr_accessor :category_entry_status_in
		attr_accessor :order_by
		attr_accessor :category_id_equal

		def category_id_equal=(val)
			@category_id_equal = val.to_i
		end
	end

	class KalturaCategoryEntryBaseFilter < KalturaFilter
		attr_accessor :category_id_equal
		attr_accessor :category_id_in
		attr_accessor :entry_id_equal
		attr_accessor :entry_id_in
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :category_full_ids_starts_with
		attr_accessor :status_equal
		attr_accessor :status_in

		def category_id_equal=(val)
			@category_id_equal = val.to_i
		end
		def created_at_greater_than_or_equal=(val)
			@created_at_greater_than_or_equal = val.to_i
		end
		def created_at_less_than_or_equal=(val)
			@created_at_less_than_or_equal = val.to_i
		end
		def status_equal=(val)
			@status_equal = val.to_i
		end
	end

	class KalturaCategoryIdentifier < KalturaObjectIdentifier
		# Identifier of the object
		# 	 
		attr_accessor :identifier

	end

	class KalturaCategoryUserAdvancedFilter < KalturaSearchItem
		attr_accessor :member_id_eq
		attr_accessor :member_id_in
		attr_accessor :member_permissions_match_or
		attr_accessor :member_permissions_match_and

	end

	class KalturaCategoryUserBaseFilter < KalturaFilter
		attr_accessor :category_id_equal
		attr_accessor :category_id_in
		attr_accessor :user_id_equal
		attr_accessor :user_id_in
		attr_accessor :permission_level_equal
		attr_accessor :permission_level_in
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
		attr_accessor :update_method_equal
		attr_accessor :update_method_in
		attr_accessor :category_full_ids_starts_with
		attr_accessor :category_full_ids_equal
		attr_accessor :permission_names_match_and
		attr_accessor :permission_names_match_or
		attr_accessor :permission_names_not_contains

		def category_id_equal=(val)
			@category_id_equal = val.to_i
		end
		def permission_level_equal=(val)
			@permission_level_equal = val.to_i
		end
		def status_equal=(val)
			@status_equal = val.to_i
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
		def update_method_equal=(val)
			@update_method_equal = val.to_i
		end
	end

	# Clip operation attributes
	#  
	class KalturaClipAttributes < KalturaOperationAttributes
		# Offset in milliseconds
		# 	 
		attr_accessor :offset
		# Duration in milliseconds
		# 	 
		attr_accessor :duration

		def offset=(val)
			@offset = val.to_i
		end
		def duration=(val)
			@duration = val.to_i
		end
	end

	class KalturaCompareCondition < KalturaCondition
		# Value to evaluate against the field and operator
		# 	 
		attr_accessor :value
		# Comparing operator
		# 	 
		attr_accessor :comparison

	end

	class KalturaDataCenterContentResource < KalturaContentResource

	end

	# Concat operation attributes
	#  
	class KalturaConcatAttributes < KalturaOperationAttributes
		# The resource to be concatenated
		# 	 
		attr_accessor :resource

	end

	class KalturaConcatJobData < KalturaJobData
		# Source files to be concatenated
		# 	 
		attr_accessor :src_files
		# Output file
		# 	 
		attr_accessor :dest_file_path
		# Flavor asset to be ingested with the output
		# 	 
		attr_accessor :flavor_asset_id
		# Clipping offset in seconds
		# 	 
		attr_accessor :offset
		# Clipping duration in seconds
		# 	 
		attr_accessor :duration

		def offset=(val)
			@offset = val.to_f
		end
		def duration=(val)
			@duration = val.to_f
		end
	end

	class KalturaControlPanelCommandBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :created_by_id_equal
		attr_accessor :type_equal
		attr_accessor :type_in
		attr_accessor :target_type_equal
		attr_accessor :target_type_in
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
		def created_by_id_equal=(val)
			@created_by_id_equal = val.to_i
		end
		def type_equal=(val)
			@type_equal = val.to_i
		end
		def target_type_equal=(val)
			@target_type_equal = val.to_i
		end
		def status_equal=(val)
			@status_equal = val.to_i
		end
	end

	class KalturaConvartableJobData < KalturaJobData
		attr_accessor :src_file_sync_local_path
		# The translated path as used by the scheduler
		# 	 
		attr_accessor :actual_src_file_sync_local_path
		attr_accessor :src_file_sync_remote_url
		attr_accessor :src_file_syncs
		attr_accessor :engine_version
		attr_accessor :flavor_params_output_id
		attr_accessor :flavor_params_output
		attr_accessor :media_info_id
		attr_accessor :current_operation_set
		attr_accessor :current_operation_index
		attr_accessor :plugin_data

		def engine_version=(val)
			@engine_version = val.to_i
		end
		def flavor_params_output_id=(val)
			@flavor_params_output_id = val.to_i
		end
		def media_info_id=(val)
			@media_info_id = val.to_i
		end
		def current_operation_set=(val)
			@current_operation_set = val.to_i
		end
		def current_operation_index=(val)
			@current_operation_index = val.to_i
		end
	end

	class KalturaConversionProfileAssetParamsBaseFilter < KalturaFilter
		attr_accessor :conversion_profile_id_equal
		attr_accessor :conversion_profile_id_in
		attr_accessor :asset_params_id_equal
		attr_accessor :asset_params_id_in
		attr_accessor :ready_behavior_equal
		attr_accessor :ready_behavior_in
		attr_accessor :origin_equal
		attr_accessor :origin_in
		attr_accessor :system_name_equal
		attr_accessor :system_name_in

		def conversion_profile_id_equal=(val)
			@conversion_profile_id_equal = val.to_i
		end
		def asset_params_id_equal=(val)
			@asset_params_id_equal = val.to_i
		end
		def ready_behavior_equal=(val)
			@ready_behavior_equal = val.to_i
		end
		def origin_equal=(val)
			@origin_equal = val.to_i
		end
	end

	class KalturaConversionProfileBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :type_equal
		attr_accessor :type_in
		attr_accessor :name_equal
		attr_accessor :system_name_equal
		attr_accessor :system_name_in
		attr_accessor :tags_multi_like_or
		attr_accessor :tags_multi_like_and
		attr_accessor :default_entry_id_equal
		attr_accessor :default_entry_id_in

		def id_equal=(val)
			@id_equal = val.to_i
		end
	end

	class KalturaConvertLiveSegmentJobData < KalturaJobData
		# Live stream entry id
		# 	 
		attr_accessor :entry_id
		attr_accessor :asset_id
		# Primary or secondary media server
		# 	 
		attr_accessor :media_server_index
		# The index of the file within the entry
		# 	 
		attr_accessor :file_index
		# The recorded live media
		# 	 
		attr_accessor :src_file_path
		# The output file
		# 	 
		attr_accessor :dest_file_path
		# Duration of the live entry including all recorded segments including the current
		# 	 
		attr_accessor :end_time

		def media_server_index=(val)
			@media_server_index = val.to_i
		end
		def file_index=(val)
			@file_index = val.to_i
		end
		def end_time=(val)
			@end_time = val.to_f
		end
	end

	class KalturaConvertProfileJobData < KalturaJobData
		attr_accessor :input_file_sync_local_path
		# The height of last created thumbnail, will be used to comapare if this thumbnail is the best we can have
		# 	 
		attr_accessor :thumb_height
		# The bit rate of last created thumbnail, will be used to comapare if this thumbnail is the best we can have
		# 	 
		attr_accessor :thumb_bitrate

		def thumb_height=(val)
			@thumb_height = val.to_i
		end
		def thumb_bitrate=(val)
			@thumb_bitrate = val.to_i
		end
	end

	class KalturaCopyPartnerJobData < KalturaJobData
		# Id of the partner to copy from
		# 	 
		attr_accessor :from_partner_id
		# Id of the partner to copy to
		# 	 
		attr_accessor :to_partner_id

		def from_partner_id=(val)
			@from_partner_id = val.to_i
		end
		def to_partner_id=(val)
			@to_partner_id = val.to_i
		end
	end

	class KalturaCountryRestriction < KalturaBaseRestriction
		# Country restriction type (Allow or deny)
		# 	 
		attr_accessor :country_restriction_type
		# Comma separated list of country codes to allow to deny 
		# 	 
		attr_accessor :country_list

		def country_restriction_type=(val)
			@country_restriction_type = val.to_i
		end
	end

	class KalturaDeleteFileJobData < KalturaJobData
		attr_accessor :local_file_sync_path

	end

	class KalturaDeleteJobData < KalturaJobData
		# The filter should return the list of objects that need to be deleted.
		# 	 
		attr_accessor :filter

	end

	class KalturaDeliveryProfileAkamaiAppleHttpManifest < KalturaDeliveryProfile
		# Should we use timing parameters - clipTo / seekFrom
		# 	 
		attr_accessor :support_clipping

		def support_clipping=(val)
			@support_clipping = to_b(val)
		end
	end

	class KalturaDeliveryProfileAkamaiHds < KalturaDeliveryProfile
		# Should we use timing parameters - clipTo / seekFrom
		# 	 
		attr_accessor :support_clipping

		def support_clipping=(val)
			@support_clipping = to_b(val)
		end
	end

	class KalturaDeliveryProfileAkamaiHttp < KalturaDeliveryProfile
		# Should we use intelliseek
		# 	 
		attr_accessor :use_intelliseek

		def use_intelliseek=(val)
			@use_intelliseek = to_b(val)
		end
	end

	class KalturaDeliveryProfileBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :partner_id_equal
		attr_accessor :partner_id_in
		attr_accessor :system_name_equal
		attr_accessor :system_name_in
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
		attr_accessor :streamer_type_equal
		attr_accessor :status_equal
		attr_accessor :status_in

		def id_equal=(val)
			@id_equal = val.to_i
		end
		def partner_id_equal=(val)
			@partner_id_equal = val.to_i
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

	class KalturaDeliveryProfileGenericAppleHttp < KalturaDeliveryProfile
		attr_accessor :pattern
		# rendererClass
		# 	 
		attr_accessor :renderer_class
		# Enable to make playManifest redirect to the domain of the delivery profile
		# 	 
		attr_accessor :manifest_redirect

		def manifest_redirect=(val)
			@manifest_redirect = val.to_i
		end
	end

	class KalturaDeliveryProfileGenericHds < KalturaDeliveryProfile
		attr_accessor :pattern
		# rendererClass
		# 	 
		attr_accessor :renderer_class

	end

	class KalturaDeliveryProfileGenericHttp < KalturaDeliveryProfile
		attr_accessor :pattern

	end

	class KalturaDeliveryProfileGenericSilverLight < KalturaDeliveryProfile
		attr_accessor :pattern

	end

	class KalturaDeliveryProfileLiveAppleHttp < KalturaDeliveryProfile
		attr_accessor :disable_extra_attributes
		attr_accessor :force_proxy

		def disable_extra_attributes=(val)
			@disable_extra_attributes = to_b(val)
		end
		def force_proxy=(val)
			@force_proxy = to_b(val)
		end
	end

	class KalturaDeliveryProfileRtmp < KalturaDeliveryProfile
		# enforceRtmpe
		# 	 
		attr_accessor :enforce_rtmpe
		# a prefix that is added to all stream urls (replaces storageProfile::rtmpPrefix)
		# 	 
		attr_accessor :prefix

		def enforce_rtmpe=(val)
			@enforce_rtmpe = to_b(val)
		end
	end

	class KalturaDirectoryRestriction < KalturaBaseRestriction
		# Kaltura directory restriction type
		# 	 
		attr_accessor :directory_restriction_type

		def directory_restriction_type=(val)
			@directory_restriction_type = val.to_i
		end
	end

	class KalturaCategoryUserFilter < KalturaCategoryUserBaseFilter
		# Return the list of categoryUser that are not inherited from parent category - only the direct categoryUsers.
		# 	 
		attr_accessor :category_direct_members
		# Free text search on user id or screen name
		# 	 
		attr_accessor :free_text

		def category_direct_members=(val)
			@category_direct_members = to_b(val)
		end
	end

	class KalturaUserBaseFilter < KalturaFilter
		attr_accessor :partner_id_equal
		attr_accessor :screen_name_like
		attr_accessor :screen_name_starts_with
		attr_accessor :email_like
		attr_accessor :email_starts_with
		attr_accessor :tags_multi_like_or
		attr_accessor :tags_multi_like_and
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :first_name_starts_with
		attr_accessor :last_name_starts_with
		attr_accessor :is_admin_equal

		def partner_id_equal=(val)
			@partner_id_equal = val.to_i
		end
		def status_equal=(val)
			@status_equal = val.to_i
		end
		def created_at_greater_than_or_equal=(val)
			@created_at_greater_than_or_equal = val.to_i
		end
		def created_at_less_than_or_equal=(val)
			@created_at_less_than_or_equal = val.to_i
		end
		def is_admin_equal=(val)
			@is_admin_equal = val.to_i
		end
	end

	class KalturaUserFilter < KalturaUserBaseFilter
		attr_accessor :id_or_screen_name_starts_with
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :login_enabled_equal
		attr_accessor :role_id_equal
		attr_accessor :role_ids_equal
		attr_accessor :role_ids_in
		attr_accessor :first_name_or_last_name_starts_with
		# Permission names filter expression
		# 	 
		attr_accessor :permission_names_multi_like_or
		# Permission names filter expression
		# 	 
		attr_accessor :permission_names_multi_like_and

		def login_enabled_equal=(val)
			@login_enabled_equal = val.to_i
		end
	end

	class KalturaEntryContext < KalturaContext
		# The entry ID in the context of which the playlist should be built
		#      
		attr_accessor :entry_id
		# Is this a redirected entry followup?
		#      
		attr_accessor :follow_entry_redirect

		def follow_entry_redirect=(val)
			@follow_entry_redirect = val.to_i
		end
	end

	# Object which contains contextual entry-related data.
	#  
	class KalturaEntryContextDataParams < KalturaAccessControlScope
		# Id of the current flavor.
		# 	 
		attr_accessor :flavor_asset_id
		# The tags of the flavors that should be used for playback.
		# 	 
		attr_accessor :flavor_tags
		# Playback streamer type: RTMP, HTTP, appleHttps, rtsp, sl.
		# 	 
		attr_accessor :streamer_type
		# Protocol of the specific media object.
		# 	 
		attr_accessor :media_protocol

	end

	class KalturaEntryContextDataResult < KalturaContextDataResult
		attr_accessor :is_site_restricted
		attr_accessor :is_country_restricted
		attr_accessor :is_session_restricted
		attr_accessor :is_ip_address_restricted
		attr_accessor :is_user_agent_restricted
		attr_accessor :preview_length
		attr_accessor :is_scheduled_now
		attr_accessor :is_admin
		# http/rtmp/hdnetwork
		# 	 
		attr_accessor :streamer_type
		# http/https, rtmp/rtmpe
		# 	 
		attr_accessor :media_protocol
		attr_accessor :storage_profiles_xml
		# Array of messages as received from the access control rules that invalidated
		# 	 
		attr_accessor :access_control_messages
		# Array of actions as received from the access control rules that invalidated
		# 	 
		attr_accessor :access_control_actions
		# Array of allowed flavor assets according to access control limitations and requested tags
		# 	 
		attr_accessor :flavor_assets

		def is_site_restricted=(val)
			@is_site_restricted = to_b(val)
		end
		def is_country_restricted=(val)
			@is_country_restricted = to_b(val)
		end
		def is_session_restricted=(val)
			@is_session_restricted = to_b(val)
		end
		def is_ip_address_restricted=(val)
			@is_ip_address_restricted = to_b(val)
		end
		def is_user_agent_restricted=(val)
			@is_user_agent_restricted = to_b(val)
		end
		def preview_length=(val)
			@preview_length = val.to_i
		end
		def is_scheduled_now=(val)
			@is_scheduled_now = to_b(val)
		end
		def is_admin=(val)
			@is_admin = to_b(val)
		end
	end

	class KalturaEntryIdentifier < KalturaObjectIdentifier
		# Identifier of the object
		# 	 
		attr_accessor :identifier

	end

	class KalturaEntryLiveStats < KalturaLiveStats
		attr_accessor :entry_id
		attr_accessor :peak_audience

		def peak_audience=(val)
			@peak_audience = val.to_i
		end
	end

	# A boolean representation to return evaluated dynamic value
	#  
	class KalturaBooleanField < KalturaBooleanValue

	end

	class KalturaFileAssetBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :partner_id_equal
		attr_accessor :file_asset_object_type_equal
		attr_accessor :object_id_equal
		attr_accessor :object_id_in
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
		attr_accessor :status_equal
		attr_accessor :status_in

		def id_equal=(val)
			@id_equal = val.to_i
		end
		def partner_id_equal=(val)
			@partner_id_equal = val.to_i
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

	class KalturaFlattenJobData < KalturaJobData

	end

	class KalturaGenericSyndicationFeed < KalturaBaseSyndicationFeed
		# feed description
		#     
		attr_accessor :feed_description
		# feed landing page (i.e publisher website)
		# 	
		attr_accessor :feed_landing_page

	end

	class KalturaGoogleVideoSyndicationFeed < KalturaBaseSyndicationFeed
		attr_accessor :adult_content

	end

	class KalturaITunesSyndicationFeed < KalturaBaseSyndicationFeed
		# feed description
		#          
		attr_accessor :feed_description
		# feed language
		#          
		attr_accessor :language
		# feed landing page (i.e publisher website)
		#          
		attr_accessor :feed_landing_page
		# author/publisher name
		#          
		attr_accessor :owner_name
		# publisher email
		#          
		attr_accessor :owner_email
		# podcast thumbnail
		#          
		attr_accessor :feed_image_url
		attr_accessor :category
		attr_accessor :adult_content
		attr_accessor :feed_author
		# true in case you want to enfore the palylist order on the 
		# 		 
		attr_accessor :enforce_order

		def enforce_order=(val)
			@enforce_order = val.to_i
		end
	end

	class KalturaImportJobData < KalturaJobData
		attr_accessor :src_file_url
		attr_accessor :dest_file_local_path
		attr_accessor :flavor_asset_id
		attr_accessor :file_size

		def file_size=(val)
			@file_size = val.to_i
		end
	end

	class KalturaIndexAdvancedFilter < KalturaSearchItem
		attr_accessor :index_id_greater_than

		def index_id_greater_than=(val)
			@index_id_greater_than = val.to_i
		end
	end

	class KalturaIndexJobData < KalturaJobData
		# The filter should return the list of objects that need to be reindexed.
		# 	 
		attr_accessor :filter
		# Indicates the last id that reindexed, used when the batch crached, to re-run from the last crash point.
		# 	 
		attr_accessor :last_index_id
		# Indicates that the object columns and attributes values should be recalculated before reindexed.
		# 	 
		attr_accessor :should_update

		def last_index_id=(val)
			@last_index_id = val.to_i
		end
		def should_update=(val)
			@should_update = to_b(val)
		end
	end

	class KalturaIpAddressRestriction < KalturaBaseRestriction
		# Ip address restriction type (Allow or deny)
		# 	 
		attr_accessor :ip_address_restriction_type
		# Comma separated list of ip address to allow to deny 
		# 	 
		attr_accessor :ip_address_list

		def ip_address_restriction_type=(val)
			@ip_address_restriction_type = val.to_i
		end
	end

	class KalturaLimitFlavorsRestriction < KalturaBaseRestriction
		# Limit flavors restriction type (Allow or deny)
		# 	 
		attr_accessor :limit_flavors_restriction_type
		# Comma separated list of flavor params ids to allow to deny 
		# 	 
		attr_accessor :flavor_params_ids

		def limit_flavors_restriction_type=(val)
			@limit_flavors_restriction_type = val.to_i
		end
	end

	class KalturaLiveChannelSegmentBaseFilter < KalturaFilter
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :channel_id_equal
		attr_accessor :channel_id_in
		attr_accessor :start_time_greater_than_or_equal
		attr_accessor :start_time_less_than_or_equal

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
		def start_time_greater_than_or_equal=(val)
			@start_time_greater_than_or_equal = val.to_f
		end
		def start_time_less_than_or_equal=(val)
			@start_time_less_than_or_equal = val.to_f
		end
	end

	class KalturaLiveReportExportJobData < KalturaJobData
		attr_accessor :time_reference
		attr_accessor :time_zone_offset
		attr_accessor :entry_ids
		attr_accessor :output_path
		attr_accessor :recipient_email

		def time_reference=(val)
			@time_reference = val.to_i
		end
		def time_zone_offset=(val)
			@time_zone_offset = val.to_i
		end
	end

	# A representation of an RTMP live stream configuration
	#  
	class KalturaLiveStreamPushPublishRTMPConfiguration < KalturaLiveStreamPushPublishConfiguration
		attr_accessor :user_id
		attr_accessor :password
		attr_accessor :stream_name
		attr_accessor :application_name

	end

	class KalturaMailJobData < KalturaJobData
		attr_accessor :mail_type
		attr_accessor :mail_priority
		attr_accessor :status
		attr_accessor :recipient_name
		attr_accessor :recipient_email
		# kuserId  
		# 	 
		attr_accessor :recipient_id
		attr_accessor :from_name
		attr_accessor :from_email
		attr_accessor :body_params
		attr_accessor :subject_params
		attr_accessor :template_path
		attr_accessor :language
		attr_accessor :campaign_id
		attr_accessor :min_send_date
		attr_accessor :is_html
		attr_accessor :separator

		def mail_priority=(val)
			@mail_priority = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
		def recipient_id=(val)
			@recipient_id = val.to_i
		end
		def campaign_id=(val)
			@campaign_id = val.to_i
		end
		def min_send_date=(val)
			@min_send_date = val.to_i
		end
		def is_html=(val)
			@is_html = to_b(val)
		end
	end

	class KalturaMatchCondition < KalturaCondition
		attr_accessor :values

	end

	class KalturaMediaInfoBaseFilter < KalturaFilter
		attr_accessor :flavor_asset_id_equal

	end

	class KalturaMediaServerBaseFilter < KalturaFilter
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal

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

	class KalturaMoveCategoryEntriesJobData < KalturaJobData
		# Source category id
		# 	 
		attr_accessor :src_category_id
		# Destination category id
		#      
		attr_accessor :dest_category_id
		# Saves the last category id that its entries moved completely
		#      In case of crash the batch will restart from that point
		#      
		attr_accessor :last_moved_category_id
		# Saves the last page index of the child categories filter pager
		#      In case of crash the batch will restart from that point
		#      
		attr_accessor :last_moved_category_page_index
		# Saves the last page index of the category entries filter pager
		#      In case of crash the batch will restart from that point
		#      
		attr_accessor :last_moved_category_entry_page_index
		# All entries from all child categories will be moved as well
		#      
		attr_accessor :move_from_children
		# Entries won't be deleted from the source entry
		#      
		attr_accessor :copy_only
		# Destination categories fallback ids
		#      
		attr_accessor :dest_category_full_ids

		def src_category_id=(val)
			@src_category_id = val.to_i
		end
		def dest_category_id=(val)
			@dest_category_id = val.to_i
		end
		def last_moved_category_id=(val)
			@last_moved_category_id = val.to_i
		end
		def last_moved_category_page_index=(val)
			@last_moved_category_page_index = val.to_i
		end
		def last_moved_category_entry_page_index=(val)
			@last_moved_category_entry_page_index = val.to_i
		end
		def move_from_children=(val)
			@move_from_children = to_b(val)
		end
		def copy_only=(val)
			@copy_only = to_b(val)
		end
	end

	class KalturaNotificationJobData < KalturaJobData
		attr_accessor :user_id
		attr_accessor :type
		attr_accessor :type_as_string
		attr_accessor :object_id
		attr_accessor :status
		attr_accessor :data
		attr_accessor :number_of_attempts
		attr_accessor :notification_result
		attr_accessor :obj_type

		def type=(val)
			@type = val.to_i
		end
		def status=(val)
			@status = val.to_i
		end
		def number_of_attempts=(val)
			@number_of_attempts = val.to_i
		end
		def obj_type=(val)
			@obj_type = val.to_i
		end
	end

	class KalturaPartnerBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :id_not_in
		attr_accessor :name_like
		attr_accessor :name_multi_like_or
		attr_accessor :name_multi_like_and
		attr_accessor :name_equal
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :partner_package_equal
		attr_accessor :partner_package_greater_than_or_equal
		attr_accessor :partner_package_less_than_or_equal
		attr_accessor :partner_group_type_equal
		attr_accessor :partner_name_description_website_admin_name_admin_email_like

		def id_equal=(val)
			@id_equal = val.to_i
		end
		def status_equal=(val)
			@status_equal = val.to_i
		end
		def partner_package_equal=(val)
			@partner_package_equal = val.to_i
		end
		def partner_package_greater_than_or_equal=(val)
			@partner_package_greater_than_or_equal = val.to_i
		end
		def partner_package_less_than_or_equal=(val)
			@partner_package_less_than_or_equal = val.to_i
		end
		def partner_group_type_equal=(val)
			@partner_group_type_equal = val.to_i
		end
	end

	class KalturaPermissionBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :type_equal
		attr_accessor :type_in
		attr_accessor :name_equal
		attr_accessor :name_in
		attr_accessor :friendly_name_like
		attr_accessor :description_like
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :partner_id_equal
		attr_accessor :partner_id_in
		attr_accessor :depends_on_permission_names_multi_like_or
		attr_accessor :depends_on_permission_names_multi_like_and
		attr_accessor :tags_multi_like_or
		attr_accessor :tags_multi_like_and
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal

		def id_equal=(val)
			@id_equal = val.to_i
		end
		def type_equal=(val)
			@type_equal = val.to_i
		end
		def status_equal=(val)
			@status_equal = val.to_i
		end
		def partner_id_equal=(val)
			@partner_id_equal = val.to_i
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

	class KalturaPermissionItemBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :type_equal
		attr_accessor :type_in
		attr_accessor :partner_id_equal
		attr_accessor :partner_id_in
		attr_accessor :tags_multi_like_or
		attr_accessor :tags_multi_like_and
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

	class KalturaProvisionJobData < KalturaJobData
		attr_accessor :stream_id
		attr_accessor :backup_stream_id
		attr_accessor :rtmp
		attr_accessor :encoder_ip
		attr_accessor :backup_encoder_ip
		attr_accessor :encoder_password
		attr_accessor :encoder_username
		attr_accessor :end_date
		attr_accessor :return_val
		attr_accessor :media_type
		attr_accessor :primary_broadcasting_url
		attr_accessor :secondary_broadcasting_url
		attr_accessor :stream_name

		def end_date=(val)
			@end_date = val.to_i
		end
		def media_type=(val)
			@media_type = val.to_i
		end
	end

	class KalturaReportBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :partner_id_equal
		attr_accessor :partner_id_in
		attr_accessor :system_name_equal
		attr_accessor :system_name_in

		def id_equal=(val)
			@id_equal = val.to_i
		end
		def partner_id_equal=(val)
			@partner_id_equal = val.to_i
		end
	end

	class KalturaReportInputFilter < KalturaReportInputBaseFilter
		# Search keywords to filter objects
		# 	 
		attr_accessor :keywords
		# Search keywords in onjects tags
		# 	 
		attr_accessor :search_in_tags
		# Search keywords in onjects admin tags
		# 	 
		attr_accessor :search_in_admin_tags
		# Search onjects in specified categories
		# 	 
		attr_accessor :categories
		# Time zone offset in minutes
		# 	 
		attr_accessor :time_zone_offset
		# Aggregated results according to interval
		# 	 
		attr_accessor :interval

		def search_in_tags=(val)
			@search_in_tags = to_b(val)
		end
		def search_in_admin_tags=(val)
			@search_in_admin_tags = to_b(val)
		end
		def time_zone_offset=(val)
			@time_zone_offset = val.to_i
		end
	end

	class KalturaSearchCondition < KalturaSearchItem
		attr_accessor :field
		attr_accessor :value

	end

	class KalturaSearchOperator < KalturaSearchItem
		attr_accessor :type
		attr_accessor :items

		def type=(val)
			@type = val.to_i
		end
	end

	class KalturaSessionRestriction < KalturaBaseRestriction

	end

	class KalturaSiteRestriction < KalturaBaseRestriction
		# The site restriction type (allow or deny)
		# 	 
		attr_accessor :site_restriction_type
		# Comma separated list of sites (domains) to allow or deny
		# 	 
		attr_accessor :site_list

		def site_restriction_type=(val)
			@site_restriction_type = val.to_i
		end
	end

	class KalturaStorageAddAction < KalturaRuleAction

	end

	class KalturaStorageJobData < KalturaJobData
		attr_accessor :server_url
		attr_accessor :server_username
		attr_accessor :server_password
		attr_accessor :ftp_passive_mode
		attr_accessor :src_file_sync_local_path
		attr_accessor :src_file_sync_id
		attr_accessor :dest_file_sync_stored_path

		def ftp_passive_mode=(val)
			@ftp_passive_mode = to_b(val)
		end
	end

	class KalturaStorageProfileBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
		attr_accessor :partner_id_equal
		attr_accessor :partner_id_in
		attr_accessor :system_name_equal
		attr_accessor :system_name_in
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :protocol_equal
		attr_accessor :protocol_in

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

	class KalturaSyncCategoryPrivacyContextJobData < KalturaJobData
		# category id
		# 	 
		attr_accessor :category_id
		# Saves the last category entry creation date that was updated
		#      In case of crash the batch will restart from that point
		#      
		attr_accessor :last_updated_category_entry_created_at
		# Saves the last sub category creation date that was updated
		#      In case of crash the batch will restart from that point
		#      
		attr_accessor :last_updated_category_created_at

		def category_id=(val)
			@category_id = val.to_i
		end
		def last_updated_category_entry_created_at=(val)
			@last_updated_category_entry_created_at = val.to_i
		end
		def last_updated_category_created_at=(val)
			@last_updated_category_created_at = val.to_i
		end
	end

	class KalturaTubeMogulSyndicationFeed < KalturaBaseSyndicationFeed
		attr_accessor :category

	end

	class KalturaUiConfBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :name_like
		attr_accessor :partner_id_equal
		attr_accessor :partner_id_in
		attr_accessor :obj_type_equal
		attr_accessor :obj_type_in
		attr_accessor :tags_multi_like_or
		attr_accessor :tags_multi_like_and
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
		attr_accessor :creation_mode_equal
		attr_accessor :creation_mode_in
		attr_accessor :version_equal
		attr_accessor :version_multi_like_or
		attr_accessor :version_multi_like_and
		attr_accessor :partner_tags_multi_like_or
		attr_accessor :partner_tags_multi_like_and

		def id_equal=(val)
			@id_equal = val.to_i
		end
		def partner_id_equal=(val)
			@partner_id_equal = val.to_i
		end
		def obj_type_equal=(val)
			@obj_type_equal = val.to_i
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
		def creation_mode_equal=(val)
			@creation_mode_equal = val.to_i
		end
	end

	class KalturaUploadTokenBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :user_id_equal
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :file_name_equal
		attr_accessor :file_size_equal

		def status_equal=(val)
			@status_equal = val.to_i
		end
		def file_size_equal=(val)
			@file_size_equal = val.to_f
		end
	end

	class KalturaUrlRecognizerAkamaiG2O < KalturaUrlRecognizer
		# headerData
		# 	 
		attr_accessor :header_data
		# headerSign
		# 	 
		attr_accessor :header_sign
		# timeout
		# 	 
		attr_accessor :timeout
		# salt
		# 	 
		attr_accessor :salt

		def timeout=(val)
			@timeout = val.to_i
		end
	end

	class KalturaUrlTokenizerAkamaiHttp < KalturaUrlTokenizer
		# param
		# 	 
		attr_accessor :param_name
		attr_accessor :root_dir

	end

	class KalturaUrlTokenizerAkamaiRtmp < KalturaUrlTokenizer
		# profile
		# 	 
		attr_accessor :profile
		# Type
		# 	 
		attr_accessor :type
		attr_accessor :aifp
		attr_accessor :use_prefix

		def use_prefix=(val)
			@use_prefix = to_b(val)
		end
	end

	class KalturaUrlTokenizerAkamaiRtsp < KalturaUrlTokenizer
		# host
		# 	 
		attr_accessor :host
		# Cp-Code
		# 	 
		attr_accessor :cpcode

		def cpcode=(val)
			@cpcode = val.to_i
		end
	end

	class KalturaUrlTokenizerAkamaiSecureHd < KalturaUrlTokenizer
		attr_accessor :param_name
		attr_accessor :acl_postfix
		attr_accessor :custom_postfixes
		attr_accessor :use_cookie_hosts
		attr_accessor :root_dir

	end

	class KalturaUrlTokenizerBitGravity < KalturaUrlTokenizer
		# hashPatternRegex
		# 	 
		attr_accessor :hash_pattern_regex

	end

	class KalturaUrlTokenizerLevel3 < KalturaUrlTokenizer
		# paramName
		# 	 
		attr_accessor :param_name
		# expiryName
		# 	 
		attr_accessor :expiry_name
		# gen
		# 	 
		attr_accessor :gen

	end

	class KalturaUrlTokenizerLimeLight < KalturaUrlTokenizer

	end

	class KalturaUrlTokenizerUplynk < KalturaUrlTokenizer
		# accountId
		# 	 
		attr_accessor :account_id

	end

	class KalturaUrlTokenizerVelocix < KalturaUrlTokenizer
		# hdsPaths
		# 	 
		attr_accessor :hds_paths
		# tokenParamName
		# 	 
		attr_accessor :param_name
		# secure URL prefix
		# 	 
		attr_accessor :auth_prefix

	end

	class KalturaUserAgentRestriction < KalturaBaseRestriction
		# User agent restriction type (Allow or deny)
		# 	 
		attr_accessor :user_agent_restriction_type
		# A comma seperated list of user agent regular expressions
		# 	 
		attr_accessor :user_agent_regex_list

		def user_agent_restriction_type=(val)
			@user_agent_restriction_type = val.to_i
		end
	end

	class KalturaUserLoginDataBaseFilter < KalturaFilter
		attr_accessor :login_email_equal

	end

	class KalturaUserRoleBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :name_equal
		attr_accessor :name_in
		attr_accessor :system_name_equal
		attr_accessor :system_name_in
		attr_accessor :description_like
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :partner_id_equal
		attr_accessor :partner_id_in
		attr_accessor :tags_multi_like_or
		attr_accessor :tags_multi_like_and
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal

		def id_equal=(val)
			@id_equal = val.to_i
		end
		def status_equal=(val)
			@status_equal = val.to_i
		end
		def partner_id_equal=(val)
			@partner_id_equal = val.to_i
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

	class KalturaUserRoleCondition < KalturaCondition
		# Comma separated list of role ids
		# 	 
		attr_accessor :role_ids

	end

	class KalturaWidgetBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :source_widget_id_equal
		attr_accessor :root_widget_id_equal
		attr_accessor :partner_id_equal
		attr_accessor :entry_id_equal
		attr_accessor :ui_conf_id_equal
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
		attr_accessor :partner_data_like

		def partner_id_equal=(val)
			@partner_id_equal = val.to_i
		end
		def ui_conf_id_equal=(val)
			@ui_conf_id_equal = val.to_i
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

	class KalturaYahooSyndicationFeed < KalturaBaseSyndicationFeed
		attr_accessor :category
		attr_accessor :adult_content
		# feed description
		#          
		attr_accessor :feed_description
		# feed landing page (i.e publisher website)
		#          
		attr_accessor :feed_landing_page

	end

	class KalturaAccessControlFilter < KalturaAccessControlBaseFilter

	end

	class KalturaAccessControlProfileFilter < KalturaAccessControlProfileBaseFilter

	end

	class KalturaAkamaiProvisionJobData < KalturaProvisionJobData
		attr_accessor :wsdl_username
		attr_accessor :wsdl_password
		attr_accessor :cpcode
		attr_accessor :email_id
		attr_accessor :primary_contact
		attr_accessor :secondary_contact

	end

	class KalturaAkamaiUniversalProvisionJobData < KalturaProvisionJobData
		attr_accessor :stream_id
		attr_accessor :system_user_name
		attr_accessor :system_password
		attr_accessor :domain_name
		attr_accessor :dvr_enabled
		attr_accessor :dvr_window
		attr_accessor :primary_contact
		attr_accessor :secondary_contact
		attr_accessor :stream_type
		attr_accessor :notification_email

		def stream_id=(val)
			@stream_id = val.to_i
		end
		def dvr_enabled=(val)
			@dvr_enabled = val.to_i
		end
		def dvr_window=(val)
			@dvr_window = val.to_i
		end
	end

	class KalturaAssetFilter < KalturaAssetBaseFilter

	end

	class KalturaAssetParamsFilter < KalturaAssetParamsBaseFilter

	end

	# Used to ingest media that is already ingested to Kaltura system as a different flavor asset in the past, the new created flavor asset will be ready immediately using a file sync of link type that will point to the existing file sync of the existing flavor asset.
	#  
	class KalturaAssetResource < KalturaContentResource
		# ID of the source asset 
		# 	 
		attr_accessor :asset_id

	end

	class KalturaBaseSyndicationFeedFilter < KalturaBaseSyndicationFeedBaseFilter

	end

	class KalturaBatchJobFilter < KalturaBatchJobBaseFilter

	end

	class KalturaBulkUploadFilter < KalturaBulkUploadBaseFilter

	end

	class KalturaCategoryEntryFilter < KalturaCategoryEntryBaseFilter

	end

	class KalturaCategoryFilter < KalturaCategoryBaseFilter
		attr_accessor :free_text
		attr_accessor :members_in
		attr_accessor :name_or_reference_id_starts_with
		attr_accessor :manager_equal
		attr_accessor :member_equal
		attr_accessor :full_name_starts_with_in
		# not includes the category itself (only sub categories)
		# 	 
		attr_accessor :ancestor_id_in
		attr_accessor :id_or_inherited_parent_id_in

	end

	class KalturaControlPanelCommandFilter < KalturaControlPanelCommandBaseFilter

	end

	class KalturaConversionProfileFilter < KalturaConversionProfileBaseFilter

	end

	class KalturaConversionProfileAssetParamsFilter < KalturaConversionProfileAssetParamsBaseFilter
		attr_accessor :conversion_profile_id_filter
		attr_accessor :asset_params_id_filter

	end

	class KalturaConvertCollectionJobData < KalturaConvartableJobData
		attr_accessor :dest_dir_local_path
		attr_accessor :dest_dir_remote_url
		attr_accessor :dest_file_name
		attr_accessor :input_xml_local_path
		attr_accessor :input_xml_remote_url
		attr_accessor :command_lines_str
		attr_accessor :flavors

	end

	class KalturaConvertJobData < KalturaConvartableJobData
		attr_accessor :dest_file_sync_local_path
		attr_accessor :dest_file_sync_remote_url
		attr_accessor :log_file_sync_local_path
		attr_accessor :log_file_sync_remote_url
		attr_accessor :flavor_asset_id
		attr_accessor :remote_media_id
		attr_accessor :custom_data
		attr_accessor :extra_dest_file_syncs
		attr_accessor :engine_message

	end

	class KalturaCountryCondition < KalturaMatchCondition
		# The ip geo coder engine to be used
		# 	 
		attr_accessor :geo_coder_type

	end

	class KalturaDeliveryProfileFilter < KalturaDeliveryProfileBaseFilter

	end

	class KalturaDeliveryProfileGenericRtmp < KalturaDeliveryProfileRtmp
		attr_accessor :pattern
		# rendererClass
		# 	 
		attr_accessor :renderer_class

	end

	class KalturaEndUserReportInputFilter < KalturaReportInputFilter
		attr_accessor :application
		attr_accessor :user_ids
		attr_accessor :playback_context

	end

	class KalturaEntryReferrerLiveStats < KalturaEntryLiveStats
		attr_accessor :referrer

	end

	# Used to ingest media that is already ingested to Kaltura system as a different entry in the past, the new created flavor asset will be ready immediately using a file sync of link type that will point to the existing file sync of the existing entry.
	#  
	class KalturaEntryResource < KalturaContentResource
		# ID of the source entry 
		# 	 
		attr_accessor :entry_id
		# ID of the source flavor params, set to null to use the source flavor
		# 	 
		attr_accessor :flavor_params_id

		def flavor_params_id=(val)
			@flavor_params_id = val.to_i
		end
	end

	class KalturaExtractMediaJobData < KalturaConvartableJobData
		attr_accessor :flavor_asset_id

	end

	# An int representation to return evaluated dynamic value
	#  
	class KalturaIntegerField < KalturaIntegerValue

	end

	class KalturaFieldCompareCondition < KalturaCompareCondition
		# Field to evaluate
		# 	 
		attr_accessor :field

	end

	# A string representation to return evaluated dynamic value
	#  
	class KalturaStringField < KalturaStringValue

	end

	class KalturaFieldMatchCondition < KalturaMatchCondition
		# Field to evaluate
		# 	 
		attr_accessor :field

	end

	class KalturaFileAssetFilter < KalturaFileAssetBaseFilter

	end

	# Used to ingest media that is already ingested to Kaltura system as a different file in the past, the new created flavor asset will be ready immediately using a file sync of link type that will point to the existing file sync.
	#  
	class KalturaFileSyncResource < KalturaContentResource
		# The object type of the file sync object 
		# 	 
		attr_accessor :file_sync_object_type
		# The object sub-type of the file sync object 
		# 	 
		attr_accessor :object_sub_type
		# The object id of the file sync object 
		# 	 
		attr_accessor :object_id
		# The version of the file sync object 
		# 	 
		attr_accessor :version

		def file_sync_object_type=(val)
			@file_sync_object_type = val.to_i
		end
		def object_sub_type=(val)
			@object_sub_type = val.to_i
		end
	end

	class KalturaGenericXsltSyndicationFeed < KalturaGenericSyndicationFeed
		attr_accessor :xslt
		attr_accessor :item_xpaths_to_extend

	end

	class KalturaGeoDistanceCondition < KalturaMatchCondition
		# The ip geo coder engine to be used
		# 	 
		attr_accessor :geo_coder_type

	end

	class KalturaGeoTimeLiveStats < KalturaEntryLiveStats
		attr_accessor :city
		attr_accessor :country

	end

	class KalturaIpAddressCondition < KalturaMatchCondition

	end

	class KalturaLiveAsset < KalturaFlavorAsset
		attr_accessor :multicast_ip
		attr_accessor :multicast_port

		def multicast_port=(val)
			@multicast_port = val.to_i
		end
	end

	class KalturaLiveChannelSegmentFilter < KalturaLiveChannelSegmentBaseFilter

	end

	class KalturaLiveParams < KalturaFlavorParams
		# Suffix to be added to the stream name after the entry id {entry_id}_{stream_suffix}, e.g. for entry id 0_kjdu5jr6 and suffix 1, the stream name will be 0_kjdu5jr6_1
		# 	 
		attr_accessor :stream_suffix

	end

	class KalturaMediaFlavorParams < KalturaFlavorParams

	end

	class KalturaMediaInfoFilter < KalturaMediaInfoBaseFilter

	end

	class KalturaMediaServerFilter < KalturaMediaServerBaseFilter

	end

	# A resource that perform operation (transcoding, clipping, cropping) before the flavor is ready.
	#  
	class KalturaOperationResource < KalturaContentResource
		# Only KalturaEntryResource and KalturaAssetResource are supported
		# 	 
		attr_accessor :resource
		attr_accessor :operation_attributes
		# ID of alternative asset params to be used instead of the system default flavor params 
		# 	 
		attr_accessor :asset_params_id

		def asset_params_id=(val)
			@asset_params_id = val.to_i
		end
	end

	class KalturaPartnerFilter < KalturaPartnerBaseFilter

	end

	class KalturaPermissionFilter < KalturaPermissionBaseFilter

	end

	class KalturaPermissionItemFilter < KalturaPermissionItemBaseFilter

	end

	class KalturaPostConvertJobData < KalturaConvartableJobData
		attr_accessor :flavor_asset_id
		# Indicates if a thumbnail should be created
		# 	 
		attr_accessor :create_thumb
		# The path of the created thumbnail
		# 	 
		attr_accessor :thumb_path
		# The position of the thumbnail in the media file
		# 	 
		attr_accessor :thumb_offset
		# The height of the movie, will be used to comapare if this thumbnail is the best we can have
		# 	 
		attr_accessor :thumb_height
		# The bit rate of the movie, will be used to comapare if this thumbnail is the best we can have
		# 	 
		attr_accessor :thumb_bitrate
		attr_accessor :custom_data

		def create_thumb=(val)
			@create_thumb = to_b(val)
		end
		def thumb_offset=(val)
			@thumb_offset = val.to_i
		end
		def thumb_height=(val)
			@thumb_height = val.to_i
		end
		def thumb_bitrate=(val)
			@thumb_bitrate = val.to_i
		end
	end

	class KalturaPreviewRestriction < KalturaSessionRestriction
		# The preview restriction length 
		# 	 
		attr_accessor :preview_length

		def preview_length=(val)
			@preview_length = val.to_i
		end
	end

	class KalturaRegexCondition < KalturaMatchCondition

	end

	# Used to ingest media that is available on remote server and accessible using the supplied URL, the media file won't be downloaded but a file sync object of URL type will point to the media URL.
	#  
	class KalturaRemoteStorageResources < KalturaContentResource
		# Array of remote stoage resources 
		# 	 
		attr_accessor :resources

	end

	class KalturaReportFilter < KalturaReportBaseFilter

	end

	class KalturaSearchComparableCondition < KalturaSearchCondition
		attr_accessor :comparison

	end

	class KalturaSiteCondition < KalturaMatchCondition

	end

	class KalturaSshImportJobData < KalturaImportJobData
		attr_accessor :private_key
		attr_accessor :public_key
		attr_accessor :pass_phrase

	end

	class KalturaStorageDeleteJobData < KalturaStorageJobData

	end

	class KalturaStorageExportJobData < KalturaStorageJobData
		attr_accessor :force
		attr_accessor :create_link

		def force=(val)
			@force = to_b(val)
		end
		def create_link=(val)
			@create_link = to_b(val)
		end
	end

	class KalturaStorageProfileFilter < KalturaStorageProfileBaseFilter

	end

	# Used to ingest string content.
	#  
	class KalturaStringResource < KalturaContentResource
		# Textual content
		# 	 
		attr_accessor :content

	end

	class KalturaUiConfFilter < KalturaUiConfBaseFilter

	end

	class KalturaUploadTokenFilter < KalturaUploadTokenBaseFilter

	end

	class KalturaUserLoginDataFilter < KalturaUserLoginDataBaseFilter

	end

	class KalturaUserRoleFilter < KalturaUserRoleBaseFilter

	end

	class KalturaWidgetFilter < KalturaWidgetBaseFilter

	end

	class KalturaAdminUserBaseFilter < KalturaUserFilter

	end

	class KalturaAmazonS3StorageExportJobData < KalturaStorageExportJobData
		attr_accessor :files_permission_in_s3

	end

	class KalturaAmazonS3StorageProfileBaseFilter < KalturaStorageProfileFilter

	end

	class KalturaApiActionPermissionItemBaseFilter < KalturaPermissionItemFilter

	end

	class KalturaApiParameterPermissionItemBaseFilter < KalturaPermissionItemFilter

	end

	class KalturaAssetParamsOutputBaseFilter < KalturaAssetParamsFilter

	end

	class KalturaBatchJobFilterExt < KalturaBatchJobFilter
		attr_accessor :job_type_and_sub_type_in

	end

	# Represents the current request country context as calculated based on the IP address
	#  
	class KalturaCoordinatesContextField < KalturaStringField
		# The ip geo coder engine to be used
		# 	 
		attr_accessor :geo_coder_type

	end

	# Represents the current request country context as calculated based on the IP address
	#  
	class KalturaCountryContextField < KalturaStringField
		# The ip geo coder engine to be used
		# 	 
		attr_accessor :geo_coder_type

	end

	class KalturaDataEntryBaseFilter < KalturaBaseEntryFilter

	end

	class KalturaDeliveryProfileAkamaiAppleHttpManifestBaseFilter < KalturaDeliveryProfileFilter

	end

	class KalturaDeliveryProfileAkamaiHdsBaseFilter < KalturaDeliveryProfileFilter

	end

	class KalturaDeliveryProfileAkamaiHttpBaseFilter < KalturaDeliveryProfileFilter

	end

	class KalturaDeliveryProfileGenericAppleHttpBaseFilter < KalturaDeliveryProfileFilter

	end

	class KalturaDeliveryProfileGenericHdsBaseFilter < KalturaDeliveryProfileFilter

	end

	class KalturaDeliveryProfileGenericHttpBaseFilter < KalturaDeliveryProfileFilter

	end

	class KalturaDeliveryProfileGenericSilverLightBaseFilter < KalturaDeliveryProfileFilter

	end

	class KalturaDeliveryProfileLiveAppleHttpBaseFilter < KalturaDeliveryProfileFilter

	end

	class KalturaDeliveryProfileRtmpBaseFilter < KalturaDeliveryProfileFilter

	end

	# Evaluates PHP statement, depends on the execution context
	#  
	class KalturaEvalBooleanField < KalturaBooleanField
		# PHP code
		# 	 
		attr_accessor :code

	end

	# Evaluates PHP statement, depends on the execution context
	#  
	class KalturaEvalStringField < KalturaStringField
		# PHP code
		# 	 
		attr_accessor :code

	end

	class KalturaFlavorAssetBaseFilter < KalturaAssetFilter
		attr_accessor :flavor_params_id_equal
		attr_accessor :flavor_params_id_in
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :status_not_in

		def flavor_params_id_equal=(val)
			@flavor_params_id_equal = val.to_i
		end
		def status_equal=(val)
			@status_equal = val.to_i
		end
	end

	class KalturaFlavorParamsBaseFilter < KalturaAssetParamsFilter
		attr_accessor :format_equal

	end

	class KalturaGenericSyndicationFeedBaseFilter < KalturaBaseSyndicationFeedFilter

	end

	class KalturaGoogleVideoSyndicationFeedBaseFilter < KalturaBaseSyndicationFeedFilter

	end

	class KalturaITunesSyndicationFeedBaseFilter < KalturaBaseSyndicationFeedFilter

	end

	# Represents the current request IP address context 
	#  
	class KalturaIpAddressContextField < KalturaStringField

	end

	class KalturaMediaFlavorParamsOutput < KalturaFlavorParamsOutput

	end

	# Evaluates object ID according to given context
	#  
	class KalturaObjectIdField < KalturaStringField

	end

	class KalturaPlaylistBaseFilter < KalturaBaseEntryFilter

	end

	# Used to ingest media file that is already accessible on the shared disc.
	#  
	class KalturaServerFileResource < KalturaDataCenterContentResource
		# Full path to the local file 
		# 	 
		attr_accessor :local_file_path

	end

	# Used to ingest media that is available on remote SSH server and accessible using the supplied URL, media file will be downloaded using import job in order to make the asset ready.
	#  
	class KalturaSshUrlResource < KalturaUrlResource
		# SSH private key
		# 	 
		attr_accessor :private_key
		# SSH public key
		# 	 
		attr_accessor :public_key
		# Passphrase for SSH keys
		# 	 
		attr_accessor :key_passphrase

	end

	class KalturaThumbAssetBaseFilter < KalturaAssetFilter
		attr_accessor :thumb_params_id_equal
		attr_accessor :thumb_params_id_in
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :status_not_in

		def thumb_params_id_equal=(val)
			@thumb_params_id_equal = val.to_i
		end
		def status_equal=(val)
			@status_equal = val.to_i
		end
	end

	class KalturaThumbParamsBaseFilter < KalturaAssetParamsFilter
		attr_accessor :format_equal

	end

	# Represents the current time context on Kaltura servers
	#  
	class KalturaTimeContextField < KalturaIntegerField
		# Time offset in seconds since current time
		# 	 
		attr_accessor :offset

		def offset=(val)
			@offset = val.to_i
		end
	end

	class KalturaTubeMogulSyndicationFeedBaseFilter < KalturaBaseSyndicationFeedFilter

	end

	# Used to ingest media that uploaded to the system and represented by token that returned from upload.upload action or uploadToken.add action.
	#  
	class KalturaUploadedFileTokenResource < KalturaDataCenterContentResource
		# Token that returned from upload.upload action or uploadToken.add action. 
		# 	 
		attr_accessor :token

	end

	class KalturaUserAgentCondition < KalturaRegexCondition

	end

	# Represents the current request user agent context
	#  
	class KalturaUserAgentContextField < KalturaStringField

	end

	# Represents the current session user e-mail address context
	#  
	class KalturaUserEmailContextField < KalturaStringField

	end

	# Used to ingest media that streamed to the system and represented by token that returned from media server such as FMS or red5.
	#  
	class KalturaWebcamTokenResource < KalturaDataCenterContentResource
		# Token that returned from media server such as FMS or red5.
		# 	 
		attr_accessor :token

	end

	class KalturaYahooSyndicationFeedBaseFilter < KalturaBaseSyndicationFeedFilter

	end

	class KalturaAdminUserFilter < KalturaAdminUserBaseFilter

	end

	class KalturaAmazonS3StorageProfileFilter < KalturaAmazonS3StorageProfileBaseFilter

	end

	class KalturaApiActionPermissionItemFilter < KalturaApiActionPermissionItemBaseFilter

	end

	class KalturaApiParameterPermissionItemFilter < KalturaApiParameterPermissionItemBaseFilter

	end

	class KalturaAssetParamsOutputFilter < KalturaAssetParamsOutputBaseFilter

	end

	class KalturaDataEntryFilter < KalturaDataEntryBaseFilter

	end

	class KalturaDeliveryProfileAkamaiAppleHttpManifestFilter < KalturaDeliveryProfileAkamaiAppleHttpManifestBaseFilter

	end

	class KalturaDeliveryProfileAkamaiHdsFilter < KalturaDeliveryProfileAkamaiHdsBaseFilter

	end

	class KalturaDeliveryProfileAkamaiHttpFilter < KalturaDeliveryProfileAkamaiHttpBaseFilter

	end

	class KalturaDeliveryProfileGenericAppleHttpFilter < KalturaDeliveryProfileGenericAppleHttpBaseFilter

	end

	class KalturaDeliveryProfileGenericHdsFilter < KalturaDeliveryProfileGenericHdsBaseFilter

	end

	class KalturaDeliveryProfileGenericHttpFilter < KalturaDeliveryProfileGenericHttpBaseFilter

	end

	class KalturaDeliveryProfileGenericSilverLightFilter < KalturaDeliveryProfileGenericSilverLightBaseFilter

	end

	class KalturaDeliveryProfileLiveAppleHttpFilter < KalturaDeliveryProfileLiveAppleHttpBaseFilter

	end

	class KalturaDeliveryProfileRtmpFilter < KalturaDeliveryProfileRtmpBaseFilter

	end

	class KalturaFlavorAssetFilter < KalturaFlavorAssetBaseFilter

	end

	class KalturaFlavorParamsFilter < KalturaFlavorParamsBaseFilter

	end

	class KalturaGenericSyndicationFeedFilter < KalturaGenericSyndicationFeedBaseFilter

	end

	class KalturaGoogleVideoSyndicationFeedFilter < KalturaGoogleVideoSyndicationFeedBaseFilter

	end

	class KalturaITunesSyndicationFeedFilter < KalturaITunesSyndicationFeedBaseFilter

	end

	class KalturaPlaylistFilter < KalturaPlaylistBaseFilter

	end

	class KalturaThumbAssetFilter < KalturaThumbAssetBaseFilter
		attr_accessor :type_in

	end

	class KalturaThumbParamsFilter < KalturaThumbParamsBaseFilter

	end

	class KalturaTubeMogulSyndicationFeedFilter < KalturaTubeMogulSyndicationFeedBaseFilter

	end

	class KalturaYahooSyndicationFeedFilter < KalturaYahooSyndicationFeedBaseFilter

	end

	class KalturaDeliveryProfileGenericRtmpBaseFilter < KalturaDeliveryProfileRtmpFilter

	end

	class KalturaFlavorParamsOutputBaseFilter < KalturaFlavorParamsFilter
		attr_accessor :flavor_params_id_equal
		attr_accessor :flavor_params_version_equal
		attr_accessor :flavor_asset_id_equal
		attr_accessor :flavor_asset_version_equal

		def flavor_params_id_equal=(val)
			@flavor_params_id_equal = val.to_i
		end
	end

	class KalturaGenericXsltSyndicationFeedBaseFilter < KalturaGenericSyndicationFeedFilter

	end

	class KalturaLiveAssetBaseFilter < KalturaFlavorAssetFilter

	end

	class KalturaLiveParamsBaseFilter < KalturaFlavorParamsFilter

	end

	class KalturaLiveStreamAdminEntry < KalturaLiveStreamEntry

	end

	class KalturaMediaFlavorParamsBaseFilter < KalturaFlavorParamsFilter

	end

	class KalturaMixEntryBaseFilter < KalturaPlayableEntryFilter

	end

	class KalturaThumbParamsOutputBaseFilter < KalturaThumbParamsFilter
		attr_accessor :thumb_params_id_equal
		attr_accessor :thumb_params_version_equal
		attr_accessor :thumb_asset_id_equal
		attr_accessor :thumb_asset_version_equal

		def thumb_params_id_equal=(val)
			@thumb_params_id_equal = val.to_i
		end
	end

	class KalturaDeliveryProfileGenericRtmpFilter < KalturaDeliveryProfileGenericRtmpBaseFilter

	end

	class KalturaFlavorParamsOutputFilter < KalturaFlavorParamsOutputBaseFilter

	end

	class KalturaGenericXsltSyndicationFeedFilter < KalturaGenericXsltSyndicationFeedBaseFilter

	end

	class KalturaLiveAssetFilter < KalturaLiveAssetBaseFilter

	end

	class KalturaLiveParamsFilter < KalturaLiveParamsBaseFilter

	end

	class KalturaMediaFlavorParamsFilter < KalturaMediaFlavorParamsBaseFilter

	end

	class KalturaMixEntryFilter < KalturaMixEntryBaseFilter

	end

	class KalturaThumbParamsOutputFilter < KalturaThumbParamsOutputBaseFilter

	end

	class KalturaLiveEntryBaseFilter < KalturaMediaEntryFilter

	end

	class KalturaMediaFlavorParamsOutputBaseFilter < KalturaFlavorParamsOutputFilter

	end

	class KalturaLiveEntryFilter < KalturaLiveEntryBaseFilter
		attr_accessor :is_live
		attr_accessor :is_recorded_entry_id_empty

		def is_live=(val)
			@is_live = val.to_i
		end
		def is_recorded_entry_id_empty=(val)
			@is_recorded_entry_id_empty = val.to_i
		end
	end

	class KalturaMediaFlavorParamsOutputFilter < KalturaMediaFlavorParamsOutputBaseFilter

	end

	class KalturaLiveChannelBaseFilter < KalturaLiveEntryFilter

	end

	class KalturaLiveStreamEntryBaseFilter < KalturaLiveEntryFilter

	end

	class KalturaLiveChannelFilter < KalturaLiveChannelBaseFilter

	end

	class KalturaLiveStreamEntryFilter < KalturaLiveStreamEntryBaseFilter

	end

	class KalturaLiveStreamAdminEntryBaseFilter < KalturaLiveStreamEntryFilter

	end

	class KalturaLiveStreamAdminEntryFilter < KalturaLiveStreamAdminEntryBaseFilter

	end


	# Manage access control profiles
	#  
	class KalturaAccessControlProfileService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add new access control profile
		# 	 
		def add(access_control_profile)
			kparams = {}
			client.add_param(kparams, 'accessControlProfile', access_control_profile);
			client.queue_service_action_call('accesscontrolprofile', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get access control profile by id
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('accesscontrolprofile', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update access control profile by id
		# 	 
		def update(id, access_control_profile)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'accessControlProfile', access_control_profile);
			client.queue_service_action_call('accesscontrolprofile', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete access control profile by id
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('accesscontrolprofile', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List access control profiles by filter and pager
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('accesscontrolprofile', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Add & Manage Access Controls
	#  
	class KalturaAccessControlService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add new Access Control Profile
		# 	 
		def add(access_control)
			kparams = {}
			client.add_param(kparams, 'accessControl', access_control);
			client.queue_service_action_call('accesscontrol', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get Access Control Profile by id
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('accesscontrol', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update Access Control Profile by id
		# 	 
		def update(id, access_control)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'accessControl', access_control);
			client.queue_service_action_call('accesscontrol', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete Access Control Profile by id
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('accesscontrol', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List Access Control Profiles by filter and pager
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('accesscontrol', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Manage details for the administrative user
	#  
	class KalturaAdminUserService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Update admin user password and email
		# 	 
		def update_password(email, password, new_email='', new_password='')
			kparams = {}
			client.add_param(kparams, 'email', email);
			client.add_param(kparams, 'password', password);
			# Optional, provide only when you want to update the email
			client.add_param(kparams, 'newEmail', new_email);
			client.add_param(kparams, 'newPassword', new_password);
			client.queue_service_action_call('adminuser', 'updatePassword', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Reset admin user password and send it to the users email address
		# 	 
		def reset_password(email)
			kparams = {}
			client.add_param(kparams, 'email', email);
			client.queue_service_action_call('adminuser', 'resetPassword', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get an admin session using admin email and password (Used for login to the KMC application)
		# 	 
		def login(email, password, partner_id=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'email', email);
			client.add_param(kparams, 'password', password);
			client.add_param(kparams, 'partnerId', partner_id);
			client.queue_service_action_call('adminuser', 'login', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Set initial users password
		# 	 
		def set_initial_password(hash_key, new_password)
			kparams = {}
			client.add_param(kparams, 'hashKey', hash_key);
			# new password to set
			client.add_param(kparams, 'newPassword', new_password);
			client.queue_service_action_call('adminuser', 'setInitialPassword', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Base Entry Service
	#  
	class KalturaBaseEntryService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Generic add entry, should be used when the uploaded entry type is not known.
		#      
		def add(entry, type=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'entry', entry);
			client.add_param(kparams, 'type', type);
			client.queue_service_action_call('baseentry', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Attach content resource to entry in status NO_MEDIA
		#      
		def add_content(entry_id, resource)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'resource', resource);
			client.queue_service_action_call('baseentry', 'addContent', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Generic add entry using an uploaded file, should be used when the uploaded entry type is not known.
		#      
		def add_from_uploaded_file(entry, upload_token_id, type=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'entry', entry);
			client.add_param(kparams, 'uploadTokenId', upload_token_id);
			client.add_param(kparams, 'type', type);
			client.queue_service_action_call('baseentry', 'addFromUploadedFile', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get base entry by ID.
		# 	 
		def get(entry_id, version=-1)
			kparams = {}
			# Entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Desired version of the data
			client.add_param(kparams, 'version', version);
			client.queue_service_action_call('baseentry', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get remote storage existing paths for the asset.
		#      
		def get_remote_paths(entry_id)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('baseentry', 'getRemotePaths', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update base entry. Only the properties that were set will be updated.
		# 	 
		def update(entry_id, base_entry)
			kparams = {}
			# Entry id to update
			client.add_param(kparams, 'entryId', entry_id);
			# Base entry metadata to update
			client.add_param(kparams, 'baseEntry', base_entry);
			client.queue_service_action_call('baseentry', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update the content resource associated with the entry.
		# 	 
		def update_content(entry_id, resource, conversion_profile_id=KalturaNotImplemented, advanced_options=KalturaNotImplemented)
			kparams = {}
			# Entry id to update
			client.add_param(kparams, 'entryId', entry_id);
			# Resource to be used to replace entry content
			client.add_param(kparams, 'resource', resource);
			# The conversion profile id to be used on the entry
			client.add_param(kparams, 'conversionProfileId', conversion_profile_id);
			# Additional update content options
			client.add_param(kparams, 'advancedOptions', advanced_options);
			client.queue_service_action_call('baseentry', 'updateContent', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get an array of KalturaBaseEntry objects by a comma-separated list of ids.
		# 	 
		def get_by_ids(entry_ids)
			kparams = {}
			# Comma separated string of entry ids
			client.add_param(kparams, 'entryIds', entry_ids);
			client.queue_service_action_call('baseentry', 'getByIds', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete an entry.
		# 	 
		def delete(entry_id)
			kparams = {}
			# Entry id to delete
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('baseentry', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List base entries by filter with paging support.
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			# Entry filter
			client.add_param(kparams, 'filter', filter);
			# Pager
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('baseentry', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List base entries by filter according to reference id
		# 	 
		def list_by_reference_id(ref_id, pager=KalturaNotImplemented)
			kparams = {}
			# Entry Reference ID
			client.add_param(kparams, 'refId', ref_id);
			# Pager
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('baseentry', 'listByReferenceId', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Count base entries by filter.
		# 	 
		def count(filter=KalturaNotImplemented)
			kparams = {}
			# Entry filter
			client.add_param(kparams, 'filter', filter);
			client.queue_service_action_call('baseentry', 'count', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Upload a file to Kaltura, that can be used to create an entry.
		# 	 
		def upload(file_data)
			kparams = {}
			# The file data
			client.add_param(kparams, 'fileData', file_data);
			client.queue_service_action_call('baseentry', 'upload', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update entry thumbnail using a raw jpeg file.
		# 	 
		def update_thumbnail_jpeg(entry_id, file_data)
			kparams = {}
			# Media entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Jpeg file data
			client.add_param(kparams, 'fileData', file_data);
			client.queue_service_action_call('baseentry', 'updateThumbnailJpeg', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update entry thumbnail using url.
		# 	 
		def update_thumbnail_from_url(entry_id, url)
			kparams = {}
			# Media entry id
			client.add_param(kparams, 'entryId', entry_id);
			# file url
			client.add_param(kparams, 'url', url);
			client.queue_service_action_call('baseentry', 'updateThumbnailFromUrl', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update entry thumbnail from a different entry by a specified time offset (in seconds).
		# 	 
		def update_thumbnail_from_source_entry(entry_id, source_entry_id, time_offset)
			kparams = {}
			# Media entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Media entry id
			client.add_param(kparams, 'sourceEntryId', source_entry_id);
			# Time offset (in seconds)
			client.add_param(kparams, 'timeOffset', time_offset);
			client.queue_service_action_call('baseentry', 'updateThumbnailFromSourceEntry', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Flag inappropriate entry for moderation.
		# 	 
		def flag(moderation_flag)
			kparams = {}
			client.add_param(kparams, 'moderationFlag', moderation_flag);
			client.queue_service_action_call('baseentry', 'flag', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Reject the entry and mark the pending flags (if any) as moderated (this will make the entry non-playable).
		# 	 
		def reject(entry_id)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('baseentry', 'reject', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Approve the entry and mark the pending flags (if any) as moderated (this will make the entry playable).
		# 	 
		def approve(entry_id)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('baseentry', 'approve', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List all pending flags for the entry.
		# 	 
		def list_flags(entry_id, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('baseentry', 'listFlags', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Anonymously rank an entry, no validation is done on duplicate rankings.
		# 	 
		def anonymous_rank(entry_id, rank)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'rank', rank);
			client.queue_service_action_call('baseentry', 'anonymousRank', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# This action delivers entry-related data, based on the user's context: access control, restriction, playback format and storage information.
		# 	 
		def get_context_data(entry_id, context_data_params)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'contextDataParams', context_data_params);
			client.queue_service_action_call('baseentry', 'getContextData', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def export(entry_id, storage_profile_id)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'storageProfileId', storage_profile_id);
			client.queue_service_action_call('baseentry', 'export', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Index an entry by id.
		# 	 
		def index(id, should_update=true)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'shouldUpdate', should_update);
			client.queue_service_action_call('baseentry', 'index', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Clone an entry with optional attributes to apply to the clone
		# 	 
		def clone(entry_id)
			kparams = {}
			# Id of entry to clone
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('baseentry', 'clone', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Bulk upload service is used to upload & manage bulk uploads using CSV files.
	#  This service manages only entry bulk uploads.
	#  
	class KalturaBulkUploadService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add new bulk upload batch job
		# 	 Conversion profile id can be specified in the API or in the CSV file, the one in the CSV file will be stronger.
		# 	 If no conversion profile was specified, partner's default will be used
		# 	 
		def add(conversion_profile_id, csv_file_data, bulk_upload_type=KalturaNotImplemented, uploaded_by=KalturaNotImplemented, file_name=KalturaNotImplemented)
			kparams = {}
			# Convertion profile id to use for converting the current bulk (-1 to use partner's default)
			client.add_param(kparams, 'conversionProfileId', conversion_profile_id);
			# bulk upload file
			client.add_param(kparams, 'csvFileData', csv_file_data);
			client.add_param(kparams, 'bulkUploadType', bulk_upload_type);
			client.add_param(kparams, 'uploadedBy', uploaded_by);
			# Friendly name of the file, used to be recognized later in the logs.
			client.add_param(kparams, 'fileName', file_name);
			client.queue_service_action_call('bulkupload', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get bulk upload batch job by id
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('bulkupload', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List bulk upload batch jobs
		# 	 
		def list(pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('bulkupload', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# serve action returan the original file.
		# 	 
		def serve(id)
			kparams = {}
			# job id
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('bulkupload', 'serve', kparams);
			return client.get_serve_url();
		end

		# serveLog action returan the original file.
		# 	 
		def serve_log(id)
			kparams = {}
			# job id
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('bulkupload', 'serveLog', kparams);
			return client.get_serve_url();
		end

		# Aborts the bulk upload and all its child jobs
		# 	 
		def abort(id)
			kparams = {}
			# job id
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('bulkupload', 'abort', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Add & Manage CategoryEntry - assign entry to category
	#  
	class KalturaCategoryEntryService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add new CategoryEntry
		# 	 
		def add(category_entry)
			kparams = {}
			client.add_param(kparams, 'categoryEntry', category_entry);
			client.queue_service_action_call('categoryentry', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete CategoryEntry
		# 	 
		def delete(entry_id, category_id)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'categoryId', category_id);
			client.queue_service_action_call('categoryentry', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List all categoryEntry
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('categoryentry', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Index CategoryEntry by Id
		# 	 
		def index(entry_id, category_id, should_update=true)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'categoryId', category_id);
			client.add_param(kparams, 'shouldUpdate', should_update);
			client.queue_service_action_call('categoryentry', 'index', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# activate CategoryEntry when it is pending moderation
		# 	 
		def activate(entry_id, category_id)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'categoryId', category_id);
			client.queue_service_action_call('categoryentry', 'activate', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# activate CategoryEntry when it is pending moderation
		# 	 
		def reject(entry_id, category_id)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'categoryId', category_id);
			client.queue_service_action_call('categoryentry', 'reject', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# update privacy context from the category
		# 	 
		def sync_privacy_context(entry_id, category_id)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'categoryId', category_id);
			client.queue_service_action_call('categoryentry', 'syncPrivacyContext', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def add_from_bulk_upload(bulk_upload_data, bulk_upload_category_entry_data=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'bulkUploadData', bulk_upload_data);
			client.add_param(kparams, 'bulkUploadCategoryEntryData', bulk_upload_category_entry_data);
			client.queue_service_action_call('categoryentry', 'addFromBulkUpload', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Add & Manage Categories
	#  
	class KalturaCategoryService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add new Category
		# 	 
		def add(category)
			kparams = {}
			client.add_param(kparams, 'category', category);
			client.queue_service_action_call('category', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get Category by id
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('category', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update Category
		# 	 
		def update(id, category)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'category', category);
			client.queue_service_action_call('category', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete a Category
		# 	 
		def delete(id, move_entries_to_parent_category=1)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'moveEntriesToParentCategory', move_entries_to_parent_category);
			client.queue_service_action_call('category', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List all categories
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('category', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Index Category by id
		# 	 
		def index(id, should_update=true)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'shouldUpdate', should_update);
			client.queue_service_action_call('category', 'index', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Move categories that belong to the same parent category to a target categroy - enabled only for ks with disable entitlement
		# 	 
		def move(category_ids, target_category_parent_id)
			kparams = {}
			client.add_param(kparams, 'categoryIds', category_ids);
			client.add_param(kparams, 'targetCategoryParentId', target_category_parent_id);
			client.queue_service_action_call('category', 'move', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Unlock categories
		# 	 
		def unlock_categories()
			kparams = {}
			client.queue_service_action_call('category', 'unlockCategories', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def add_from_bulk_upload(file_data, bulk_upload_data=KalturaNotImplemented, bulk_upload_category_data=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'fileData', file_data);
			client.add_param(kparams, 'bulkUploadData', bulk_upload_data);
			client.add_param(kparams, 'bulkUploadCategoryData', bulk_upload_category_data);
			client.queue_service_action_call('category', 'addFromBulkUpload', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Add & Manage CategoryUser - membership of a user in a category
	#  
	class KalturaCategoryUserService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add new CategoryUser
		# 	 
		def add(category_user)
			kparams = {}
			client.add_param(kparams, 'categoryUser', category_user);
			client.queue_service_action_call('categoryuser', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get CategoryUser by id
		# 	 
		def get(category_id, user_id)
			kparams = {}
			client.add_param(kparams, 'categoryId', category_id);
			client.add_param(kparams, 'userId', user_id);
			client.queue_service_action_call('categoryuser', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update CategoryUser by id
		# 	 
		def update(category_id, user_id, category_user, override=false)
			kparams = {}
			client.add_param(kparams, 'categoryId', category_id);
			client.add_param(kparams, 'userId', user_id);
			client.add_param(kparams, 'categoryUser', category_user);
			# - to override manual changes
			client.add_param(kparams, 'override', override);
			client.queue_service_action_call('categoryuser', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete a CategoryUser
		# 	 
		def delete(category_id, user_id)
			kparams = {}
			client.add_param(kparams, 'categoryId', category_id);
			client.add_param(kparams, 'userId', user_id);
			client.queue_service_action_call('categoryuser', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# activate CategoryUser
		# 	 
		def activate(category_id, user_id)
			kparams = {}
			client.add_param(kparams, 'categoryId', category_id);
			client.add_param(kparams, 'userId', user_id);
			client.queue_service_action_call('categoryuser', 'activate', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# reject CategoryUser
		# 	 
		def deactivate(category_id, user_id)
			kparams = {}
			client.add_param(kparams, 'categoryId', category_id);
			client.add_param(kparams, 'userId', user_id);
			client.queue_service_action_call('categoryuser', 'deactivate', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List all categories
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('categoryuser', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Copy all memeber from parent category
		# 	 
		def copy_from_category(category_id)
			kparams = {}
			client.add_param(kparams, 'categoryId', category_id);
			client.queue_service_action_call('categoryuser', 'copyFromCategory', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Index CategoryUser by userid and category id
		# 	 
		def index(user_id, category_id, should_update=true)
			kparams = {}
			client.add_param(kparams, 'userId', user_id);
			client.add_param(kparams, 'categoryId', category_id);
			client.add_param(kparams, 'shouldUpdate', should_update);
			client.queue_service_action_call('categoryuser', 'index', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def add_from_bulk_upload(file_data, bulk_upload_data=KalturaNotImplemented, bulk_upload_category_user_data=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'fileData', file_data);
			client.add_param(kparams, 'bulkUploadData', bulk_upload_data);
			client.add_param(kparams, 'bulkUploadCategoryUserData', bulk_upload_category_user_data);
			client.queue_service_action_call('categoryuser', 'addFromBulkUpload', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Manage the connection between Conversion Profiles and Asset Params
	#  
	class KalturaConversionProfileAssetParamsService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Lists asset parmas of conversion profile by ID
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('conversionprofileassetparams', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update asset parmas of conversion profile by ID
		# 	 
		def update(conversion_profile_id, asset_params_id, conversion_profile_asset_params)
			kparams = {}
			client.add_param(kparams, 'conversionProfileId', conversion_profile_id);
			client.add_param(kparams, 'assetParamsId', asset_params_id);
			client.add_param(kparams, 'conversionProfileAssetParams', conversion_profile_asset_params);
			client.queue_service_action_call('conversionprofileassetparams', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Add & Manage Conversion Profiles
	#  
	class KalturaConversionProfileService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Set Conversion Profile to be the partner default
		# 	 
		def set_as_default(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('conversionprofile', 'setAsDefault', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get the partner's default conversion profile
		# 	 
		def get_default(type=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'type', type);
			client.queue_service_action_call('conversionprofile', 'getDefault', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Add new Conversion Profile
		# 	 
		def add(conversion_profile)
			kparams = {}
			client.add_param(kparams, 'conversionProfile', conversion_profile);
			client.queue_service_action_call('conversionprofile', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get Conversion Profile by ID
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('conversionprofile', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update Conversion Profile by ID
		# 	 
		def update(id, conversion_profile)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'conversionProfile', conversion_profile);
			client.queue_service_action_call('conversionprofile', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete Conversion Profile by ID
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('conversionprofile', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List Conversion Profiles by filter with paging support
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('conversionprofile', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Data service lets you manage data content (textual content)
	#  
	class KalturaDataService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Adds a new data entry
		# 	 
		def add(data_entry)
			kparams = {}
			# Data entry
			client.add_param(kparams, 'dataEntry', data_entry);
			client.queue_service_action_call('data', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get data entry by ID.
		# 	 
		def get(entry_id, version=-1)
			kparams = {}
			# Data entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Desired version of the data
			client.add_param(kparams, 'version', version);
			client.queue_service_action_call('data', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update data entry. Only the properties that were set will be updated.
		# 	 
		def update(entry_id, document_entry)
			kparams = {}
			# Data entry id to update
			client.add_param(kparams, 'entryId', entry_id);
			# Data entry metadata to update
			client.add_param(kparams, 'documentEntry', document_entry);
			client.queue_service_action_call('data', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete a data entry.
		# 	 
		def delete(entry_id)
			kparams = {}
			# Data entry id to delete
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('data', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List data entries by filter with paging support.
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			# Document entry filter
			client.add_param(kparams, 'filter', filter);
			# Pager
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('data', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# serve action returan the file from dataContent field.
		# 	 
		def serve(entry_id, version=-1, force_proxy=false)
			kparams = {}
			# Data entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Desired version of the data
			client.add_param(kparams, 'version', version);
			# force to get the content without redirect
			client.add_param(kparams, 'forceProxy', force_proxy);
			client.queue_service_action_call('data', 'serve', kparams);
			return client.get_serve_url();
		end
	end

	# delivery service is used to control delivery objects
	#  
	class KalturaDeliveryProfileService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add new delivery.
		# 	 
		def add(delivery)
			kparams = {}
			client.add_param(kparams, 'delivery', delivery);
			client.queue_service_action_call('deliveryprofile', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update exisiting delivery
		# 	 
		def update(id, delivery)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'delivery', delivery);
			client.queue_service_action_call('deliveryprofile', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get delivery by id
		# 	
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('deliveryprofile', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Add delivery based on existing delivery.
		# 	Must provide valid sourceDeliveryId
		# 	
		def clone(delivery_id)
			kparams = {}
			client.add_param(kparams, 'deliveryId', delivery_id);
			client.queue_service_action_call('deliveryprofile', 'clone', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve a list of available delivery depends on the filter given
		# 	
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('deliveryprofile', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Document service
	#  
	class KalturaDocumentService < KalturaServiceBase
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
			client.queue_service_action_call('document', 'addFromUploadedFile', kparams);
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
			client.queue_service_action_call('document', 'addFromEntry', kparams);
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
			client.queue_service_action_call('document', 'addFromFlavorAsset', kparams);
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
			client.queue_service_action_call('document', 'convert', kparams);
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
			client.queue_service_action_call('document', 'get', kparams);
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
			client.queue_service_action_call('document', 'update', kparams);
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
			client.queue_service_action_call('document', 'delete', kparams);
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
			client.queue_service_action_call('document', 'list', kparams);
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
			client.queue_service_action_call('document', 'upload', kparams);
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
			client.queue_service_action_call('document', 'convertPptToSwf', kparams);
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
			client.queue_service_action_call('document', 'serve', kparams);
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
			client.queue_service_action_call('document', 'serveByFlavorParamsId', kparams);
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
			client.queue_service_action_call('document', 'updateContent', kparams);
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
			client.queue_service_action_call('document', 'approveReplace', kparams);
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
			client.queue_service_action_call('document', 'cancelReplace', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# EmailIngestionProfile service lets you manage email ingestion profile records
	#  
	class KalturaEmailIngestionProfileService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# EmailIngestionProfile Add action allows you to add a EmailIngestionProfile to Kaltura DB
		# 	 
		def add(email_ip)
			kparams = {}
			# Mandatory input parameter of type KalturaEmailIngestionProfile
			client.add_param(kparams, 'EmailIP', email_ip);
			client.queue_service_action_call('emailingestionprofile', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve a EmailIngestionProfile by email address
		# 	 
		def get_by_email_address(email_address)
			kparams = {}
			client.add_param(kparams, 'emailAddress', email_address);
			client.queue_service_action_call('emailingestionprofile', 'getByEmailAddress', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve a EmailIngestionProfile by id
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('emailingestionprofile', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update an existing EmailIngestionProfile
		# 	 
		def update(id, email_ip)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'EmailIP', email_ip);
			client.queue_service_action_call('emailingestionprofile', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete an existing EmailIngestionProfile
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('emailingestionprofile', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# add KalturaMediaEntry from email ingestion
		# 	 
		def add_media_entry(media_entry, upload_token_id, email_prof_id, from_address, email_msg_id)
			kparams = {}
			# Media entry metadata
			client.add_param(kparams, 'mediaEntry', media_entry);
			# Upload token id
			client.add_param(kparams, 'uploadTokenId', upload_token_id);
			client.add_param(kparams, 'emailProfId', email_prof_id);
			client.add_param(kparams, 'fromAddress', from_address);
			client.add_param(kparams, 'emailMsgId', email_msg_id);
			client.queue_service_action_call('emailingestionprofile', 'addMediaEntry', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Manage file assets
	#  
	class KalturaFileAssetService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add new file asset
		# 	 
		def add(file_asset)
			kparams = {}
			client.add_param(kparams, 'fileAsset', file_asset);
			client.queue_service_action_call('fileasset', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get file asset by id
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('fileasset', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update file asset by id
		# 	 
		def update(id, file_asset)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'fileAsset', file_asset);
			client.queue_service_action_call('fileasset', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete file asset by id
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('fileasset', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Serve file asset by id
		# 	 
		def serve(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('fileasset', 'serve', kparams);
			return client.get_serve_url();
		end

		# Set content of file asset
		#      
		def set_content(id, content_resource)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'contentResource', content_resource);
			client.queue_service_action_call('fileasset', 'setContent', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List file assets by filter and pager
		# 	 
		def list(filter, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('fileasset', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Retrieve information and invoke actions on Flavor Asset
	#  
	class KalturaFlavorAssetService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add flavor asset
		#      
		def add(entry_id, flavor_asset)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'flavorAsset', flavor_asset);
			client.queue_service_action_call('flavorasset', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update flavor asset
		#      
		def update(id, flavor_asset)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'flavorAsset', flavor_asset);
			client.queue_service_action_call('flavorasset', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update content of flavor asset
		#      
		def set_content(id, content_resource)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'contentResource', content_resource);
			client.queue_service_action_call('flavorasset', 'setContent', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get Flavor Asset by ID
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('flavorasset', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get Flavor Assets for Entry
		# 	 
		def get_by_entry_id(entry_id)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('flavorasset', 'getByEntryId', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List Flavor Assets by filter and pager
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('flavorasset', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get web playable Flavor Assets for Entry
		# 	 
		def get_web_playable_by_entry_id(entry_id)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('flavorasset', 'getWebPlayableByEntryId', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Add and convert new Flavor Asset for Entry with specific Flavor Params
		# 	 
		def convert(entry_id, flavor_params_id, priority=0)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'flavorParamsId', flavor_params_id);
			client.add_param(kparams, 'priority', priority);
			client.queue_service_action_call('flavorasset', 'convert', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Reconvert Flavor Asset by ID
		# 	 
		def reconvert(id)
			kparams = {}
			# Flavor Asset ID
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('flavorasset', 'reconvert', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete Flavor Asset by ID
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('flavorasset', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get download URL for the asset
		# 	 
		def get_url(id, storage_id=KalturaNotImplemented, force_proxy=false)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'storageId', storage_id);
			client.add_param(kparams, 'forceProxy', force_proxy);
			client.queue_service_action_call('flavorasset', 'getUrl', kparams);
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
			client.queue_service_action_call('flavorasset', 'getRemotePaths', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get download URL for the Flavor Asset
		# 	 
		def get_download_url(id, use_cdn=false)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'useCdn', use_cdn);
			client.queue_service_action_call('flavorasset', 'getDownloadUrl', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get Flavor Asset with the relevant Flavor Params (Flavor Params can exist without Flavor Asset & vice versa)
		# 	 
		def get_flavor_assets_with_params(entry_id)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('flavorasset', 'getFlavorAssetsWithParams', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# manually export an asset
		# 	 
		def export(asset_id, storage_profile_id)
			kparams = {}
			client.add_param(kparams, 'assetId', asset_id);
			client.add_param(kparams, 'storageProfileId', storage_profile_id);
			client.queue_service_action_call('flavorasset', 'export', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Set a given flavor as the original flavor
		# 	 
		def set_as_source(asset_id)
			kparams = {}
			client.add_param(kparams, 'assetId', asset_id);
			client.queue_service_action_call('flavorasset', 'setAsSource', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# delete all local file syncs for this asset
		# 	 
		def delete_local_content(asset_id)
			kparams = {}
			client.add_param(kparams, 'assetId', asset_id);
			client.queue_service_action_call('flavorasset', 'deleteLocalContent', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Flavor Params Output service
	#  
	class KalturaFlavorParamsOutputService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Get flavor params output object by ID
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('flavorparamsoutput', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List flavor params output objects by filter and pager
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('flavorparamsoutput', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Add & Manage Flavor Params
	#  
	class KalturaFlavorParamsService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add new Flavor Params
		# 	 
		def add(flavor_params)
			kparams = {}
			client.add_param(kparams, 'flavorParams', flavor_params);
			client.queue_service_action_call('flavorparams', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get Flavor Params by ID
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('flavorparams', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update Flavor Params by ID
		# 	 
		def update(id, flavor_params)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'flavorParams', flavor_params);
			client.queue_service_action_call('flavorparams', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete Flavor Params by ID
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('flavorparams', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List Flavor Params by filter with paging support (By default - all system default params will be listed too)
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('flavorparams', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get Flavor Params by Conversion Profile ID
		# 	 
		def get_by_conversion_profile_id(conversion_profile_id)
			kparams = {}
			client.add_param(kparams, 'conversionProfileId', conversion_profile_id);
			client.queue_service_action_call('flavorparams', 'getByConversionProfileId', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Manage live channel segments
	#  
	class KalturaLiveChannelSegmentService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add new live channel segment
		# 	 
		def add(live_channel_segment)
			kparams = {}
			client.add_param(kparams, 'liveChannelSegment', live_channel_segment);
			client.queue_service_action_call('livechannelsegment', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get live channel segment by id
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('livechannelsegment', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update live channel segment by id
		# 	 
		def update(id, live_channel_segment)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'liveChannelSegment', live_channel_segment);
			client.queue_service_action_call('livechannelsegment', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete live channel segment by id
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('livechannelsegment', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List live channel segments by filter and pager
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('livechannelsegment', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Live Channel service lets you manage live channels
	#  
	class KalturaLiveChannelService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Adds new live channel.
		# 	 
		def add(live_channel)
			kparams = {}
			# Live channel metadata  
			client.add_param(kparams, 'liveChannel', live_channel);
			client.queue_service_action_call('livechannel', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get live channel by ID.
		# 	 
		def get(id)
			kparams = {}
			# Live channel id
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('livechannel', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update live channel. Only the properties that were set will be updated.
		# 	 
		def update(id, live_channel)
			kparams = {}
			# Live channel id to update
			client.add_param(kparams, 'id', id);
			# Live channel metadata to update
			client.add_param(kparams, 'liveChannel', live_channel);
			client.queue_service_action_call('livechannel', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete a live channel.
		# 	 
		def delete(id)
			kparams = {}
			# Live channel id to delete
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('livechannel', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List live channels by filter with paging support.
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			# live channel filter
			client.add_param(kparams, 'filter', filter);
			# Pager
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('livechannel', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delivering the status of a live channel (on-air/offline)
		# 	 
		def is_live(id)
			kparams = {}
			# ID of the live channel
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('livechannel', 'isLive', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Append recorded video to live entry
		# 	 
		def append_recording(entry_id, asset_id, media_server_index, resource, duration, is_last_chunk=false)
			kparams = {}
			# Live entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Live asset id
			client.add_param(kparams, 'assetId', asset_id);
			client.add_param(kparams, 'mediaServerIndex', media_server_index);
			client.add_param(kparams, 'resource', resource);
			# in seconds
			client.add_param(kparams, 'duration', duration);
			# Is this the last recorded chunk in the current session (i.e. following a stream stop event)
			client.add_param(kparams, 'isLastChunk', is_last_chunk);
			client.queue_service_action_call('livechannel', 'appendRecording', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Register media server to live entry
		# 	 
		def register_media_server(entry_id, hostname, media_server_index, application_name=KalturaNotImplemented)
			kparams = {}
			# Live entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Media server host name
			client.add_param(kparams, 'hostname', hostname);
			# Media server index primary / secondary
			client.add_param(kparams, 'mediaServerIndex', media_server_index);
			# the application to which entry is being broadcast
			client.add_param(kparams, 'applicationName', application_name);
			client.queue_service_action_call('livechannel', 'registerMediaServer', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Unregister media server from live entry
		# 	 
		def unregister_media_server(entry_id, hostname, media_server_index)
			kparams = {}
			# Live entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Media server host name
			client.add_param(kparams, 'hostname', hostname);
			# Media server index primary / secondary
			client.add_param(kparams, 'mediaServerIndex', media_server_index);
			client.queue_service_action_call('livechannel', 'unregisterMediaServer', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Validates all registered media servers
		# 	 
		def validate_registered_media_servers(entry_id)
			kparams = {}
			# Live entry id
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('livechannel', 'validateRegisteredMediaServers', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	class KalturaLiveReportsService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		def get_events(report_type, filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'reportType', report_type);
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('livereports', 'getEvents', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def get_report(report_type, filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'reportType', report_type);
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('livereports', 'getReport', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def export_to_csv(report_type, params)
			kparams = {}
			client.add_param(kparams, 'reportType', report_type);
			client.add_param(kparams, 'params', params);
			client.queue_service_action_call('livereports', 'exportToCsv', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Will serve a requested report
		# 	 
		def serve_report(id)
			kparams = {}
			# - the requested id
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('livereports', 'serveReport', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Stats Service
	#  
	class KalturaStatsService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Will write to the event log a single line representing the event
		# 	 client version - will help interprete the line structure. different client versions might have slightly different data/data formats in the line
		# event_id - number is the row number in yuval's excel
		# datetime - same format as MySql's datetime - can change and should reflect the time zone
		# session id - can be some big random number or guid
		# partner id
		# entry id
		# unique viewer
		# widget id
		# ui_conf id
		# uid - the puser id as set by the ppartner
		# current point - in milliseconds
		# duration - milliseconds
		# user ip
		# process duration - in milliseconds
		# control id
		# seek
		# new point
		# referrer
		# 	
		# 	
		# 	 KalturaStatsEvent $event
		# 	 
		def collect(event)
			kparams = {}
			client.add_param(kparams, 'event', event);
			client.queue_service_action_call('stats', 'collect', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Will collect the kmcEvent sent form the KMC client
		# 	 // this will actually be an empty function because all events will be sent using GET and will anyway be logged in the apache log
		# 	 
		def kmc_collect(kmc_event)
			kparams = {}
			client.add_param(kparams, 'kmcEvent', kmc_event);
			client.queue_service_action_call('stats', 'kmcCollect', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def report_kce_error(kaltura_ce_error)
			kparams = {}
			client.add_param(kparams, 'kalturaCEError', kaltura_ce_error);
			client.queue_service_action_call('stats', 'reportKceError', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Use this action to report errors to the kaltura server.
		# 	 
		def report_error(error_code, error_message)
			kparams = {}
			client.add_param(kparams, 'errorCode', error_code);
			client.add_param(kparams, 'errorMessage', error_message);
			client.queue_service_action_call('stats', 'reportError', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Live Stream service lets you manage live stream entries
	#  
	class KalturaLiveStreamService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Adds new live stream entry.
		# 	 The entry will be queued for provision.
		# 	 
		def add(live_stream_entry, source_type=KalturaNotImplemented)
			kparams = {}
			# Live stream entry metadata  
			client.add_param(kparams, 'liveStreamEntry', live_stream_entry);
			#  Live stream source type
			client.add_param(kparams, 'sourceType', source_type);
			client.queue_service_action_call('livestream', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get live stream entry by ID.
		# 	 
		def get(entry_id, version=-1)
			kparams = {}
			# Live stream entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Desired version of the data
			client.add_param(kparams, 'version', version);
			client.queue_service_action_call('livestream', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Authenticate live-stream entry against stream token and partner limitations
		# 	 
		def authenticate(entry_id, token)
			kparams = {}
			# Live stream entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Live stream broadcasting token
			client.add_param(kparams, 'token', token);
			client.queue_service_action_call('livestream', 'authenticate', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update live stream entry. Only the properties that were set will be updated.
		# 	 
		def update(entry_id, live_stream_entry)
			kparams = {}
			# Live stream entry id to update
			client.add_param(kparams, 'entryId', entry_id);
			# Live stream entry metadata to update
			client.add_param(kparams, 'liveStreamEntry', live_stream_entry);
			client.queue_service_action_call('livestream', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete a live stream entry.
		# 	 
		def delete(entry_id)
			kparams = {}
			# Live stream entry id to delete
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('livestream', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List live stream entries by filter with paging support.
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			# live stream entry filter
			client.add_param(kparams, 'filter', filter);
			# Pager
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('livestream', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update live stream entry thumbnail using a raw jpeg file
		# 	 
		def update_offline_thumbnail_jpeg(entry_id, file_data)
			kparams = {}
			# live stream entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Jpeg file data
			client.add_param(kparams, 'fileData', file_data);
			client.queue_service_action_call('livestream', 'updateOfflineThumbnailJpeg', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update entry thumbnail using url
		# 	 
		def update_offline_thumbnail_from_url(entry_id, url)
			kparams = {}
			# live stream entry id
			client.add_param(kparams, 'entryId', entry_id);
			# file url
			client.add_param(kparams, 'url', url);
			client.queue_service_action_call('livestream', 'updateOfflineThumbnailFromUrl', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delivering the status of a live stream (on-air/offline) if it is possible
		# 	 
		def is_live(id, protocol)
			kparams = {}
			# ID of the live stream
			client.add_param(kparams, 'id', id);
			# protocol of the stream to test.
			client.add_param(kparams, 'protocol', protocol);
			client.queue_service_action_call('livestream', 'isLive', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Add new pushPublish configuration to entry
		# 	 
		def add_live_stream_push_publish_configuration(entry_id, protocol, url=KalturaNotImplemented, live_stream_configuration=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'protocol', protocol);
			client.add_param(kparams, 'url', url);
			client.add_param(kparams, 'liveStreamConfiguration', live_stream_configuration);
			client.queue_service_action_call('livestream', 'addLiveStreamPushPublishConfiguration', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Remove push publish configuration from entry
		# 	 
		def remove_live_stream_push_publish_configuration(entry_id, protocol)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'protocol', protocol);
			client.queue_service_action_call('livestream', 'removeLiveStreamPushPublishConfiguration', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Append recorded video to live entry
		# 	 
		def append_recording(entry_id, asset_id, media_server_index, resource, duration, is_last_chunk=false)
			kparams = {}
			# Live entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Live asset id
			client.add_param(kparams, 'assetId', asset_id);
			client.add_param(kparams, 'mediaServerIndex', media_server_index);
			client.add_param(kparams, 'resource', resource);
			# in seconds
			client.add_param(kparams, 'duration', duration);
			# Is this the last recorded chunk in the current session (i.e. following a stream stop event)
			client.add_param(kparams, 'isLastChunk', is_last_chunk);
			client.queue_service_action_call('livestream', 'appendRecording', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Register media server to live entry
		# 	 
		def register_media_server(entry_id, hostname, media_server_index, application_name=KalturaNotImplemented)
			kparams = {}
			# Live entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Media server host name
			client.add_param(kparams, 'hostname', hostname);
			# Media server index primary / secondary
			client.add_param(kparams, 'mediaServerIndex', media_server_index);
			# the application to which entry is being broadcast
			client.add_param(kparams, 'applicationName', application_name);
			client.queue_service_action_call('livestream', 'registerMediaServer', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Unregister media server from live entry
		# 	 
		def unregister_media_server(entry_id, hostname, media_server_index)
			kparams = {}
			# Live entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Media server host name
			client.add_param(kparams, 'hostname', hostname);
			# Media server index primary / secondary
			client.add_param(kparams, 'mediaServerIndex', media_server_index);
			client.queue_service_action_call('livestream', 'unregisterMediaServer', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Validates all registered media servers
		# 	 
		def validate_registered_media_servers(entry_id)
			kparams = {}
			# Live entry id
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('livestream', 'validateRegisteredMediaServers', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Creates perioding metadata sync-point events on a live stream
		# 	 
		def create_periodic_sync_points(entry_id, interval, duration)
			kparams = {}
			# Kaltura live-stream entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Events interval in seconds 
			client.add_param(kparams, 'interval', interval);
			# Duration in seconds
			client.add_param(kparams, 'duration', duration);
			client.queue_service_action_call('livestream', 'createPeriodicSyncPoints', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Media Info service
	#  
	class KalturaMediaInfoService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# List media info objects by filter and pager
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('mediainfo', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Manage media servers
	#  
	class KalturaMediaServerService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Get media server by hostname
		# 	 
		def get(hostname)
			kparams = {}
			client.add_param(kparams, 'hostname', hostname);
			client.queue_service_action_call('mediaserver', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update media server status
		# 	 
		def report_status(hostname, media_server_status)
			kparams = {}
			client.add_param(kparams, 'hostname', hostname);
			client.add_param(kparams, 'mediaServerStatus', media_server_status);
			client.queue_service_action_call('mediaserver', 'reportStatus', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Media service lets you upload and manage media files (images / videos & audio)
	#  
	class KalturaMediaService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add entry
		#      
		def add(entry)
			kparams = {}
			client.add_param(kparams, 'entry', entry);
			client.queue_service_action_call('media', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Add content to media entry which is not yet associated with content (therefore is in status NO_CONTENT).
		#      If the requirement is to replace the entry's associated content, use action updateContent.
		#      
		def add_content(entry_id, resource=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'resource', resource);
			client.queue_service_action_call('media', 'addContent', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Adds new media entry by importing an HTTP or FTP URL.
		# 	 The entry will be queued for import and then for conversion.
		# 	 
		def add_from_url(media_entry, url)
			kparams = {}
			# Media entry metadata
			client.add_param(kparams, 'mediaEntry', media_entry);
			# An HTTP or FTP URL
			client.add_param(kparams, 'url', url);
			client.queue_service_action_call('media', 'addFromUrl', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Adds new media entry by importing the media file from a search provider.
		# 	 This action should be used with the search service result.
		# 	 
		def add_from_search_result(media_entry=KalturaNotImplemented, search_result=KalturaNotImplemented)
			kparams = {}
			# Media entry metadata
			client.add_param(kparams, 'mediaEntry', media_entry);
			# Result object from search service
			client.add_param(kparams, 'searchResult', search_result);
			client.queue_service_action_call('media', 'addFromSearchResult', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Add new entry after the specific media file was uploaded and the upload token id exists
		# 	 
		def add_from_uploaded_file(media_entry, upload_token_id)
			kparams = {}
			# Media entry metadata
			client.add_param(kparams, 'mediaEntry', media_entry);
			# Upload token id
			client.add_param(kparams, 'uploadTokenId', upload_token_id);
			client.queue_service_action_call('media', 'addFromUploadedFile', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Add new entry after the file was recored on the server and the token id exists
		# 	 
		def add_from_recorded_webcam(media_entry, webcam_token_id)
			kparams = {}
			# Media entry metadata
			client.add_param(kparams, 'mediaEntry', media_entry);
			# Token id for the recored webcam file
			client.add_param(kparams, 'webcamTokenId', webcam_token_id);
			client.queue_service_action_call('media', 'addFromRecordedWebcam', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Copy entry into new entry
		# 	 
		def add_from_entry(source_entry_id, media_entry=KalturaNotImplemented, source_flavor_params_id=KalturaNotImplemented)
			kparams = {}
			# Media entry id to copy from
			client.add_param(kparams, 'sourceEntryId', source_entry_id);
			# Media entry metadata
			client.add_param(kparams, 'mediaEntry', media_entry);
			# The flavor to be used as the new entry source, source flavor will be used if not specified
			client.add_param(kparams, 'sourceFlavorParamsId', source_flavor_params_id);
			client.queue_service_action_call('media', 'addFromEntry', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Copy flavor asset into new entry
		# 	 
		def add_from_flavor_asset(source_flavor_asset_id, media_entry=KalturaNotImplemented)
			kparams = {}
			# Flavor asset id to be used as the new entry source
			client.add_param(kparams, 'sourceFlavorAssetId', source_flavor_asset_id);
			# Media entry metadata
			client.add_param(kparams, 'mediaEntry', media_entry);
			client.queue_service_action_call('media', 'addFromFlavorAsset', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Convert entry
		# 	 
		def convert(entry_id, conversion_profile_id=KalturaNotImplemented, dynamic_conversion_attributes=KalturaNotImplemented)
			kparams = {}
			# Media entry id
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'conversionProfileId', conversion_profile_id);
			dynamicConversionAttributes.each do |obj|
				client.add_param(kparams, 'dynamicConversionAttributes', obj);
			end
			client.queue_service_action_call('media', 'convert', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get media entry by ID.
		# 	 
		def get(entry_id, version=-1)
			kparams = {}
			# Media entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Desired version of the data
			client.add_param(kparams, 'version', version);
			client.queue_service_action_call('media', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get MRSS by entry id
		#      XML will return as an escaped string
		#      
		def get_mrss(entry_id, extending_items_array=KalturaNotImplemented)
			kparams = {}
			# Entry id
			client.add_param(kparams, 'entryId', entry_id);
			extendingItemsArray.each do |obj|
				client.add_param(kparams, 'extendingItemsArray', obj);
			end
			client.queue_service_action_call('media', 'getMrss', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update media entry. Only the properties that were set will be updated.
		# 	 
		def update(entry_id, media_entry)
			kparams = {}
			# Media entry id to update
			client.add_param(kparams, 'entryId', entry_id);
			# Media entry metadata to update
			client.add_param(kparams, 'mediaEntry', media_entry);
			client.queue_service_action_call('media', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Replace content associated with the media entry.
		# 	 
		def update_content(entry_id, resource, conversion_profile_id=KalturaNotImplemented, advanced_options=KalturaNotImplemented)
			kparams = {}
			# Media entry id to update
			client.add_param(kparams, 'entryId', entry_id);
			# Resource to be used to replace entry media content
			client.add_param(kparams, 'resource', resource);
			# The conversion profile id to be used on the entry
			client.add_param(kparams, 'conversionProfileId', conversion_profile_id);
			# Additional update content options
			client.add_param(kparams, 'advancedOptions', advanced_options);
			client.queue_service_action_call('media', 'updateContent', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete a media entry.
		# 	 
		def delete(entry_id)
			kparams = {}
			# Media entry id to delete
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('media', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Approves media replacement
		# 	 
		def approve_replace(entry_id)
			kparams = {}
			# Media entry id to replace
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('media', 'approveReplace', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Cancels media replacement
		# 	 
		def cancel_replace(entry_id)
			kparams = {}
			# Media entry id to cancel
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('media', 'cancelReplace', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List media entries by filter with paging support.
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			# Media entry filter
			client.add_param(kparams, 'filter', filter);
			# Pager
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('media', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Count media entries by filter.
		# 	 
		def count(filter=KalturaNotImplemented)
			kparams = {}
			# Media entry filter
			client.add_param(kparams, 'filter', filter);
			client.queue_service_action_call('media', 'count', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Upload a media file to Kaltura, then the file can be used to create a media entry.
		# 	 
		def upload(file_data)
			kparams = {}
			# The file data
			client.add_param(kparams, 'fileData', file_data);
			client.queue_service_action_call('media', 'upload', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update media entry thumbnail by a specified time offset (In seconds)
		# 	 If flavor params id not specified, source flavor will be used by default
		# 	 
		def update_thumbnail(entry_id, time_offset, flavor_params_id=KalturaNotImplemented)
			kparams = {}
			# Media entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Time offset (in seconds)
			client.add_param(kparams, 'timeOffset', time_offset);
			# The flavor params id to be used
			client.add_param(kparams, 'flavorParamsId', flavor_params_id);
			client.queue_service_action_call('media', 'updateThumbnail', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update media entry thumbnail from a different entry by a specified time offset (In seconds)
		# 	 If flavor params id not specified, source flavor will be used by default
		# 	 
		def update_thumbnail_from_source_entry(entry_id, source_entry_id, time_offset, flavor_params_id=KalturaNotImplemented)
			kparams = {}
			# Media entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Media entry id
			client.add_param(kparams, 'sourceEntryId', source_entry_id);
			# Time offset (in seconds)
			client.add_param(kparams, 'timeOffset', time_offset);
			# The flavor params id to be used
			client.add_param(kparams, 'flavorParamsId', flavor_params_id);
			client.queue_service_action_call('media', 'updateThumbnailFromSourceEntry', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update media entry thumbnail using a raw jpeg file
		# 	 
		def update_thumbnail_jpeg(entry_id, file_data)
			kparams = {}
			# Media entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Jpeg file data
			client.add_param(kparams, 'fileData', file_data);
			client.queue_service_action_call('media', 'updateThumbnailJpeg', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update entry thumbnail using url
		# 	 
		def update_thumbnail_from_url(entry_id, url)
			kparams = {}
			# Media entry id
			client.add_param(kparams, 'entryId', entry_id);
			# file url
			client.add_param(kparams, 'url', url);
			client.queue_service_action_call('media', 'updateThumbnailFromUrl', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Request a new conversion job, this can be used to convert the media entry to a different format
		# 	 
		def request_conversion(entry_id, file_format)
			kparams = {}
			# Media entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Format to convert
			client.add_param(kparams, 'fileFormat', file_format);
			client.queue_service_action_call('media', 'requestConversion', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Flag inappropriate media entry for moderation
		# 	 
		def flag(moderation_flag)
			kparams = {}
			client.add_param(kparams, 'moderationFlag', moderation_flag);
			client.queue_service_action_call('media', 'flag', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Reject the media entry and mark the pending flags (if any) as moderated (this will make the entry non playable)
		# 	 
		def reject(entry_id)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('media', 'reject', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Approve the media entry and mark the pending flags (if any) as moderated (this will make the entry playable)
		# 	 
		def approve(entry_id)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('media', 'approve', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List all pending flags for the media entry
		# 	 
		def list_flags(entry_id, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('media', 'listFlags', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Anonymously rank a media entry, no validation is done on duplicate rankings
		# 	 
		def anonymous_rank(entry_id, rank)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'rank', rank);
			client.queue_service_action_call('media', 'anonymousRank', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Add new bulk upload batch job
		# 	 Conversion profile id can be specified in the API or in the CSV file, the one in the CSV file will be stronger.
		# 	 If no conversion profile was specified, partner's default will be used
		# 	 
		def bulk_upload_add(file_data, bulk_upload_data=KalturaNotImplemented, bulk_upload_entry_data=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'fileData', file_data);
			client.add_param(kparams, 'bulkUploadData', bulk_upload_data);
			client.add_param(kparams, 'bulkUploadEntryData', bulk_upload_entry_data);
			client.queue_service_action_call('media', 'bulkUploadAdd', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# A Mix is an XML unique format invented by Kaltura, it allows the user to create a mix of videos and images, in and out points, transitions, text overlays, soundtrack, effects and much more...
	#  Mixing service lets you create a new mix, manage its metadata and make basic manipulations.   
	#  
	class KalturaMixingService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Adds a new mix.
		# 	 If the dataContent is null, a default timeline will be created.
		# 	 
		def add(mix_entry)
			kparams = {}
			# Mix entry metadata
			client.add_param(kparams, 'mixEntry', mix_entry);
			client.queue_service_action_call('mixing', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get mix entry by id.
		# 	 
		def get(entry_id, version=-1)
			kparams = {}
			# Mix entry id
			client.add_param(kparams, 'entryId', entry_id);
			# Desired version of the data
			client.add_param(kparams, 'version', version);
			client.queue_service_action_call('mixing', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update mix entry. Only the properties that were set will be updated.
		# 	 
		def update(entry_id, mix_entry)
			kparams = {}
			# Mix entry id to update
			client.add_param(kparams, 'entryId', entry_id);
			# Mix entry metadata to update
			client.add_param(kparams, 'mixEntry', mix_entry);
			client.queue_service_action_call('mixing', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete a mix entry.
		# 	 
		def delete(entry_id)
			kparams = {}
			# Mix entry id to delete
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('mixing', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List entries by filter with paging support.
		# 	 Return parameter is an array of mix entries.
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			# Mix entry filter
			client.add_param(kparams, 'filter', filter);
			# Pager
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('mixing', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Count mix entries by filter.
		# 	 
		def count(filter=KalturaNotImplemented)
			kparams = {}
			# Media entry filter
			client.add_param(kparams, 'filter', filter);
			client.queue_service_action_call('mixing', 'count', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Clones an existing mix.
		# 	 
		def clone(entry_id)
			kparams = {}
			# Mix entry id to clone
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('mixing', 'clone', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Appends a media entry to a the end of the mix timeline, this will save the mix timeline as a new version.
		# 	 
		def append_media_entry(mix_entry_id, media_entry_id)
			kparams = {}
			# Mix entry to append to its timeline
			client.add_param(kparams, 'mixEntryId', mix_entry_id);
			# Media entry to append to the timeline
			client.add_param(kparams, 'mediaEntryId', media_entry_id);
			client.queue_service_action_call('mixing', 'appendMediaEntry', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get the mixes in which the media entry is included
		# 	 
		def get_mixes_by_media_id(media_entry_id)
			kparams = {}
			client.add_param(kparams, 'mediaEntryId', media_entry_id);
			client.queue_service_action_call('mixing', 'getMixesByMediaId', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get all ready media entries that exist in the given mix id
		# 	 
		def get_ready_media_entries(mix_id, version=-1)
			kparams = {}
			client.add_param(kparams, 'mixId', mix_id);
			# Desired version to get the data from
			client.add_param(kparams, 'version', version);
			client.queue_service_action_call('mixing', 'getReadyMediaEntries', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Anonymously rank a mix entry, no validation is done on duplicate rankings
		# 	 
		def anonymous_rank(entry_id, rank)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'rank', rank);
			client.queue_service_action_call('mixing', 'anonymousRank', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Notification Service
	#  
	class KalturaNotificationService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Return the notifications for a specific entry id and type
		# 	 
		def get_client_notification(entry_id, type)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'type', type);
			client.queue_service_action_call('notification', 'getClientNotification', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# partner service allows you to change/manage your partner personal details and settings as well
	#  
	class KalturaPartnerService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Create a new Partner object
		# 	 
		def register(partner, cms_password='', template_partner_id=KalturaNotImplemented, silent=false)
			kparams = {}
			client.add_param(kparams, 'partner', partner);
			client.add_param(kparams, 'cmsPassword', cms_password);
			client.add_param(kparams, 'templatePartnerId', template_partner_id);
			client.add_param(kparams, 'silent', silent);
			client.queue_service_action_call('partner', 'register', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update details and settings of an existing partner
		# 	 
		def update(partner, allow_empty=false)
			kparams = {}
			client.add_param(kparams, 'partner', partner);
			client.add_param(kparams, 'allowEmpty', allow_empty);
			client.queue_service_action_call('partner', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve partner object by Id
		# 	 
		def get(id=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('partner', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve partner secret and admin secret
		# 	 
		def get_secrets(partner_id, admin_email, cms_password)
			kparams = {}
			client.add_param(kparams, 'partnerId', partner_id);
			client.add_param(kparams, 'adminEmail', admin_email);
			client.add_param(kparams, 'cmsPassword', cms_password);
			client.queue_service_action_call('partner', 'getSecrets', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve all info attributed to the partner
		# 	 This action expects no parameters. It returns information for the current KS partnerId.
		# 	 
		def get_info()
			kparams = {}
			client.queue_service_action_call('partner', 'getInfo', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get usage statistics for a partner
		# 	 Calculation is done according to partner's package
		# 	 Additional data returned is a graph points of streaming usage in a timeframe
		# 	 The resolution can be "days" or "months"
		# 	 
		def get_usage(year='', month=1, resolution=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'year', year);
			client.add_param(kparams, 'month', month);
			client.add_param(kparams, 'resolution', resolution);
			client.queue_service_action_call('partner', 'getUsage', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get usage statistics for a partner
		# 	 Calculation is done according to partner's package
		# 	 
		def get_statistics()
			kparams = {}
			client.queue_service_action_call('partner', 'getStatistics', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve a list of partner objects which the current user is allowed to access.
		# 	 
		def list_partners_for_user(partner_filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'partnerFilter', partner_filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('partner', 'listPartnersForUser', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List partners by filter with paging support
		# 	 Current implementation will only list the sub partners of the partner initiating the api call (using the current KS).
		# 	 This action is only partially implemented to support listing sub partners of a VAR partner.
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('partner', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List partner's current processes' statuses
		# 	 
		def list_feature_status()
			kparams = {}
			client.queue_service_action_call('partner', 'listFeatureStatus', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Count partner's existing sub-publishers (count includes the partner itself).
		# 	 
		def count(filter=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.queue_service_action_call('partner', 'count', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# PermissionItem service lets you create and manage permission items
	#  
	class KalturaPermissionItemService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Adds a new permission item object to the account.
		# 	 This action is available only to Kaltura system administrators.
		# 	 
		def add(permission_item)
			kparams = {}
			# The new permission item
			client.add_param(kparams, 'permissionItem', permission_item);
			client.queue_service_action_call('permissionitem', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieves a permission item object using its ID.
		# 	 
		def get(permission_item_id)
			kparams = {}
			# The permission item's unique identifier
			client.add_param(kparams, 'permissionItemId', permission_item_id);
			client.queue_service_action_call('permissionitem', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Updates an existing permission item object.
		# 	 This action is available only to Kaltura system administrators.
		# 	 
		def update(permission_item_id, permission_item)
			kparams = {}
			# The permission item's unique identifier
			client.add_param(kparams, 'permissionItemId', permission_item_id);
			# Id The permission item's unique identifier
			client.add_param(kparams, 'permissionItem', permission_item);
			client.queue_service_action_call('permissionitem', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Deletes an existing permission item object.
		# 	 This action is available only to Kaltura system administrators.
		# 	 
		def delete(permission_item_id)
			kparams = {}
			# The permission item's unique identifier
			client.add_param(kparams, 'permissionItemId', permission_item_id);
			client.queue_service_action_call('permissionitem', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Lists permission item objects that are associated with an account.
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			# A filter used to exclude specific types of permission items
			client.add_param(kparams, 'filter', filter);
			# A limit for the number of records to display on a page
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('permissionitem', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Permission service lets you create and manage user permissions
	#  
	class KalturaPermissionService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Adds a new permission object to the account.
		# 	 
		def add(permission)
			kparams = {}
			# The new permission
			client.add_param(kparams, 'permission', permission);
			client.queue_service_action_call('permission', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieves a permission object using its ID.
		# 	 
		def get(permission_name)
			kparams = {}
			# The name assigned to the permission
			client.add_param(kparams, 'permissionName', permission_name);
			client.queue_service_action_call('permission', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Updates an existing permission object.
		# 	 
		def update(permission_name, permission)
			kparams = {}
			# The name assigned to the permission
			client.add_param(kparams, 'permissionName', permission_name);
			# Name The name assigned to the permission
			client.add_param(kparams, 'permission', permission);
			client.queue_service_action_call('permission', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Deletes an existing permission object.
		# 	 
		def delete(permission_name)
			kparams = {}
			# The name assigned to the permission
			client.add_param(kparams, 'permissionName', permission_name);
			client.queue_service_action_call('permission', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Lists permission objects that are associated with an account.
		# 	 Blocked permissions are listed unless you use a filter to exclude them.
		# 	 Blocked permissions are listed unless you use a filter to exclude them.
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			# A filter used to exclude specific types of permissions
			client.add_param(kparams, 'filter', filter);
			# A limit for the number of records to display on a page
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('permission', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieves a list of permissions that apply to the current KS.
		# 	 
		def get_current_permissions()
			kparams = {}
			client.queue_service_action_call('permission', 'getCurrentPermissions', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Playlist service lets you create,manage and play your playlists
	#  Playlists could be static (containing a fixed list of entries) or dynamic (baseed on a filter)
	#  
	class KalturaPlaylistService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add new playlist
		# 	 Note that all entries used in a playlist will become public and may appear in KalturaNetwork
		# 	 
		def add(playlist, update_stats=false)
			kparams = {}
			client.add_param(kparams, 'playlist', playlist);
			# indicates that the playlist statistics attributes should be updated synchronously now
			client.add_param(kparams, 'updateStats', update_stats);
			client.queue_service_action_call('playlist', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve a playlist
		# 	 
		def get(id, version=-1)
			kparams = {}
			client.add_param(kparams, 'id', id);
			# Desired version of the data
			client.add_param(kparams, 'version', version);
			client.queue_service_action_call('playlist', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update existing playlist
		# 	 Note - you cannot change playlist type. updated playlist must be of the same type.
		# 	 
		def update(id, playlist, update_stats=false)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'playlist', playlist);
			client.add_param(kparams, 'updateStats', update_stats);
			client.queue_service_action_call('playlist', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete existing playlist
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('playlist', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Clone an existing playlist
		# 	 
		def clone(id, new_playlist=KalturaNotImplemented)
			kparams = {}
			#  Id of the playlist to clone
			client.add_param(kparams, 'id', id);
			# Parameters defined here will override the ones in the cloned playlist
			client.add_param(kparams, 'newPlaylist', new_playlist);
			client.queue_service_action_call('playlist', 'clone', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List available playlists
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('playlist', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve playlist for playing purpose
		# 	 
		def execute(id, detailed='', playlist_context=KalturaNotImplemented, filter=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'detailed', detailed);
			client.add_param(kparams, 'playlistContext', playlist_context);
			client.add_param(kparams, 'filter', filter);
			client.queue_service_action_call('playlist', 'execute', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve playlist for playing purpose, based on content
		# 	 
		def execute_from_content(playlist_type, playlist_content, detailed='')
			kparams = {}
			client.add_param(kparams, 'playlistType', playlist_type);
			client.add_param(kparams, 'playlistContent', playlist_content);
			client.add_param(kparams, 'detailed', detailed);
			client.queue_service_action_call('playlist', 'executeFromContent', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Revrieve playlist for playing purpose, based on media entry filters
		# 	 
		def execute_from_filters(filters, total_results, detailed='')
			kparams = {}
			filters.each do |obj|
				client.add_param(kparams, 'filters', obj);
			end
			client.add_param(kparams, 'totalResults', total_results);
			client.add_param(kparams, 'detailed', detailed);
			client.queue_service_action_call('playlist', 'executeFromFilters', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve playlist statistics
		# 	 
		def get_stats_from_content(playlist_type, playlist_content)
			kparams = {}
			client.add_param(kparams, 'playlistType', playlist_type);
			client.add_param(kparams, 'playlistContent', playlist_content);
			client.queue_service_action_call('playlist', 'getStatsFromContent', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# api for getting reports data by the report type and some inputFilter
	#  
	class KalturaReportService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# report getGraphs action allows to get a graph data for a specific report. 
		# 	 
		def get_graphs(report_type, report_input_filter, dimension=KalturaNotImplemented, object_ids=KalturaNotImplemented)
			kparams = {}
			#  
			client.add_param(kparams, 'reportType', report_type);
			client.add_param(kparams, 'reportInputFilter', report_input_filter);
			client.add_param(kparams, 'dimension', dimension);
			# - one ID or more (separated by ',') of specific objects to query
			client.add_param(kparams, 'objectIds', object_ids);
			client.queue_service_action_call('report', 'getGraphs', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# report getTotal action allows to get a graph data for a specific report. 
		# 	 
		def get_total(report_type, report_input_filter, object_ids=KalturaNotImplemented)
			kparams = {}
			#  
			client.add_param(kparams, 'reportType', report_type);
			client.add_param(kparams, 'reportInputFilter', report_input_filter);
			# - one ID or more (separated by ',') of specific objects to query
			client.add_param(kparams, 'objectIds', object_ids);
			client.queue_service_action_call('report', 'getTotal', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# report getBaseTotal action allows to get a the total base for storage reports  
		# 	 
		def get_base_total(report_type, report_input_filter, object_ids=KalturaNotImplemented)
			kparams = {}
			#  
			client.add_param(kparams, 'reportType', report_type);
			client.add_param(kparams, 'reportInputFilter', report_input_filter);
			# - one ID or more (separated by ',') of specific objects to query
			client.add_param(kparams, 'objectIds', object_ids);
			client.queue_service_action_call('report', 'getBaseTotal', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# report getTable action allows to get a graph data for a specific report. 
		# 	 
		def get_table(report_type, report_input_filter, pager, order=KalturaNotImplemented, object_ids=KalturaNotImplemented)
			kparams = {}
			#  
			client.add_param(kparams, 'reportType', report_type);
			client.add_param(kparams, 'reportInputFilter', report_input_filter);
			client.add_param(kparams, 'pager', pager);
			client.add_param(kparams, 'order', order);
			# - one ID or more (separated by ',') of specific objects to query
			client.add_param(kparams, 'objectIds', object_ids);
			client.queue_service_action_call('report', 'getTable', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# will create a Csv file for the given report and return the URL to access it
		# 	 
		def get_url_for_report_as_csv(report_title, report_text, headers, report_type, report_input_filter, dimension=KalturaNotImplemented, pager=KalturaNotImplemented, order=KalturaNotImplemented, object_ids=KalturaNotImplemented)
			kparams = {}
			# The title of the report to display at top of CSV 
			client.add_param(kparams, 'reportTitle', report_title);
			# The text of the filter of the report
			client.add_param(kparams, 'reportText', report_text);
			# The headers of the columns - a map between the enumerations on the server side and the their display text  
			client.add_param(kparams, 'headers', headers);
			#  
			client.add_param(kparams, 'reportType', report_type);
			client.add_param(kparams, 'reportInputFilter', report_input_filter);
			# 	  
			client.add_param(kparams, 'dimension', dimension);
			client.add_param(kparams, 'pager', pager);
			client.add_param(kparams, 'order', order);
			# - one ID or more (separated by ',') of specific objects to query
			client.add_param(kparams, 'objectIds', object_ids);
			client.queue_service_action_call('report', 'getUrlForReportAsCsv', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Will serve a requested report
		# 	 
		def serve(id)
			kparams = {}
			# - the requested id
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('report', 'serve', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def execute(id, params=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'id', id);
			params.each do |obj|
				client.add_param(kparams, 'params', obj);
			end
			client.queue_service_action_call('report', 'execute', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def get_csv(id, params=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'id', id);
			params.each do |obj|
				client.add_param(kparams, 'params', obj);
			end
			client.queue_service_action_call('report', 'getCsv', kparams);
			return client.get_serve_url();
		end

		# Returns report CSV file executed by string params with the following convention: param1=value1;param2=value2 
		# 	 
		def get_csv_from_string_params(id, params=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'params', params);
			client.queue_service_action_call('report', 'getCsvFromStringParams', kparams);
			return client.get_serve_url();
		end
	end

	# Expose the schema definitions for syndication MRSS, bulk upload XML and other schema types. 
	#  
	class KalturaSchemaService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Serves the requested XSD according to the type and name. 
		# 	 
		def serve(type)
			kparams = {}
			#  
			client.add_param(kparams, 'type', type);
			client.queue_service_action_call('schema', 'serve', kparams);
			return client.get_serve_url();
		end
	end

	# Search service allows you to search for media in various media providers
	#  This service is being used mostly by the CW component
	#  
	class KalturaSearchService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Search for media in one of the supported media providers
		# 	 
		def search(search, pager=KalturaNotImplemented)
			kparams = {}
			# A KalturaSearch object contains the search keywords, media provider and media type
			client.add_param(kparams, 'search', search);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('search', 'search', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve extra information about media found in search action
		# 	 Some providers return only part of the fields needed to create entry from, use this action to get the rest of the fields.
		# 	 
		def get_media_info(search_result)
			kparams = {}
			# KalturaSearchResult object extends KalturaSearch and has all fields required for media:add
			client.add_param(kparams, 'searchResult', search_result);
			client.queue_service_action_call('search', 'getMediaInfo', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Search for media given a specific URL
		# 	 Kaltura supports a searchURL action on some of the media providers.
		# 	 This action will return a KalturaSearchResult object based on a given URL (assuming the media provider is supported)
		# 	 
		def search_url(media_type, url)
			kparams = {}
			client.add_param(kparams, 'mediaType', media_type);
			client.add_param(kparams, 'url', url);
			client.queue_service_action_call('search', 'searchUrl', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def external_login(search_source, user_name, password)
			kparams = {}
			client.add_param(kparams, 'searchSource', search_source);
			client.add_param(kparams, 'userName', user_name);
			client.add_param(kparams, 'password', password);
			client.queue_service_action_call('search', 'externalLogin', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Session service
	#  
	class KalturaSessionService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Start a session with Kaltura's server.
		# 	 The result KS is the session key that you should pass to all services that requires a ticket.
		# 	 
		def start(secret, user_id='', type=0, partner_id=KalturaNotImplemented, expiry=86400, privileges=KalturaNotImplemented)
			kparams = {}
			# Remember to provide the correct secret according to the sessionType you want
			client.add_param(kparams, 'secret', secret);
			client.add_param(kparams, 'userId', user_id);
			# Regular session or Admin session
			client.add_param(kparams, 'type', type);
			client.add_param(kparams, 'partnerId', partner_id);
			# KS expiry time in seconds
			client.add_param(kparams, 'expiry', expiry);
			client.add_param(kparams, 'privileges', privileges);
			client.queue_service_action_call('session', 'start', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# End a session with the Kaltura server, making the current KS invalid.
		# 	 
		def end()
			kparams = {}
			client.queue_service_action_call('session', 'end', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Start an impersonated session with Kaltura's server.
		# 	 The result KS is the session key that you should pass to all services that requires a ticket.
		# 	 
		def impersonate(secret, impersonated_partner_id, user_id='', type=0, partner_id=KalturaNotImplemented, expiry=86400, privileges=KalturaNotImplemented)
			kparams = {}
			# - should be the secret (admin or user) of the original partnerId (not impersonatedPartnerId).
			client.add_param(kparams, 'secret', secret);
			client.add_param(kparams, 'impersonatedPartnerId', impersonated_partner_id);
			# - impersonated userId
			client.add_param(kparams, 'userId', user_id);
			client.add_param(kparams, 'type', type);
			client.add_param(kparams, 'partnerId', partner_id);
			# KS expiry time in seconds
			client.add_param(kparams, 'expiry', expiry);
			client.add_param(kparams, 'privileges', privileges);
			client.queue_service_action_call('session', 'impersonate', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Start an impersonated session with Kaltura's server.
		# 	 The result KS info contains the session key that you should pass to all services that requires a ticket.
		# 	 Type, expiry and privileges won't be changed if they're not set
		# 	 
		def impersonate_by_ks(session, type=KalturaNotImplemented, expiry=KalturaNotImplemented, privileges=KalturaNotImplemented)
			kparams = {}
			# The old KS of the impersonated partner
			client.add_param(kparams, 'session', session);
			# Type of the new KS 
			client.add_param(kparams, 'type', type);
			# Expiry time in seconds of the new KS
			client.add_param(kparams, 'expiry', expiry);
			# Privileges of the new KS
			client.add_param(kparams, 'privileges', privileges);
			client.queue_service_action_call('session', 'impersonateByKs', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Parse session key and return its info
		# 	 
		def get(session=KalturaNotImplemented)
			kparams = {}
			# The KS to be parsed, keep it empty to use current session.
			client.add_param(kparams, 'session', session);
			client.queue_service_action_call('session', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Start a session for Kaltura's flash widgets
		# 	 
		def start_widget_session(widget_id, expiry=86400)
			kparams = {}
			client.add_param(kparams, 'widgetId', widget_id);
			client.add_param(kparams, 'expiry', expiry);
			client.queue_service_action_call('session', 'startWidgetSession', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Storage Profiles service
	#  
	class KalturaStorageProfileService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Adds a storage profile to the Kaltura DB.
		# 	 
		def add(storage_profile)
			kparams = {}
			client.add_param(kparams, 'storageProfile', storage_profile);
			client.queue_service_action_call('storageprofile', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def update_status(storage_id, status)
			kparams = {}
			client.add_param(kparams, 'storageId', storage_id);
			client.add_param(kparams, 'status', status);
			client.queue_service_action_call('storageprofile', 'updateStatus', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get storage profile by id
		# 	 
		def get(storage_profile_id)
			kparams = {}
			client.add_param(kparams, 'storageProfileId', storage_profile_id);
			client.queue_service_action_call('storageprofile', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update storage profile by id 
		# 	 
		def update(storage_profile_id, storage_profile)
			kparams = {}
			client.add_param(kparams, 'storageProfileId', storage_profile_id);
			# Id
			client.add_param(kparams, 'storageProfile', storage_profile);
			client.queue_service_action_call('storageprofile', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('storageprofile', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Add & Manage Syndication Feeds
	#  
	class KalturaSyndicationFeedService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add new Syndication Feed
		# 	 
		def add(syndication_feed)
			kparams = {}
			client.add_param(kparams, 'syndicationFeed', syndication_feed);
			client.queue_service_action_call('syndicationfeed', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get Syndication Feed by ID
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('syndicationfeed', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update Syndication Feed by ID
		# 	 
		def update(id, syndication_feed)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'syndicationFeed', syndication_feed);
			client.queue_service_action_call('syndicationfeed', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete Syndication Feed by ID
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('syndicationfeed', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List Syndication Feeds by filter with paging support
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('syndicationfeed', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# get entry count for a syndication feed
		# 	 
		def get_entry_count(feed_id)
			kparams = {}
			client.add_param(kparams, 'feedId', feed_id);
			client.queue_service_action_call('syndicationfeed', 'getEntryCount', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# request conversion for all entries that doesnt have the required flavor param
		# 	 returns a comma-separated ids of conversion jobs
		# 	 
		def request_conversion(feed_id)
			kparams = {}
			client.add_param(kparams, 'feedId', feed_id);
			client.queue_service_action_call('syndicationfeed', 'requestConversion', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# System service is used for internal system helpers & to retrieve system level information
	#  
	class KalturaSystemService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		def ping()
			kparams = {}
			client.queue_service_action_call('system', 'ping', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def ping_database()
			kparams = {}
			client.queue_service_action_call('system', 'pingDatabase', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def get_time()
			kparams = {}
			client.queue_service_action_call('system', 'getTime', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def get_version()
			kparams = {}
			client.queue_service_action_call('system', 'getVersion', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Retrieve information and invoke actions on Thumb Asset
	#  
	class KalturaThumbAssetService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add thumbnail asset
		#      
		def add(entry_id, thumb_asset)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'thumbAsset', thumb_asset);
			client.queue_service_action_call('thumbasset', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update content of thumbnail asset
		#      
		def set_content(id, content_resource)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'contentResource', content_resource);
			client.queue_service_action_call('thumbasset', 'setContent', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update thumbnail asset
		#      
		def update(id, thumb_asset)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'thumbAsset', thumb_asset);
			client.queue_service_action_call('thumbasset', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Serves thumbnail by entry id and thumnail params id
		# 	 
		def serve_by_entry_id(entry_id, thumb_param_id=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			# if not set, default thumbnail will be used.
			client.add_param(kparams, 'thumbParamId', thumb_param_id);
			client.queue_service_action_call('thumbasset', 'serveByEntryId', kparams);
			return client.get_serve_url();
		end

		# Serves thumbnail by its id
		# 	 
		def serve(thumb_asset_id, version=KalturaNotImplemented, thumb_params=KalturaNotImplemented, options=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'thumbAssetId', thumb_asset_id);
			client.add_param(kparams, 'version', version);
			client.add_param(kparams, 'thumbParams', thumb_params);
			client.add_param(kparams, 'options', options);
			client.queue_service_action_call('thumbasset', 'serve', kparams);
			return client.get_serve_url();
		end

		# Tags the thumbnail as DEFAULT_THUMB and removes that tag from all other thumbnail assets of the entry.
		# 	 Create a new file sync link on the entry thumbnail that points to the thumbnail asset file sync.
		# 	 
		def set_as_default(thumb_asset_id)
			kparams = {}
			client.add_param(kparams, 'thumbAssetId', thumb_asset_id);
			client.queue_service_action_call('thumbasset', 'setAsDefault', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def generate_by_entry_id(entry_id, dest_thumb_params_id)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			# indicate the id of the ThumbParams to be generate this thumbnail by
			client.add_param(kparams, 'destThumbParamsId', dest_thumb_params_id);
			client.queue_service_action_call('thumbasset', 'generateByEntryId', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def generate(entry_id, thumb_params, source_asset_id=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'thumbParams', thumb_params);
			# id of the source asset (flavor or thumbnail) to be used as source for the thumbnail generation
			client.add_param(kparams, 'sourceAssetId', source_asset_id);
			client.queue_service_action_call('thumbasset', 'generate', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def regenerate(thumb_asset_id)
			kparams = {}
			client.add_param(kparams, 'thumbAssetId', thumb_asset_id);
			client.queue_service_action_call('thumbasset', 'regenerate', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def get(thumb_asset_id)
			kparams = {}
			client.add_param(kparams, 'thumbAssetId', thumb_asset_id);
			client.queue_service_action_call('thumbasset', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def get_by_entry_id(entry_id)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.queue_service_action_call('thumbasset', 'getByEntryId', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List Thumbnail Assets by filter and pager
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('thumbasset', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def add_from_url(entry_id, url)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'url', url);
			client.queue_service_action_call('thumbasset', 'addFromUrl', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def add_from_image(entry_id, file_data)
			kparams = {}
			client.add_param(kparams, 'entryId', entry_id);
			client.add_param(kparams, 'fileData', file_data);
			client.queue_service_action_call('thumbasset', 'addFromImage', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def delete(thumb_asset_id)
			kparams = {}
			client.add_param(kparams, 'thumbAssetId', thumb_asset_id);
			client.queue_service_action_call('thumbasset', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get download URL for the asset
		# 	 
		def get_url(id, storage_id=KalturaNotImplemented, thumb_params=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'storageId', storage_id);
			client.add_param(kparams, 'thumbParams', thumb_params);
			client.queue_service_action_call('thumbasset', 'getUrl', kparams);
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
			client.queue_service_action_call('thumbasset', 'getRemotePaths', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Thumbnail Params Output service
	#  
	class KalturaThumbParamsOutputService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Get thumb params output object by ID
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('thumbparamsoutput', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List thumb params output objects by filter and pager
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('thumbparamsoutput', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Add & Manage Thumb Params
	#  
	class KalturaThumbParamsService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add new Thumb Params
		# 	 
		def add(thumb_params)
			kparams = {}
			client.add_param(kparams, 'thumbParams', thumb_params);
			client.queue_service_action_call('thumbparams', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get Thumb Params by ID
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('thumbparams', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update Thumb Params by ID
		# 	 
		def update(id, thumb_params)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'thumbParams', thumb_params);
			client.queue_service_action_call('thumbparams', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete Thumb Params by ID
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('thumbparams', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List Thumb Params by filter with paging support (By default - all system default params will be listed too)
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('thumbparams', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get Thumb Params by Conversion Profile ID
		# 	 
		def get_by_conversion_profile_id(conversion_profile_id)
			kparams = {}
			client.add_param(kparams, 'conversionProfileId', conversion_profile_id);
			client.queue_service_action_call('thumbparams', 'getByConversionProfileId', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# UiConf service lets you create and manage your UIConfs for the various flash components
	#  This service is used by the KMC-ApplicationStudio
	#  
	class KalturaUiConfService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# UIConf Add action allows you to add a UIConf to Kaltura DB
		# 	 
		def add(ui_conf)
			kparams = {}
			# Mandatory input parameter of type KalturaUiConf
			client.add_param(kparams, 'uiConf', ui_conf);
			client.queue_service_action_call('uiconf', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update an existing UIConf
		# 	 
		def update(id, ui_conf)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'uiConf', ui_conf);
			client.queue_service_action_call('uiconf', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve a UIConf by id
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('uiconf', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete an existing UIConf
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('uiconf', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Clone an existing UIConf
		# 	 
		def clone(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('uiconf', 'clone', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# retrieve a list of available template UIConfs
		# 	 
		def list_templates(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('uiconf', 'listTemplates', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve a list of available UIConfs
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('uiconf', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve a list of all available versions by object type
		# 	 
		def get_available_types()
			kparams = {}
			client.queue_service_action_call('uiconf', 'getAvailableTypes', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	class KalturaUploadService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		def upload(file_data)
			kparams = {}
			# The file data
			client.add_param(kparams, 'fileData', file_data);
			client.queue_service_action_call('upload', 'upload', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def get_uploaded_file_token_by_file_name(file_name)
			kparams = {}
			client.add_param(kparams, 'fileName', file_name);
			client.queue_service_action_call('upload', 'getUploadedFileTokenByFileName', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	class KalturaUploadTokenService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Adds new upload token to upload a file
		# 	 
		def add(upload_token=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'uploadToken', upload_token);
			client.queue_service_action_call('uploadtoken', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get upload token by id
		# 	 
		def get(upload_token_id)
			kparams = {}
			client.add_param(kparams, 'uploadTokenId', upload_token_id);
			client.queue_service_action_call('uploadtoken', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Upload a file using the upload token id, returns an error on failure (an exception will be thrown when using one of the Kaltura clients) 
		# 	 
		def upload(upload_token_id, file_data, resume=false, final_chunk=true, resume_at=-1)
			kparams = {}
			client.add_param(kparams, 'uploadTokenId', upload_token_id);
			client.add_param(kparams, 'fileData', file_data);
			client.add_param(kparams, 'resume', resume);
			client.add_param(kparams, 'finalChunk', final_chunk);
			client.add_param(kparams, 'resumeAt', resume_at);
			client.queue_service_action_call('uploadtoken', 'upload', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Deletes the upload token by upload token id
		# 	 
		def delete(upload_token_id)
			kparams = {}
			client.add_param(kparams, 'uploadTokenId', upload_token_id);
			client.queue_service_action_call('uploadtoken', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List upload token by filter with pager support. 
		# 	 When using a user session the service will be restricted to users objects only.
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('uploadtoken', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# UserRole service lets you create and manage user roles
	#  
	class KalturaUserRoleService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Adds a new user role object to the account.
		# 	 
		def add(user_role)
			kparams = {}
			# A new role
			client.add_param(kparams, 'userRole', user_role);
			client.queue_service_action_call('userrole', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieves a user role object using its ID.
		# 	 
		def get(user_role_id)
			kparams = {}
			# The user role's unique identifier
			client.add_param(kparams, 'userRoleId', user_role_id);
			client.queue_service_action_call('userrole', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Updates an existing user role object.
		# 	 
		def update(user_role_id, user_role)
			kparams = {}
			# The user role's unique identifier
			client.add_param(kparams, 'userRoleId', user_role_id);
			# Id The user role's unique identifier
			client.add_param(kparams, 'userRole', user_role);
			client.queue_service_action_call('userrole', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Deletes an existing user role object.
		# 	 
		def delete(user_role_id)
			kparams = {}
			# The user role's unique identifier
			client.add_param(kparams, 'userRoleId', user_role_id);
			client.queue_service_action_call('userrole', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Lists user role objects that are associated with an account.
		# 	 Blocked user roles are listed unless you use a filter to exclude them.
		# 	 Deleted user roles are not listed unless you use a filter to include them.
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			# A filter used to exclude specific types of user roles
			client.add_param(kparams, 'filter', filter);
			# A limit for the number of records to display on a page
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('userrole', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Creates a new user role object that is a duplicate of an existing role.
		# 	 
		def clone(user_role_id)
			kparams = {}
			# The user role's unique identifier
			client.add_param(kparams, 'userRoleId', user_role_id);
			client.queue_service_action_call('userrole', 'clone', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Manage partner users on Kaltura's side
	#  The userId in kaltura is the unique Id in the partner's system, and the [partnerId,Id] couple are unique key in kaltura's DB
	#  
	class KalturaUserService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Adds a new user to an existing account in the Kaltura database.
		# 	 Input param $id is the unique identifier in the partner's system.
		# 	 
		def add(user)
			kparams = {}
			# The new user
			client.add_param(kparams, 'user', user);
			client.queue_service_action_call('user', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Updates an existing user object.
		# 	 You can also use this action to update the userId.
		# 	 
		def update(user_id, user)
			kparams = {}
			# The user's unique identifier in the partner's system
			client.add_param(kparams, 'userId', user_id);
			# Id The user's unique identifier in the partner's system
			client.add_param(kparams, 'user', user);
			client.queue_service_action_call('user', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieves a user object for a specified user ID.
		# 	 
		def get(user_id=KalturaNotImplemented)
			kparams = {}
			# The user's unique identifier in the partner's system
			client.add_param(kparams, 'userId', user_id);
			client.queue_service_action_call('user', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieves a user object for a user's login ID and partner ID.
		# 	 A login ID is the email address used by a user to log into the system.
		# 	 
		def get_by_login_id(login_id)
			kparams = {}
			# The user's email address that identifies the user for login
			client.add_param(kparams, 'loginId', login_id);
			client.queue_service_action_call('user', 'getByLoginId', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Deletes a user from a partner account.
		# 	 
		def delete(user_id)
			kparams = {}
			# The user's unique identifier in the partner's system
			client.add_param(kparams, 'userId', user_id);
			client.queue_service_action_call('user', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Lists user objects that are associated with an account.
		# 	 Blocked users are listed unless you use a filter to exclude them.
		# 	 Deleted users are not listed unless you use a filter to include them.
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			# A filter used to exclude specific types of users
			client.add_param(kparams, 'filter', filter);
			# A limit for the number of records to display on a page
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('user', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Notifies that a user is banned from an account.
		# 	 
		def notify_ban(user_id)
			kparams = {}
			# The user's unique identifier in the partner's system
			client.add_param(kparams, 'userId', user_id);
			client.queue_service_action_call('user', 'notifyBan', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Logs a user into a partner account with a partner ID, a partner user ID (puser), and a user password.
		# 	 
		def login(partner_id, user_id, password, expiry=86400, privileges='*')
			kparams = {}
			# The identifier of the partner account
			client.add_param(kparams, 'partnerId', partner_id);
			# The user's unique identifier in the partner's system
			client.add_param(kparams, 'userId', user_id);
			# The user's password
			client.add_param(kparams, 'password', password);
			# The requested time (in seconds) before the generated KS expires (By default, a KS expires after 24 hours).
			client.add_param(kparams, 'expiry', expiry);
			# Special privileges
			client.add_param(kparams, 'privileges', privileges);
			client.queue_service_action_call('user', 'login', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Logs a user into a partner account with a user login ID and a user password.
		# 	 
		def login_by_login_id(login_id, password, partner_id=KalturaNotImplemented, expiry=86400, privileges='*')
			kparams = {}
			# The user's email address that identifies the user for login
			client.add_param(kparams, 'loginId', login_id);
			# The user's password
			client.add_param(kparams, 'password', password);
			# The identifier of the partner account
			client.add_param(kparams, 'partnerId', partner_id);
			# The requested time (in seconds) before the generated KS expires (By default, a KS expires after 24 hours).
			client.add_param(kparams, 'expiry', expiry);
			# Special privileges
			client.add_param(kparams, 'privileges', privileges);
			client.queue_service_action_call('user', 'loginByLoginId', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Updates a user's login data: email, password, name.
		# 	 
		def update_login_data(old_login_id, password, new_login_id='', new_password='', new_first_name=KalturaNotImplemented, new_last_name=KalturaNotImplemented)
			kparams = {}
			# The user's current email address that identified the user for login
			client.add_param(kparams, 'oldLoginId', old_login_id);
			# The user's current email address that identified the user for login
			client.add_param(kparams, 'password', password);
			# Optional, The user's email address that will identify the user for login
			client.add_param(kparams, 'newLoginId', new_login_id);
			# Optional, The user's new password
			client.add_param(kparams, 'newPassword', new_password);
			# Optional, The user's new first name
			client.add_param(kparams, 'newFirstName', new_first_name);
			# Optional, The user's new last name
			client.add_param(kparams, 'newLastName', new_last_name);
			client.queue_service_action_call('user', 'updateLoginData', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Reset user's password and send the user an email to generate a new one.
		# 	 
		def reset_password(email)
			kparams = {}
			# The user's email address (login email)
			client.add_param(kparams, 'email', email);
			client.queue_service_action_call('user', 'resetPassword', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Set initial users password
		# 	 
		def set_initial_password(hash_key, new_password)
			kparams = {}
			# The hash key used to identify the user (retrieved by email)
			client.add_param(kparams, 'hashKey', hash_key);
			# The new password to set for the user
			client.add_param(kparams, 'newPassword', new_password);
			client.queue_service_action_call('user', 'setInitialPassword', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Enables a user to log into a partner account using an email address and a password
		# 	 
		def enable_login(user_id, login_id, password=KalturaNotImplemented)
			kparams = {}
			# The user's unique identifier in the partner's system
			client.add_param(kparams, 'userId', user_id);
			# The user's email address that identifies the user for login
			client.add_param(kparams, 'loginId', login_id);
			# The user's password
			client.add_param(kparams, 'password', password);
			client.queue_service_action_call('user', 'enableLogin', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Disables a user's ability to log into a partner account using an email address and a password.
		# 	 You may use either a userId or a loginId parameter for this action.
		# 	 
		def disable_login(user_id=KalturaNotImplemented, login_id=KalturaNotImplemented)
			kparams = {}
			# The user's unique identifier in the partner's system
			client.add_param(kparams, 'userId', user_id);
			# The user's email address that identifies the user for login
			client.add_param(kparams, 'loginId', login_id);
			client.queue_service_action_call('user', 'disableLogin', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Index an entry by id.
		# 	 
		def index(id, should_update=true)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'shouldUpdate', should_update);
			client.queue_service_action_call('user', 'index', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def add_from_bulk_upload(file_data, bulk_upload_data=KalturaNotImplemented, bulk_upload_user_data=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'fileData', file_data);
			client.add_param(kparams, 'bulkUploadData', bulk_upload_data);
			client.add_param(kparams, 'bulkUploadUserData', bulk_upload_user_data);
			client.queue_service_action_call('user', 'addFromBulkUpload', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Action which checks whther user login 
		#      
		def check_login_data_exists(filter)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.queue_service_action_call('user', 'checkLoginDataExists', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# widget service for full widget management
	#  
	class KalturaWidgetService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add new widget, can be attached to entry or kshow
		# 	 SourceWidget is ignored.
		# 	 
		def add(widget)
			kparams = {}
			client.add_param(kparams, 'widget', widget);
			client.queue_service_action_call('widget', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update exisiting widget
		#  	 
		def update(id, widget)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'widget', widget);
			client.queue_service_action_call('widget', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Get widget by id
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('widget', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Add widget based on existing widget.
		# 	 Must provide valid sourceWidgetId
		# 	 
		def clone(widget)
			kparams = {}
			client.add_param(kparams, 'widget', widget);
			client.queue_service_action_call('widget', 'clone', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve a list of available widget depends on the filter given
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('widget', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	# Internal Service is used for actions that are used internally in Kaltura applications and might be changed in the future without any notice.
	#  
	class KalturaXInternalService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Creates new download job for multiple entry ids (comma separated), an email will be sent when the job is done
		# 	 This sevice support the following entries: 
		# 	 - MediaEntry
		# 	 - Video will be converted using the flavor params id
		# 	 - Audio will be downloaded as MP3
		# 	 - Image will be downloaded as Jpeg
		# 	 - MixEntry will be flattened using the flavor params id
		# 	 - Other entry types are not supported
		# 	 Returns the admin email that the email message will be sent to 
		# 	 
		def x_add_bulk_download(entry_ids, flavor_params_id='')
			kparams = {}
			# Comma separated list of entry ids
			client.add_param(kparams, 'entryIds', entry_ids);
			client.add_param(kparams, 'flavorParamsId', flavor_params_id);
			client.queue_service_action_call('xinternal', 'xAddBulkDownload', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	class KalturaClient < KalturaClientBase
		attr_reader :access_control_profile_service
		def access_control_profile_service
			if (@access_control_profile_service == nil)
				@access_control_profile_service = KalturaAccessControlProfileService.new(self)
			end
			return @access_control_profile_service
		end
		attr_reader :access_control_service
		def access_control_service
			if (@access_control_service == nil)
				@access_control_service = KalturaAccessControlService.new(self)
			end
			return @access_control_service
		end
		attr_reader :admin_user_service
		def admin_user_service
			if (@admin_user_service == nil)
				@admin_user_service = KalturaAdminUserService.new(self)
			end
			return @admin_user_service
		end
		attr_reader :base_entry_service
		def base_entry_service
			if (@base_entry_service == nil)
				@base_entry_service = KalturaBaseEntryService.new(self)
			end
			return @base_entry_service
		end
		attr_reader :bulk_upload_service
		def bulk_upload_service
			if (@bulk_upload_service == nil)
				@bulk_upload_service = KalturaBulkUploadService.new(self)
			end
			return @bulk_upload_service
		end
		attr_reader :category_entry_service
		def category_entry_service
			if (@category_entry_service == nil)
				@category_entry_service = KalturaCategoryEntryService.new(self)
			end
			return @category_entry_service
		end
		attr_reader :category_service
		def category_service
			if (@category_service == nil)
				@category_service = KalturaCategoryService.new(self)
			end
			return @category_service
		end
		attr_reader :category_user_service
		def category_user_service
			if (@category_user_service == nil)
				@category_user_service = KalturaCategoryUserService.new(self)
			end
			return @category_user_service
		end
		attr_reader :conversion_profile_asset_params_service
		def conversion_profile_asset_params_service
			if (@conversion_profile_asset_params_service == nil)
				@conversion_profile_asset_params_service = KalturaConversionProfileAssetParamsService.new(self)
			end
			return @conversion_profile_asset_params_service
		end
		attr_reader :conversion_profile_service
		def conversion_profile_service
			if (@conversion_profile_service == nil)
				@conversion_profile_service = KalturaConversionProfileService.new(self)
			end
			return @conversion_profile_service
		end
		attr_reader :data_service
		def data_service
			if (@data_service == nil)
				@data_service = KalturaDataService.new(self)
			end
			return @data_service
		end
		attr_reader :delivery_profile_service
		def delivery_profile_service
			if (@delivery_profile_service == nil)
				@delivery_profile_service = KalturaDeliveryProfileService.new(self)
			end
			return @delivery_profile_service
		end
		attr_reader :document_service
		def document_service
			if (@document_service == nil)
				@document_service = KalturaDocumentService.new(self)
			end
			return @document_service
		end
		attr_reader :email_ingestion_profile_service
		def email_ingestion_profile_service
			if (@email_ingestion_profile_service == nil)
				@email_ingestion_profile_service = KalturaEmailIngestionProfileService.new(self)
			end
			return @email_ingestion_profile_service
		end
		attr_reader :file_asset_service
		def file_asset_service
			if (@file_asset_service == nil)
				@file_asset_service = KalturaFileAssetService.new(self)
			end
			return @file_asset_service
		end
		attr_reader :flavor_asset_service
		def flavor_asset_service
			if (@flavor_asset_service == nil)
				@flavor_asset_service = KalturaFlavorAssetService.new(self)
			end
			return @flavor_asset_service
		end
		attr_reader :flavor_params_output_service
		def flavor_params_output_service
			if (@flavor_params_output_service == nil)
				@flavor_params_output_service = KalturaFlavorParamsOutputService.new(self)
			end
			return @flavor_params_output_service
		end
		attr_reader :flavor_params_service
		def flavor_params_service
			if (@flavor_params_service == nil)
				@flavor_params_service = KalturaFlavorParamsService.new(self)
			end
			return @flavor_params_service
		end
		attr_reader :live_channel_segment_service
		def live_channel_segment_service
			if (@live_channel_segment_service == nil)
				@live_channel_segment_service = KalturaLiveChannelSegmentService.new(self)
			end
			return @live_channel_segment_service
		end
		attr_reader :live_channel_service
		def live_channel_service
			if (@live_channel_service == nil)
				@live_channel_service = KalturaLiveChannelService.new(self)
			end
			return @live_channel_service
		end
		attr_reader :live_reports_service
		def live_reports_service
			if (@live_reports_service == nil)
				@live_reports_service = KalturaLiveReportsService.new(self)
			end
			return @live_reports_service
		end
		attr_reader :stats_service
		def stats_service
			if (@stats_service == nil)
				@stats_service = KalturaStatsService.new(self)
			end
			return @stats_service
		end
		attr_reader :live_stream_service
		def live_stream_service
			if (@live_stream_service == nil)
				@live_stream_service = KalturaLiveStreamService.new(self)
			end
			return @live_stream_service
		end
		attr_reader :media_info_service
		def media_info_service
			if (@media_info_service == nil)
				@media_info_service = KalturaMediaInfoService.new(self)
			end
			return @media_info_service
		end
		attr_reader :media_server_service
		def media_server_service
			if (@media_server_service == nil)
				@media_server_service = KalturaMediaServerService.new(self)
			end
			return @media_server_service
		end
		attr_reader :media_service
		def media_service
			if (@media_service == nil)
				@media_service = KalturaMediaService.new(self)
			end
			return @media_service
		end
		attr_reader :mixing_service
		def mixing_service
			if (@mixing_service == nil)
				@mixing_service = KalturaMixingService.new(self)
			end
			return @mixing_service
		end
		attr_reader :notification_service
		def notification_service
			if (@notification_service == nil)
				@notification_service = KalturaNotificationService.new(self)
			end
			return @notification_service
		end
		attr_reader :partner_service
		def partner_service
			if (@partner_service == nil)
				@partner_service = KalturaPartnerService.new(self)
			end
			return @partner_service
		end
		attr_reader :permission_item_service
		def permission_item_service
			if (@permission_item_service == nil)
				@permission_item_service = KalturaPermissionItemService.new(self)
			end
			return @permission_item_service
		end
		attr_reader :permission_service
		def permission_service
			if (@permission_service == nil)
				@permission_service = KalturaPermissionService.new(self)
			end
			return @permission_service
		end
		attr_reader :playlist_service
		def playlist_service
			if (@playlist_service == nil)
				@playlist_service = KalturaPlaylistService.new(self)
			end
			return @playlist_service
		end
		attr_reader :report_service
		def report_service
			if (@report_service == nil)
				@report_service = KalturaReportService.new(self)
			end
			return @report_service
		end
		attr_reader :schema_service
		def schema_service
			if (@schema_service == nil)
				@schema_service = KalturaSchemaService.new(self)
			end
			return @schema_service
		end
		attr_reader :search_service
		def search_service
			if (@search_service == nil)
				@search_service = KalturaSearchService.new(self)
			end
			return @search_service
		end
		attr_reader :session_service
		def session_service
			if (@session_service == nil)
				@session_service = KalturaSessionService.new(self)
			end
			return @session_service
		end
		attr_reader :storage_profile_service
		def storage_profile_service
			if (@storage_profile_service == nil)
				@storage_profile_service = KalturaStorageProfileService.new(self)
			end
			return @storage_profile_service
		end
		attr_reader :syndication_feed_service
		def syndication_feed_service
			if (@syndication_feed_service == nil)
				@syndication_feed_service = KalturaSyndicationFeedService.new(self)
			end
			return @syndication_feed_service
		end
		attr_reader :system_service
		def system_service
			if (@system_service == nil)
				@system_service = KalturaSystemService.new(self)
			end
			return @system_service
		end
		attr_reader :thumb_asset_service
		def thumb_asset_service
			if (@thumb_asset_service == nil)
				@thumb_asset_service = KalturaThumbAssetService.new(self)
			end
			return @thumb_asset_service
		end
		attr_reader :thumb_params_output_service
		def thumb_params_output_service
			if (@thumb_params_output_service == nil)
				@thumb_params_output_service = KalturaThumbParamsOutputService.new(self)
			end
			return @thumb_params_output_service
		end
		attr_reader :thumb_params_service
		def thumb_params_service
			if (@thumb_params_service == nil)
				@thumb_params_service = KalturaThumbParamsService.new(self)
			end
			return @thumb_params_service
		end
		attr_reader :ui_conf_service
		def ui_conf_service
			if (@ui_conf_service == nil)
				@ui_conf_service = KalturaUiConfService.new(self)
			end
			return @ui_conf_service
		end
		attr_reader :upload_service
		def upload_service
			if (@upload_service == nil)
				@upload_service = KalturaUploadService.new(self)
			end
			return @upload_service
		end
		attr_reader :upload_token_service
		def upload_token_service
			if (@upload_token_service == nil)
				@upload_token_service = KalturaUploadTokenService.new(self)
			end
			return @upload_token_service
		end
		attr_reader :user_role_service
		def user_role_service
			if (@user_role_service == nil)
				@user_role_service = KalturaUserRoleService.new(self)
			end
			return @user_role_service
		end
		attr_reader :user_service
		def user_service
			if (@user_service == nil)
				@user_service = KalturaUserService.new(self)
			end
			return @user_service
		end
		attr_reader :widget_service
		def widget_service
			if (@widget_service == nil)
				@widget_service = KalturaWidgetService.new(self)
			end
			return @widget_service
		end
		attr_reader :x_internal_service
		def x_internal_service
			if (@x_internal_service == nil)
				@x_internal_service = KalturaXInternalService.new(self)
			end
			return @x_internal_service
		end
	end

end
