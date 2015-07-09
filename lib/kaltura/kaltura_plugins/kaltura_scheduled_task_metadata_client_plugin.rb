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
require "#{Rails.root}/lib/kaltura/kaltura_plugins/kaltura_scheduled_task_client_plugin.rb"
require "#{Rails.root}/lib/kaltura/kaltura_plugins/kaltura_metadata_client_plugin.rb"

module Kaltura

	class KalturaExecuteMetadataXsltObjectTask < KalturaObjectTask
		# Metadata profile id to lookup the metadata object
		# 	 
		attr_accessor :metadata_profile_id
		# Metadata object type to lookup the metadata object
		# 	 
		attr_accessor :metadata_object_type
		# The XSLT to execute
		# 	 
		attr_accessor :xslt

		def metadata_profile_id=(val)
			@metadata_profile_id = val.to_i
		end
	end


end
