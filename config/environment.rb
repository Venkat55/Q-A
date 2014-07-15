# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
QAndA::Application.initialize!
 config.action_mailer.smtp_settings = {
    :enable_starttls_auto => true,
    :address => "smtp.sendgrid.net",
    :port => 587,
    :domain => "sendgrid.com",
    :authentication => :login,
    :user_name =>"akshaysimha",
    :password => "simha1991"
  }
end