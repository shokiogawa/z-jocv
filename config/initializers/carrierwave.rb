unless Rails.env.development? || Rails.env.test?
    CarrierWave.configure do |config|
      config.fog_credentials = {
        provider: 'AWS',
        aws_access_key_id: 'AKIA4X2ZD4BXNUXEZ56X',
        aws_secret_access_key: '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',
        region: 'ap-northeast-1'
      }
  
      config.fog_directory  = 'jocv-app-photo'
      config.cache_storage = :fog
    end
  end