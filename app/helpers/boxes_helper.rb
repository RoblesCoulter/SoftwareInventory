module BoxesHelper
	def box_image_for(box)
		if box.photo != nil
			entry_id = box.photo
			kaltura_url = "http://cdnapisec.kaltura.com/p/#{get_partnet_id}/thumbnail/entry_id/#{entry_id}/quality/100/width/500"
			image_tag(kaltura_url, alt: box.barcode, class: "box_photo img-responsive")
		end
	end

	def entry_id_for(box)
		box.photo if box.photo != nil
	end

	private
		def get_partnet_id
			config_file = YAML.load_file("#{Rails.root}/config/kaltura.yml")
			return partner_id = config_file["default"]["partner_id"]
		end
end
