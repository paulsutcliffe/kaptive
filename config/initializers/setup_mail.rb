ActionMailer::Base.smtp_settings = {
  :address              => "mail.mykaptive.com",
  :port                 => 26,
  :domain               => "mykpative.com",
  :user_name            => "web@mykaptive.com",
  :password             => "web48myk",
  :authentication       => 'plain',
  :enable_starttls_auto => false
}
