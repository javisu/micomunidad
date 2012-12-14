CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAJ7O3VHEFITBX722Q',
    :aws_secret_access_key  => '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',
    :region                 => 'eu-west-1'
    }
  config.fog_directory  = 'galeriasfotos'
  end

