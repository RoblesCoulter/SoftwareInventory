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
require "#{Rails.root}/lib/kaltura/kaltura_plugins/kaltura_event_notification_client_plugin.rb"

module Kaltura

	class KalturaHttpNotificationAuthenticationMethod
		ANYSAFE = -18
		ANY = -17
		BASIC = 1
		DIGEST = 2
		GSSNEGOTIATE = 4
		NTLM = 8
	end

	class KalturaHttpNotificationMethod
		GET = 1
		POST = 2
		PUT = 3
		DELETE = 4
	end

	class KalturaHttpNotificationSslVersion
		V2 = 2
		V3 = 3
	end

	class KalturaHttpNotificationCertificateType
		DER = "DER"
		ENG = "ENG"
		PEM = "PEM"
	end

	class KalturaHttpNotificationSslKeyType
		DER = "DER"
		ENG = "ENG"
		PEM = "PEM"
	end

	class KalturaHttpNotificationTemplateOrderBy
		CREATED_AT_ASC = "+createdAt"
		ID_ASC = "+id"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		ID_DESC = "-id"
		UPDATED_AT_DESC = "-updatedAt"
	end

	# Wrapper for sent notifications 
	#  
	class KalturaHttpNotification < KalturaObjectBase
		# Object that triggered the notification
		# 	 
		attr_accessor :object
		# Object type that triggered the notification
		# 	 
		attr_accessor :event_object_type
		# ID of the batch job that execute the notification
		# 	 
		attr_accessor :event_notification_job_id
		# ID of the template that triggered the notification
		# 	 
		attr_accessor :template_id
		# Name of the template that triggered the notification
		# 	 
		attr_accessor :template_name
		# System name of the template that triggered the notification
		# 	 
		attr_accessor :template_system_name
		# Ecent type that triggered the notification
		# 	 
		attr_accessor :event_type

		def event_notification_job_id=(val)
			@event_notification_job_id = val.to_i
		end
		def template_id=(val)
			@template_id = val.to_i
		end
	end

	class KalturaHttpNotificationData < KalturaObjectBase

	end

	# If this class used as the template data, the fields will be taken from the content parameters
	#  
	class KalturaHttpNotificationDataFields < KalturaHttpNotificationData

	end

	class KalturaHttpNotificationDataText < KalturaHttpNotificationData
		attr_accessor :content

	end

	# Evaluates PHP statement, depends on the execution context
	#  
	class KalturaHttpNotificationObjectData < KalturaHttpNotificationData
		# Kaltura API object type
		# 	 
		attr_accessor :api_object_type
		# Data format
		# 	 
		attr_accessor :format
		# Ignore null attributes during serialization
		# 	 
		attr_accessor :ignore_null
		# PHP code
		# 	 
		attr_accessor :code

		def format=(val)
			@format = val.to_i
		end
		def ignore_null=(val)
			@ignore_null = to_b(val)
		end
	end

	class KalturaHttpNotificationTemplate < KalturaEventNotificationTemplate
		# Remote server URL
		# 	 
		attr_accessor :url
		# Request method.
		# 	 
		attr_accessor :method
		# Data to send.
		# 	 
		attr_accessor :data
		# The maximum number of seconds to allow cURL functions to execute.
		# 	 
		attr_accessor :timeout
		# The number of seconds to wait while trying to connect.
		# 	 Must be larger than zero.
		# 	 
		attr_accessor :connect_timeout
		# A username to use for the connection.
		# 	 
		attr_accessor :username
		# A password to use for the connection.
		# 	 
		attr_accessor :password
		# The HTTP authentication method to use.
		# 	 
		attr_accessor :authentication_method
		# The SSL version (2 or 3) to use.
		# 	 By default PHP will try to determine this itself, although in some cases this must be set manually.
		# 	 
		attr_accessor :ssl_version
		# SSL certificate to verify the peer with.
		# 	 
		attr_accessor :ssl_certificate
		# The format of the certificate.
		# 	 
		attr_accessor :ssl_certificate_type
		# The password required to use the certificate.
		# 	 
		attr_accessor :ssl_certificate_password
		# The identifier for the crypto engine of the private SSL key specified in ssl key.
		# 	 
		attr_accessor :ssl_engine
		# The identifier for the crypto engine used for asymmetric crypto operations.
		# 	 
		attr_accessor :ssl_engine_default
		# The key type of the private SSL key specified in ssl key - PEM / DER / ENG.
		# 	 
		attr_accessor :ssl_key_type
		# Private SSL key.
		# 	 
		attr_accessor :ssl_key
		# The secret password needed to use the private SSL key specified in ssl key.
		# 	 
		attr_accessor :ssl_key_password
		# Adds a e-mail custom header
		# 	 
		attr_accessor :custom_headers

		def method=(val)
			@method = val.to_i
		end
		def timeout=(val)
			@timeout = val.to_i
		end
		def connect_timeout=(val)
			@connect_timeout = val.to_i
		end
		def authentication_method=(val)
			@authentication_method = val.to_i
		end
		def ssl_version=(val)
			@ssl_version = val.to_i
		end
	end

	class KalturaHttpNotificationDispatchJobData < KalturaEventNotificationDispatchJobData
		# Remote server URL
		# 	 
		attr_accessor :url
		# Request method.
		# 	 
		attr_accessor :method
		# Data to send.
		# 	 
		attr_accessor :data
		# The maximum number of seconds to allow cURL functions to execute.
		# 	 
		attr_accessor :timeout
		# The number of seconds to wait while trying to connect.
		# 	 Must be larger than zero.
		# 	 
		attr_accessor :connect_timeout
		# A username to use for the connection.
		# 	 
		attr_accessor :username
		# A password to use for the connection.
		# 	 
		attr_accessor :password
		# The HTTP authentication method to use.
		# 	 
		attr_accessor :authentication_method
		# The SSL version (2 or 3) to use.
		# 	 By default PHP will try to determine this itself, although in some cases this must be set manually.
		# 	 
		attr_accessor :ssl_version
		# SSL certificate to verify the peer with.
		# 	 
		attr_accessor :ssl_certificate
		# The format of the certificate.
		# 	 
		attr_accessor :ssl_certificate_type
		# The password required to use the certificate.
		# 	 
		attr_accessor :ssl_certificate_password
		# The identifier for the crypto engine of the private SSL key specified in ssl key.
		# 	 
		attr_accessor :ssl_engine
		# The identifier for the crypto engine used for asymmetric crypto operations.
		# 	 
		attr_accessor :ssl_engine_default
		# The key type of the private SSL key specified in ssl key - PEM / DER / ENG.
		# 	 
		attr_accessor :ssl_key_type
		# Private SSL key.
		# 	 
		attr_accessor :ssl_key
		# The secret password needed to use the private SSL key specified in ssl key.
		# 	 
		attr_accessor :ssl_key_password
		# Adds a e-mail custom header
		# 	 
		attr_accessor :custom_headers
		# The secret to sign the notification with
		# 	 
		attr_accessor :sign_secret

		def method=(val)
			@method = val.to_i
		end
		def timeout=(val)
			@timeout = val.to_i
		end
		def connect_timeout=(val)
			@connect_timeout = val.to_i
		end
		def authentication_method=(val)
			@authentication_method = val.to_i
		end
		def ssl_version=(val)
			@ssl_version = val.to_i
		end
	end

	class KalturaHttpNotificationTemplateBaseFilter < KalturaEventNotificationTemplateFilter

	end

	class KalturaHttpNotificationTemplateFilter < KalturaHttpNotificationTemplateBaseFilter

	end


end
