class S3::Gyazo::Client
  def self.run
    puts ENV["AWS_ACCESS_KEY_ID"]
    puts ENV["AWS_SECRET_ACCESS_KEY"]
    puts ENV["S3_GAZO_BUCKET"]
    puts ENV["S3_GAZO_BASE_URL"]
  end
end
