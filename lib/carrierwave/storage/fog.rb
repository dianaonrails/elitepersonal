CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJQYSAMG67OT35KFA',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'us-west-2',                  # optional, defaults to 'us-east-1'
    host:                  's3-website-us-west-2.amazonaws.com',             # optional, defaults to nil
    endpoint:              'elitepersonalworld.s3-website-us-west-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'name_of_directory'                          # required
  config.fog_public     = false                                        # optional, defaults to true
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
end