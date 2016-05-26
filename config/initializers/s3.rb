CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     Rails.application.secrets.http_aws_access_key_id,                        # required
    aws_secret_access_key: Rails.application.secrets.http_aws_secret_access_key,                        # required
    region:                'eu-west-1'                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'elitepersonalworldapp'                          # required
  config.fog_public     = false                                        # optional, defaults to true
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
end  