require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'
require 'carrierwave/orm/activerecord'
# CarrierWave.configure do |config|
#   config.fog_credentials = {
#       :provider               => 'AWS',
#       :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],
#       :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],
#       :region                 => 'us-west-1' # Change this for different AWS region. Default is 'us-east-1'
#   }
#   config.fog_directory  = ENV['BUCKET']
# end
CarrierWave.configure do |config|
  # if Rails.env.production?
    # config.storage/ :aws
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      :provider               => 'AWS',                            # required
      :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],         # required
      :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'], 
      :region => 'us-east-1',
      :endpoint => 'https://s3.amazonaws.com'    # required
    }
    config.fog_directory  = ENV['BUCKET']                 # required
    config.fog_public     = true
    # else
    # config.storage :file
    # config.enable_processing = false if Rails.env.test?
    #optional, defaults to true
  # end
end

