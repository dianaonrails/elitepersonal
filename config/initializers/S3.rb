CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => "AKIAISZ7XQQVAGHBVDXQ",
      :aws_secret_access_key  => "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",
      :region                 => 'eu-west-1' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = "elitepersonalworldapp"
end