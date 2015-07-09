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

	class KalturaEventNotificationTemplateStatus
		DISABLED = 1
		ACTIVE = 2
		DELETED = 3
	end

	class KalturaEventNotificationEventObjectType
		AD_CUE_POINT = "adCuePointEventNotifications.AdCuePoint"
		ANNOTATION = "annotationEventNotifications.Annotation"
		CAPTION_ASSET = "captionAssetEventNotifications.CaptionAsset"
		CODE_CUE_POINT = "codeCuePointEventNotifications.CodeCuePoint"
		DISTRIBUTION_PROFILE = "contentDistributionEventNotifications.DistributionProfile"
		ENTRY_DISTRIBUTION = "contentDistributionEventNotifications.EntryDistribution"
		CUE_POINT = "cuePointEventNotifications.CuePoint"
		METADATA = "metadataEventNotifications.Metadata"
		ENTRY = "1"
		CATEGORY = "2"
		ASSET = "3"
		FLAVORASSET = "4"
		THUMBASSET = "5"
		KUSER = "8"
		ACCESSCONTROL = "9"
		BATCHJOB = "10"
		BULKUPLOADRESULT = "11"
		CATEGORYKUSER = "12"
		CONVERSIONPROFILE2 = "14"
		FLAVORPARAMS = "15"
		FLAVORPARAMSCONVERSIONPROFILE = "16"
		FLAVORPARAMSOUTPUT = "17"
		GENERICSYNDICATIONFEED = "18"
		KUSERTOUSERROLE = "19"
		PARTNER = "20"
		PERMISSION = "21"
		PERMISSIONITEM = "22"
		PERMISSIONTOPERMISSIONITEM = "23"
		SCHEDULER = "24"
		SCHEDULERCONFIG = "25"
		SCHEDULERSTATUS = "26"
		SCHEDULERWORKER = "27"
		STORAGEPROFILE = "28"
		SYNDICATIONFEED = "29"
		THUMBPARAMS = "31"
		THUMBPARAMSOUTPUT = "32"
		UPLOADTOKEN = "33"
		USERLOGINDATA = "34"
		USERROLE = "35"
		WIDGET = "36"
		CATEGORYENTRY = "37"
	end

	class KalturaEventNotificationEventType
		BATCH_JOB_STATUS = "1"
		OBJECT_ADDED = "2"
		OBJECT_CHANGED = "3"
		OBJECT_COPIED = "4"
		OBJECT_CREATED = "5"
		OBJECT_DATA_CHANGED = "6"
		OBJECT_DELETED = "7"
		OBJECT_ERASED = "8"
		OBJECT_READY_FOR_REPLACMENT = "9"
		OBJECT_SAVED = "10"
		OBJECT_UPDATED = "11"
		OBJECT_REPLACED = "12"
		OBJECT_READY_FOR_INDEX = "13"
	end

	class KalturaEventNotificationTemplateOrderBy
		CREATED_AT_ASC = "+createdAt"
		ID_ASC = "+id"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		ID_DESC = "-id"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaEventNotificationTemplateType
		EMAIL = "emailNotification.Email"
		HTTP = "httpNotification.Http"
	end

	class KalturaEventNotificationParameter < KalturaObjectBase
		# The key in the subject and body to be replaced with the dynamic value
		# 	 
		attr_accessor :key
		attr_accessor :description
		# The dynamic value to be placed in the final output
		# 	 
		attr_accessor :value

	end

	class KalturaEventNotificationTemplate < KalturaObjectBase
		attr_accessor :id
		attr_accessor :partner_id
		attr_accessor :name
		attr_accessor :system_name
		attr_accessor :description
		attr_accessor :type
		attr_accessor :status
		attr_accessor :created_at
		attr_accessor :updated_at
		# Define that the template could be dispatched manually from the API
		# 	 
		attr_accessor :manual_dispatch_enabled
		# Define that the template could be dispatched automatically by the system
		# 	 
		attr_accessor :automatic_dispatch_enabled
		# Define the event that should trigger this notification
		# 	 
		attr_accessor :event_type
		# Define the object that raied the event that should trigger this notification
		# 	 
		attr_accessor :event_object_type
		# Define the conditions that cause this notification to be triggered
		# 	 
		attr_accessor :event_conditions
		# Define the content dynamic parameters
		# 	 
		attr_accessor :content_parameters
		# Define the content dynamic parameters
		# 	 
		attr_accessor :user_parameters

		def id=(val)
			@id = val.to_i
		end
		def partner_id=(val)
			@partner_id = val.to_i
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
		def manual_dispatch_enabled=(val)
			@manual_dispatch_enabled = to_b(val)
		end
		def automatic_dispatch_enabled=(val)
			@automatic_dispatch_enabled = to_b(val)
		end
	end

	class KalturaEventNotificationTemplateListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaEventFieldCondition < KalturaCondition
		# The field to be evaluated at runtime
		# 	 
		attr_accessor :field

	end

	class KalturaEventNotificationArrayParameter < KalturaEventNotificationParameter
		attr_accessor :values
		# Used to restrict the values to close list
		# 	 
		attr_accessor :allowed_values

	end

	class KalturaEventNotificationDispatchJobData < KalturaJobData
		attr_accessor :template_id
		# Define the content dynamic parameters
		# 	 
		attr_accessor :content_parameters

		def template_id=(val)
			@template_id = val.to_i
		end
	end

	class KalturaEventNotificationScope < KalturaScope
		attr_accessor :object_id
		attr_accessor :scope_object_type

	end

	class KalturaEventNotificationTemplateBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :partner_id_equal
		attr_accessor :partner_id_in
		attr_accessor :system_name_equal
		attr_accessor :system_name_in
		attr_accessor :type_equal
		attr_accessor :type_in
		attr_accessor :status_equal
		attr_accessor :status_in
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

	class KalturaEventObjectChangedCondition < KalturaCondition
		# Comma seperated column names to be tested
		# 	 
		attr_accessor :modified_columns

	end

	class KalturaEventNotificationTemplateFilter < KalturaEventNotificationTemplateBaseFilter

	end


	# Event notification template service lets you create and manage event notification templates
	#  
	class KalturaEventNotificationTemplateService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Allows you to add a new event notification template object
		# 	 
		def add(event_notification_template)
			kparams = {}
			client.add_param(kparams, 'eventNotificationTemplate', event_notification_template);
			client.queue_service_action_call('eventnotification_eventnotificationtemplate', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Allows you to clone exiting event notification template object and create a new one with similar configuration
		# 	 
		def clone(id, event_notification_template=KalturaNotImplemented)
			kparams = {}
			# source template to clone
			client.add_param(kparams, 'id', id);
			# overwrite configuration object
			client.add_param(kparams, 'eventNotificationTemplate', event_notification_template);
			client.queue_service_action_call('eventnotification_eventnotificationtemplate', 'clone', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve an event notification template object by id
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('eventnotification_eventnotificationtemplate', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update an existing event notification template object
		# 	 
		def update(id, event_notification_template)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'eventNotificationTemplate', event_notification_template);
			client.queue_service_action_call('eventnotification_eventnotificationtemplate', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update event notification template status by id
		# 	 
		def update_status(id, status)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'status', status);
			client.queue_service_action_call('eventnotification_eventnotificationtemplate', 'updateStatus', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete an event notification template object
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('eventnotification_eventnotificationtemplate', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# list event notification template objects
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('eventnotification_eventnotificationtemplate', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def list_by_partner(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('eventnotification_eventnotificationtemplate', 'listByPartner', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Dispatch event notification object by id
		# 	 
		def dispatch(id, scope)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'scope', scope);
			client.queue_service_action_call('eventnotification_eventnotificationtemplate', 'dispatch', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Action lists the template partner event notification templates.
		# 	 
		def list_templates(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('eventnotification_eventnotificationtemplate', 'listTemplates', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	class KalturaClient < KalturaClientBase
		attr_reader :event_notification_template_service
		def event_notification_template_service
			if (@event_notification_template_service == nil)
				@event_notification_template_service = KalturaEventNotificationTemplateService.new(self)
			end
			return @event_notification_template_service
		end
	end

end
