CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     Rails.application.credentials.aws_key,
    aws_secret_access_key: Rails.application.credentials.aws_secret,
  }
  config.fog_directory  = Rails.application.credentials.aws_bucket

end
