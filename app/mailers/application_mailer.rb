class ApplicationMailer < ActionMailer::Base
  default from: 'smahi2024@gmail.com'
  layout 'mailer'

  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
      address:              'smtp.gmail.com',
      port:                 587,
      domain:               'gmail.com',
      user_name:            'xxxxxxx',
      password:             'xxxxxx',
      authentication:       :plain,
      enable_starttls_auto: true
  }
end
