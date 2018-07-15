require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'
require 'carrierwave/orm/activerecord'

CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage :file
  else
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      :provider               => 'AWS',                            # required
      :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],         # required
      :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'], 
      region: ENV['S3_REGION'],
      endpoint: 'https://s3.amazonaws.com'    # required
    }
    config.fog_directory  = ENV['BUCKET']                 # required
    config.fog_public     = false  
    config.storage :fog                               # optional, defaults to true
  end
end