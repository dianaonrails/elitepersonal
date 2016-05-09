CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJQYSAMG67OT35KFA',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'us-west-2'                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'elitepersonalworld'                          # required
  
end