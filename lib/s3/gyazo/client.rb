require "aws-sdk-core"
require "tempfile"

class S3::Gyazo::Client
  def self.run
    ::Tempfile.create("") do |tmp|
      break unless system "screencapture -x -i \"#{tmp.path}\""
      filename = Time.now.strftime("%Y-%m-%d_%H-%M-%S.png")
      s3 = Aws::S3::Client.new(region: ENV["S3_GAZO_REGION"])
      File.open(tmp.path) do |file|
        s3.put_object(
          bucket: ENV["S3_GAZO_BUCKET"],
          body: file,
          key: filename,
        )
      end
      system "open #{ENV['S3_GAZO_BASE_URL'] + filename}"
    end
  end
end
