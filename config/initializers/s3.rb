CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => Rails.application.secrets.aws_access_key_id,
      :aws_secret_access_key  => Rails.application.secrets.aws_secret_access_key,
      :region                 => 'eu-west-1', # Change this for different AWS region. Default is 'us-east-1'
  	  :host                   => 's3-website-eu-west-1.amazonaws.com',
  	  :endpoint               => 'https://elitepersonalworldapp.s3-website-eu-west-1.amazonaws.com'

  }
  config.fog_directory  = "elitepersonalworldapp"
  config.fog_public = 'false'
  config.fog_attributes = {'Cache-Control' => "max-age=#{365.to_i}" }
end
