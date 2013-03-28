ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "railscasts.com",
  :user_name            => "jorgepadilla.000",
  :password             => "jpcreator",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

