module BoxesHelper
	def box_image_for(box)
		if box.photo != nil
			entry_id = box.photo
			kaltura_url = "https://cdnapisec.kaltura.com/p/#{get_partner_id}/thumbnail/entry_id/#{entry_id}/quality/100/width/700"
			link_to( image_tag(kaltura_url, alt: box.barcode, class: "box_photo img-responsive"), "https://cdnapisec.kaltura.com/p/#{get_partner_id}/thumbnail/entry_id/#{entry_id}/quality/100/width/1000", target: "_blank" )
		end
	end

	def entry_id_for(box)
		box.photo if box.photo != nil
	end

	private
		def get_partner_id
			config_file = YAML.load_file("#{Rails.root}/config/kaltura.yml")
			return partner_id = config_file["default"]["partner_id"]
		end
end
