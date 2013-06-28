ActionMailer::Base.smtp_settings = {
  :address              => "mail.mykaptive.com",
  :port                 => 465,
  :domain               => "mykpative.com",
  :user_name            => "web@mykaptive.com",
  :password             => "web48myk",
  :authentication       => :login,
  :enable_starttls_auto => true
}
