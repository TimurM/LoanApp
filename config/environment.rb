# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# if Rails.env.production?
#
#   ActionMailer::Base.smtp_settings = {
#     :address        => 'smtp.sendgrid.net',
#     :port           => '587',
#     :authentication => :plain,
#     :user_name      => ENV['pusher_app_USER_NAME'],
#     :password       => ENV['pusher_app_SdG_PASSWORD'],
#     :domain         => 'heroku.com',
#     :enable_starttls_auto => true
#   }
#
#   ActionMailer::Base.delivery_method ||= :smtp
#
# elsif Rails.env.development?
#
#   ActionMailer::Base.delivery_method = :letter_opener
# end

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['pusher_app_USER_NAME'],
  :password       => ENV['pusher_app_SdG_PASSWORD'],
  :domain         => 'loansapp.herokuapp.com',
  :enable_starttls_auto => true
}
