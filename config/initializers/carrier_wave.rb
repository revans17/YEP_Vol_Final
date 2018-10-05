if Rails.env.production?
  CarrierWave.configure do |config|
       config.root = Rails.root.join('tmp') # adding these...
       config.cache_dir = 'carrierwave' # ...two lines
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAICWH4VRNSR7WXWBA'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['S3_BUCKET']
  end
end
