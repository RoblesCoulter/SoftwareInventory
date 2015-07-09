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

	class KalturaEmailNotificationTemplatePriority
		HIGH = 1
		NORMAL = 3
		LOW = 5
	end

	class KalturaEmailNotificationFormat
		HTML = "1"
		TEXT = "2"
	end

	class KalturaEmailNotificationRecipientProviderType
		STATIC_LIST = "1"
		CATEGORY = "2"
		USER = "3"
	end

	class KalturaEmailNotificationTemplateOrderBy
		CREATED_AT_ASC = "+createdAt"
		ID_ASC = "+id"
		UPDATED_AT_ASC = "+updatedAt"
		CREATED_AT_DESC = "-createdAt"
		ID_DESC = "-id"
		UPDATED_AT_DESC = "-updatedAt"
	end

	class KalturaEmailNotificationRecipient < KalturaObjectBase
		# Recipient e-mail address
		# 	 
		attr_accessor :email
		# Recipient name
		# 	 
		attr_accessor :name

	end

	# Abstract class representing the final output recipients going into the batch mechanism
	#  
	class KalturaEmailNotificationRecipientJobData < KalturaObjectBase
		# Provider type of the job data.
		# 	  
		attr_accessor :provider_type

	end

	# Abstract core class  which provides the recipients (to, CC, BCC) for an email notification
	#  
	class KalturaEmailNotificationRecipientProvider < KalturaObjectBase

	end

	class KalturaCategoryUserProviderFilter < KalturaFilter
		attr_accessor :user_id_equal
		attr_accessor :user_id_in
		attr_accessor :status_equal
		attr_accessor :status_in
		attr_accessor :created_at_greater_than_or_equal
		attr_accessor :created_at_less_than_or_equal
		attr_accessor :updated_at_greater_than_or_equal
		attr_accessor :updated_at_less_than_or_equal
		attr_accessor :update_method_equal
		attr_accessor :update_method_in
		attr_accessor :permission_names_match_and
		attr_accessor :permission_names_match_or

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

	# Job Data representing the provider of recipients for a single categoryId
	#  
	class KalturaEmailNotificationCategoryRecipientJobData < KalturaEmailNotificationRecipientJobData
		attr_accessor :category_user_filter

	end

	# API object which provides the recipients of category related notifications.
	#  
	class KalturaEmailNotificationCategoryRecipientProvider < KalturaEmailNotificationRecipientProvider
		# The ID of the category whose subscribers should receive the email notification.
		# 	 
		attr_accessor :category_id
		attr_accessor :category_user_filter

	end

	class KalturaEmailNotificationParameter < KalturaEventNotificationParameter

	end

	# JobData representing the static receipient array
	#  
	class KalturaEmailNotificationStaticRecipientJobData < KalturaEmailNotificationRecipientJobData
		# Email to emails and names
		# 	 
		attr_accessor :email_recipients

	end

	# API class for recipient provider containing a static list of email recipients.
	#  
	class KalturaEmailNotificationStaticRecipientProvider < KalturaEmailNotificationRecipientProvider
		# Email to emails and names
		# 	 
		attr_accessor :email_recipients

	end

	class KalturaEmailNotificationTemplate < KalturaEventNotificationTemplate
		# Define the email body format
		# 	 
		attr_accessor :format
		# Define the email subject 
		# 	 
		attr_accessor :subject
		# Define the email body content
		# 	 
		attr_accessor :body
		# Define the email sender email
		# 	 
		attr_accessor :from_email
		# Define the email sender name
		# 	 
		attr_accessor :from_name
		# Email recipient emails and names
		# 	 
		attr_accessor :to
		# Email recipient emails and names
		# 	 
		attr_accessor :cc
		# Email recipient emails and names
		# 	 
		attr_accessor :bcc
		# Default email addresses to whom the reply should be sent. 
		# 	 
		attr_accessor :reply_to
		# Define the email priority
		# 	 
		attr_accessor :priority
		# Email address that a reading confirmation will be sent
		# 	 
		attr_accessor :confirm_reading_to
		# Hostname to use in Message-Id and Received headers and as default HELLO string. 
		# 	 If empty, the value returned by SERVER_NAME is used or 'localhost.localdomain'.
		# 	 
		attr_accessor :hostname
		# Sets the message ID to be used in the Message-Id header.
		# 	 If empty, a unique id will be generated.
		# 	 
		attr_accessor :message_id
		# Adds a e-mail custom header
		# 	 
		attr_accessor :custom_headers

		def priority=(val)
			@priority = val.to_i
		end
	end

	# JobData representing the dynamic user receipient array
	#  
	class KalturaEmailNotificationUserRecipientJobData < KalturaEmailNotificationRecipientJobData
		attr_accessor :filter

	end

	# API class for recipient provider which constructs a dynamic list of recipients according to a user filter
	#  
	class KalturaEmailNotificationUserRecipientProvider < KalturaEmailNotificationRecipientProvider
		attr_accessor :filter

	end

	class KalturaEmailNotificationDispatchJobData < KalturaEventNotificationDispatchJobData
		# Define the email sender email
		# 	 
		attr_accessor :from_email
		# Define the email sender name
		# 	 
		attr_accessor :from_name
		# Email recipient emails and names, key is mail address and value is the name
		# 	 
		attr_accessor :to
		# Email cc emails and names, key is mail address and value is the name
		# 	 
		attr_accessor :cc
		# Email bcc emails and names, key is mail address and value is the name
		# 	 
		attr_accessor :bcc
		# Email addresses that a replies should be sent to, key is mail address and value is the name
		# 	 
		attr_accessor :reply_to
		# Define the email priority
		# 	 
		attr_accessor :priority
		# Email address that a reading confirmation will be sent to
		# 	 
		attr_accessor :confirm_reading_to
		# Hostname to use in Message-Id and Received headers and as default HELO string. 
		# 	 If empty, the value returned by SERVER_NAME is used or 'localhost.localdomain'.
		# 	 
		attr_accessor :hostname
		# Sets the message ID to be used in the Message-Id header.
		# 	 If empty, a unique id will be generated.
		# 	 
		attr_accessor :message_id
		# Adds a e-mail custom header
		# 	 
		attr_accessor :custom_headers

		def priority=(val)
			@priority = val.to_i
		end
	end

	class KalturaEmailNotificationTemplateBaseFilter < KalturaEventNotificationTemplateFilter

	end

	class KalturaEmailNotificationTemplateFilter < KalturaEmailNotificationTemplateBaseFilter

	end


end
