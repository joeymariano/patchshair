CarrierWave.configure do |config|
  if Rails.env.production?
    config.fog_provider = 'fog/aws'                        # required
    config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     ENV["AWS_ACCESS_KEY"],        # required
      aws_secret_access_key: ENV["AWS_SECRET_KEY"],        # required
      region: ENV["S3_REGION"]
    }
    config.fog_directory  = ENV["AWS_BUCKET"]              # required
  else
    config.permissions = 0666
    config.directory_permissions = 0777
    config.storage = :file
  end
end
