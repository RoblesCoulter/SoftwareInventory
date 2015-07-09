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

	class KalturaDeleteFlavorsLogicType
		KEEP_LIST_DELETE_OTHERS = 1
		DELETE_LIST = 2
		DELETE_KEEP_SMALLEST = 3
	end

	class KalturaScheduledTaskAddOrRemoveType
		ADD = 1
		REMOVE = 2
	end

	class KalturaScheduledTaskProfileStatus
		DISABLED = 1
		ACTIVE = 2
		DELETED = 3
		SUSPENDED = 4
		DRY_RUN_ONLY = 5
	end

	class KalturaObjectFilterEngineType
		ENTRY = "1"
	end

	class KalturaObjectTaskType
		DISPATCH_EVENT_NOTIFICATION = "scheduledTaskEventNotification.DispatchEventNotification"
		EXECUTE_METADATA_XSLT = "scheduledTaskMetadata.ExecuteMetadataXslt"
		DELETE_ENTRY = "1"
		MODIFY_CATEGORIES = "2"
		DELETE_ENTRY_FLAVORS = "3"
		CONVERT_ENTRY_FLAVORS = "4"
		DELETE_LOCAL_CONTENT = "5"
	end

	class KalturaScheduledTaskProfileOrderBy
		CREATED_AT_ASC = "+createdAt"
		ID_ASC = "+id"
		LAST_EXECUTION_STARTED_AT_ASC = "+lastExecutionStartedAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		ID_DESC = "-id"
		LAST_EXECUTION_STARTED_AT_DESC = "-lastExecutionStartedAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaObjectTask < KalturaObjectBase
		attr_accessor :type

	end

	class KalturaScheduledTaskProfile < KalturaObjectBase
		attr_accessor :id
		attr_accessor :partner_id
		attr_accessor :name
		attr_accessor :system_name
		attr_accessor :description
		attr_accessor :status
		# The type of engine to use to list objects using the given "objectFilter"
		# 	 
		attr_accessor :object_filter_engine_type
		# A filter object (inherits KalturaFilter) that is used to list objects for scheduled tasks
		# 	 
		attr_accessor :object_filter
		# A list of tasks to execute on the founded objects
		# 	 
		attr_accessor :object_tasks
		attr_accessor :created_at
		attr_accessor :updated_at
		attr_accessor :last_execution_started_at
		# The maximum number of result count allowed to be processed by this profile per execution
		# 	 
		attr_accessor :max_total_count_allowed

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
		def last_execution_started_at=(val)
			@last_execution_started_at = val.to_i
		end
		def max_total_count_allowed=(val)
			@max_total_count_allowed = val.to_i
		end
	end

	class KalturaScheduledTaskProfileListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaConvertEntryFlavorsObjectTask < KalturaObjectTask
		# Comma separated list of flavor param ids to convert
		# 	 
		attr_accessor :flavor_params_ids
		# Should reconvert when flavor already exists?
		# 	 
		attr_accessor :reconvert

		def reconvert=(val)
			@reconvert = to_b(val)
		end
	end

	class KalturaDeleteEntryFlavorsObjectTask < KalturaObjectTask
		# The logic to use to choose the flavors for deletion
		# 	 
		attr_accessor :delete_type
		# Comma separated list of flavor param ids to delete or keep
		# 	 
		attr_accessor :flavor_params_ids

		def delete_type=(val)
			@delete_type = val.to_i
		end
	end

	class KalturaDeleteEntryObjectTask < KalturaObjectTask

	end

	class KalturaDeleteLocalContentObjectTask < KalturaObjectTask

	end

	class KalturaModifyCategoriesObjectTask < KalturaObjectTask
		# Should the object task add or remove categories?
		# 	 
		attr_accessor :add_remove_type
		# The list of category ids to add or remove
		# 	 
		attr_accessor :category_ids

		def add_remove_type=(val)
			@add_remove_type = val.to_i
		end
	end

	class KalturaScheduledTaskJobData < KalturaJobData
		attr_accessor :max_results
		attr_accessor :results_file_path
		attr_accessor :reference_time

		def max_results=(val)
			@max_results = val.to_i
		end
		def reference_time=(val)
			@reference_time = val.to_i
		end
	end

	class KalturaScheduledTaskProfileBaseFilter < KalturaFilter
		attr_accessor :id_equal
		attr_accessor :id_in
		attr_accessor :partner_id_equal
		attr_accessor :partner_id_in
		attr_accessor :system_name_equal
		attr_accessor :system_name_in
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
		attr_accessor :last_execution_started_at_greater_than_or_equal
		attr_accessor :last_execution_started_at_less_than_or_equal

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
		def last_execution_started_at_greater_than_or_equal=(val)
			@last_execution_started_at_greater_than_or_equal = val.to_i
		end
		def last_execution_started_at_less_than_or_equal=(val)
			@last_execution_started_at_less_than_or_equal = val.to_i
		end
	end

	class KalturaScheduledTaskProfileFilter < KalturaScheduledTaskProfileBaseFilter

	end


	# Schedule task service lets you create and manage scheduled task profiles
	#  
	class KalturaScheduledTaskProfileService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Add a new scheduled task profile
		# 	 
		def add(scheduled_task_profile)
			kparams = {}
			client.add_param(kparams, 'scheduledTaskProfile', scheduled_task_profile);
			client.queue_service_action_call('scheduledtask_scheduledtaskprofile', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Retrieve a scheduled task profile by id
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('scheduledtask_scheduledtaskprofile', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update an existing scheduled task profile
		# 	 
		def update(id, scheduled_task_profile)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'scheduledTaskProfile', scheduled_task_profile);
			client.queue_service_action_call('scheduledtask_scheduledtaskprofile', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Delete a scheduled task profile
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('scheduledtask_scheduledtaskprofile', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List scheduled task profiles
		# 	 
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('scheduledtask_scheduledtaskprofile', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def request_dry_run(scheduled_task_profile_id, max_results=500)
			kparams = {}
			client.add_param(kparams, 'scheduledTaskProfileId', scheduled_task_profile_id);
			client.add_param(kparams, 'maxResults', max_results);
			client.queue_service_action_call('scheduledtask_scheduledtaskprofile', 'requestDryRun', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		def get_dry_run_results(request_id)
			kparams = {}
			client.add_param(kparams, 'requestId', request_id);
			client.queue_service_action_call('scheduledtask_scheduledtaskprofile', 'getDryRunResults', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	class KalturaClient < KalturaClientBase
		attr_reader :scheduled_task_profile_service
		def scheduled_task_profile_service
			if (@scheduled_task_profile_service == nil)
				@scheduled_task_profile_service = KalturaScheduledTaskProfileService.new(self)
			end
			return @scheduled_task_profile_service
		end
	end

end
