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
require "#{Rails.root}/lib/kaltura/kaltura_plugins/kaltura_cue_point_client_plugin.rb"

module Kaltura

	class KalturaAnnotationOrderBy
		CREATED_AT_ASC = "+createdAt"
		DURATION_ASC = "+duration"
		END_TIME_ASC = "+endTime"
		PARTNER_SORT_VALUE_ASC = "+partnerSortValue"
		START_TIME_ASC = "+startTime"
		TRIGGERED_AT_ASC = "+triggeredAt"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		DURATION_DESC = "-duration"
		END_TIME_DESC = "-endTime"
		PARTNER_SORT_VALUE_DESC = "-partnerSortValue"
		START_TIME_DESC = "-startTime"
		TRIGGERED_AT_DESC = "-triggeredAt"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaAnnotation < KalturaCuePoint
		attr_accessor :parent_id
		attr_accessor :text
		# End time in milliseconds
		# 	 
		attr_accessor :end_time
		# Duration in milliseconds
		# 	 
		attr_accessor :duration
		# Depth in the tree
		# 	 
		attr_accessor :depth
		# Number of all descendants
		# 	 
		attr_accessor :children_count
		# Number of children, first generation only.
		# 	 
		attr_accessor :direct_children_count

		def end_time=(val)
			@end_time = val.to_i
		end
		def duration=(val)
			@duration = val.to_i
		end
		def depth=(val)
			@depth = val.to_i
		end
		def children_count=(val)
			@children_count = val.to_i
		end
		def direct_children_count=(val)
			@direct_children_count = val.to_i
		end
	end

	class KalturaAnnotationListResponse < KalturaObjectBase
		attr_accessor :objects
		attr_accessor :total_count

		def total_count=(val)
			@total_count = val.to_i
		end
	end

	class KalturaAnnotationBaseFilter < KalturaCuePointFilter
		attr_accessor :parent_id_equal
		attr_accessor :parent_id_in
		attr_accessor :text_like
		attr_accessor :text_multi_like_or
		attr_accessor :text_multi_like_and
		attr_accessor :end_time_greater_than_or_equal
		attr_accessor :end_time_less_than_or_equal
		attr_accessor :duration_greater_than_or_equal
		attr_accessor :duration_less_than_or_equal

		def end_time_greater_than_or_equal=(val)
			@end_time_greater_than_or_equal = val.to_i
		end
		def end_time_less_than_or_equal=(val)
			@end_time_less_than_or_equal = val.to_i
		end
		def duration_greater_than_or_equal=(val)
			@duration_greater_than_or_equal = val.to_i
		end
		def duration_less_than_or_equal=(val)
			@duration_less_than_or_equal = val.to_i
		end
	end

	class KalturaAnnotationFilter < KalturaAnnotationBaseFilter

	end


	# Annotation service - Video Annotation
	#  
	class KalturaAnnotationService < KalturaServiceBase
		def initialize(client)
			super(client)
		end

		# Allows you to add an annotation object associated with an entry
		# 	 
		def add(annotation)
			kparams = {}
			client.add_param(kparams, 'annotation', annotation);
			client.queue_service_action_call('annotation_annotation', 'add', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Update annotation by id
		# 	 
		def update(id, annotation)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.add_param(kparams, 'annotation', annotation);
			client.queue_service_action_call('annotation_annotation', 'update', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# List annotation objects by filter and pager
		# 	
		def list(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('annotation_annotation', 'list', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Allows you to add multiple cue points objects by uploading XML that contains multiple cue point definitions
		# 	 
		def add_from_bulk(file_data)
			kparams = {}
			client.add_param(kparams, 'fileData', file_data);
			client.queue_service_action_call('annotation_annotation', 'addFromBulk', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# Download multiple cue points objects as XML definitions
		# 	 
		def serve_bulk(filter=KalturaNotImplemented, pager=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.add_param(kparams, 'pager', pager);
			client.queue_service_action_call('annotation_annotation', 'serveBulk', kparams);
			return client.get_serve_url();
		end

		# Retrieve an CuePoint object by id
		# 	 
		def get(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('annotation_annotation', 'get', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# count cue point objects by filter
		# 	 
		def count(filter=KalturaNotImplemented)
			kparams = {}
			client.add_param(kparams, 'filter', filter);
			client.queue_service_action_call('annotation_annotation', 'count', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end

		# delete cue point by id, and delete all children cue points
		# 	 
		def delete(id)
			kparams = {}
			client.add_param(kparams, 'id', id);
			client.queue_service_action_call('annotation_annotation', 'delete', kparams);
			if (client.is_multirequest)
				return nil;
			end
			return client.do_queue();
		end
	end

	class KalturaClient < KalturaClientBase
		attr_reader :annotation_service
		def annotation_service
			if (@annotation_service == nil)
				@annotation_service = KalturaAnnotationService.new(self)
			end
			return @annotation_service
		end
	end

end
