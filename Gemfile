source "https://rubygems.org"

ruby "3.3.5"

# Rails
gem "rails", "~> 8.0.5"
gem "puma", ">= 6.4"

# Frontend
gem "tailwindcss-rails", "~> 3.0"
gem "jsbundling-rails", "~> 1.2"
gem "importmap-rails", "~> 2.0"
gem "sprockets-rails", "~> 3.4"
gem "stimulus-rails", "~> 1.3"
gem "turbo-rails", "~> 2.0"

gem "bootsnap"

# Authentication
gem "devise", "~> 4.9"
gem "devise-jwt", "~> 0.11"
gem "jwt", "~> 2.7"
gem "pundit", "~> 2.3"

# API
gem "active_model_serializers", "~> 0.10"
gem "pagy", "~> 6.0"

# Payments
gem "stripe", "~> 10.0"

# Geocoding
gem "geocoder", "~> 1.8"

# Background Jobs
gem "sidekiq", "~> 7.1"
gem "sidekiq-scheduler", "~> 5.0"

# Notifications
gem "twilio-ruby", "~> 6.0"

# File Storage
gem "aws-sdk-s3", "~> 1.130"
gem "active_storage_validations", "~> 3.0"
gem "image_processing", "~> 1.2"

#Rendering
gem "solid_queue"

# Environment
gem "dotenv-rails", "~> 2.8"

# Monitoring
gem "sentry-rails", "~> 5.10"
gem "sentry-sidekiq", "~> 5.10"

# Testing
group :development, :test do
  gem "debug", "~> 1.9"
  gem "rspec-rails", "~> 6.0"
  gem "factory_bot_rails", "~> 6.2"
  gem "faker", "~> 3.1"
end

group :development do
  gem "web-console", "~> 4.2"
  gem "rubocop-rails", "~> 2.21"
  ###gem "bullet", "~> 7.0"
end

group :production do
  gem "pg", "~> 1.5"
end


group :test do
  gem "webmock", "~> 3.18"
  gem "vcr", "~> 6.1"
end
