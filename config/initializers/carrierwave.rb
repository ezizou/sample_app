if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAJ3NTLBFBMMY6ZEEQ'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['yocharliebucket']
  end
end