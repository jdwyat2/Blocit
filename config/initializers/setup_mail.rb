if Rails.env.development? || Rails.env.production?
    ActionMailer::Base.delivery_method = :smtp
    ActionMailer::Base.smtp_settings = {
        address: 'smtp.sendgrid.net',
        port: '2525',
        authentication: :plain,
        user_name: ENV['email'],
        password: ENV['password'],
        domain: 'domain',
        enable_starttls_auto: true
    }
end
