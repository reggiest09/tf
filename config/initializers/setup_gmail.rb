ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :domain               => 'fundtaps.org',
    :user_name            =>  'fundtapsreset@gmail.com',
    :password             =>   '1bit2bit',
    :authentication       => 'plain',
    :enable_starttls_auto => true
  }