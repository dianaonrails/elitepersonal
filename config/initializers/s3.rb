CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     Rails.application.secrets.aws_access_key_id,                        # required
    aws_secret_access_key: Rails.application.secrets.aws_secret_access_key,                        # required
    region:                'eu-west-1',                  # optional, defaults to 'us-east-1'
    host:                  's3-website-eu-west-1.amazonaws.com',             # optional, defaults to nil
    endpoint:              'elitepersonalworldapp.s3-website-eu-west-1.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'elitepersonalworldapp'                          # required
  config.fog_public     = false                                        # optional, defaults to true
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
end  