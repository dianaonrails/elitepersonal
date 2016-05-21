CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      
      :region                 => 'eu-west-1' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = "elitepersonalworldapp"
end