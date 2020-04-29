CarrierWave.configure do |config|
	config.fog_credentials = {
		provider: 			 	 'value',
		aws_access_key_id: 	 	 ENV['AWS_ACCESS_KEY_ID'],
		aws_seceret_access_key:  ENV['AWS_SECRETE_ACCESS_KEY'],  
	}
	config.storage = :fog
	config.permissions = 0666
	config.cache_dir = "#{Rails.root}/tmp/"
	config.fog_directory = ENV['FOG_DIRECTORY']
	config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
end