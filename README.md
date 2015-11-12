# S3::Gyazo

s3-gazo

## Installation

install it yourself as:

    $ gem install s3-gyazo

## Setup

this app use environment variables;

key|value
-----|-----
AWS_ACCESS_KEY_ID| my-access-key
AWS_SECRET_ACCESS_KEY| secret
S3_GAZO_BUCKET| s3 bucket name
S3_GAZO_BASE_URL| base URL


### Use [envchain](https://github.com/sorah/envchain) (strongly recommended)

```
$ envchain --set aws AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY
aws.AWS_ACCESS_KEY_ID: my-access-key
aws.AWS_SECRET_ACCESS_KEY: secret

$ envchain --set s3gazo S3_GAZO_BUCKET S3_GAZO_BASE_URL
s3gazo.S3_GAZO_BUCKET: s3 bucket name
s3gazo.S3_GAZO_BASE_URL: base URL
```

## Usage

```
$ envchain s3gazo envchain aws s3-gyazo
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment. Run `bundle exec s3-gyazo` to use the gem in this directory, ignoring other installed copies of this gem.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yoshiori/s3-gyazo.
