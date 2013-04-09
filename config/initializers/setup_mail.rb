ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "hotelclarionsps.com",
  :user_name            => "hotelclarionsps",
  :password             => "clarionsps",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

