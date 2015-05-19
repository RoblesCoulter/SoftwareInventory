module ItemsHelper
	def image_for(item)
		if item.photo != nil
			entry_id = item.photo
			kaltura_url = "http://cdnapisec.kaltura.com/p/#{get_partnet_id}/thumbnail/entry_id/#{entry_id}/quality/100/width/200"
			image_tag(kaltura_url, alt: item.product.name, class: "item_photo")
		end
	end

	def entry_id_for(item)
		item.photo if item.photo != nil
	end

	private
		def get_partnet_id
			config_file = YAML.load_file("#{Rails.root}/config/kaltura.yml")
			return partner_id = config_file["default"]["partner_id"]
		end
end
