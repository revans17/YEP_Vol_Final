CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines

  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :s3_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],                        # required
    :s3_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],                     # required
    :region                 => 'us-east-1',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = ENV['S3_BUCKET']                             # required
end
