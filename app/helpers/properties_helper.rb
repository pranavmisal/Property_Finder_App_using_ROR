module PropertiesHelper
	def property_thumbnail property
		img = property.photo.present? ? property.photo.thumb.url : "https://source.unsplash.com/sqc9yv6iueE/350x200"
		image_tag img, class: "property_thumb"
	end
end
