# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
<<<<<<< HEAD

# Initialize Heroku Mailers
=======
>>>>>>> 2442c3f1abaffd1eb2c72e16d78c488d164d6e1f
ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['SENDGRID_USERNAME'],
  :password       => ENV['SENDGRID_PASSWORD'],
  :domain         => 'heroku.com',
  :enable_starttls_auto => true
}
<<<<<<< HEAD


WillPaginate.per_page = 5
=======
>>>>>>> 2442c3f1abaffd1eb2c72e16d78c488d164d6e1f
