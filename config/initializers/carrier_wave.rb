if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAIGSLPM6VKVYARTWA'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['S3_BUCKET']
  end
end
 
