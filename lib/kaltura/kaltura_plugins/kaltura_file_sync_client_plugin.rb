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

	class KalturaFileSyncStatus
		ERROR = -1
		PENDING = 1
		READY = 2
		DELETED = 3
		PURGED = 4
	end

	class KalturaFileSyncType
		FILE = 1
		LINK = 2
		URL = 3
	end

	class KalturaFileSyncOrderBy
		CREATED_AT_ASC = "+createdAt"
		FILE_SIZE_ASC = "+fileSize"
		READY_AT_ASC = "+readyAt"
		SYNC_TIME_ASC = "+syncTime"
		UPDATED_AT_ASC = "+updatedAt"
		VERSION_ASC = "+version"
		CREATED_AT_DESC = "-createdAt"
		FILE_SIZE_DESC = "-fileSize"
		READY_AT_DESC = "-readyAt"
		SYNC_TIME_DESC = "-syncTime"
		UPDATED_AT_DESC = "-updatedAt"
		VERSION_DESC = "-version"
	end

	class KalturaFileSyncBaseFilter < KalturaFilter
		attr_accessor :partner_id_equal
		attr_accessor :file_object_type_equal
		attr_accessor :file_object_type_in
		attr_accessor :object_id_equal
		attr_accessor :object_id_in
		attr_accessor :version_equal
		attr_accessor :version_in
		attr_accessor :object_sub_type_equal
		attr_accessor :object_sub_type_in
		attr_accessor :dc_equal
		attr_accessor :dc_in
		attr_accessor :original_equal
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
		attr_accessor :ready_at_greater_than_or_equal
		attr_accessor :ready_at_less_than_or_equal
		attr_accessor :sync_time_greater_than_or_equal
		attr_accessor :sync_time_less_than_or_equal
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :file_type_equal
		attr_accessor :file_type_in
		attr_accessor :linked_id_equal
		attr_accessor :link_count_greater_than_or_equal
		attr_accessor :link_count_less_than_or_equal
		attr_accessor :file_size_greater_than_or_equal
		attr_accessor :file_size_less_than_or_equal

		def partner_id_equal=(val)
			@partner_id_equal = val.to_i
		end
		def object_sub_type_equal=(val)
			@object_sub_type_equal = val.to_i
		end
		def original_equal=(val)
			@original_equal = val.to_i
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
		def ready_at_greater_than_or_equal=(val)
			@ready_at_greater_than_or_equal = val.to_i
		end
		def ready_at_less_than_or_equal=(val)
			@ready_at_less_than_or_equal = val.to_i
		end
		def sync_time_greater_than_or_equal=(val)
			@sync_time_greater_than_or_equal = val.to_i
		end
		def sync_time_less_than_or_equal=(val)
			@sync_time_less_than_or_equal = val.to_i
		end
		def status_equal=(val)
			@status_equal = val.to_i
		end
		def file_type_equal=(val)
			@file_type_equal = val.to_i
		end
		def linked_id_equal=(val)
			@linked_id_equal = val.to_i
		end
		def link_count_greater_than_or_equal=(val)
			@link_count_greater_than_or_equal = val.to_i
		end
		def link_count_less_than_or_equal=(val)
			@link_count_less_than_or_equal = val.to_i
		end
		def file_size_greater_than_or_equal=(val)
			@file_size_greater_than_or_equal = val.to_f
		end
		def file_size_less_than_or_equal=(val)
			@file_size_less_than_or_equal = val.to_f
		end
	end

	class KalturaFileSyncFilter < KalturaFileSyncBaseFilter
		attr_accessor :current_dc

		def current_dc=(val)
			@current_dc = val.to_i
		end
	end


end
