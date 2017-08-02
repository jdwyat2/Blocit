if Rails.env.development? || Rails.env.production?
    ActionMailer::Base.delivery_method = :smtp
    ActionMailer::Base.smtp_settings = {
        address: 'smtp.sendgrid.net',
        port: '2525',
        authentication: :plain,
        user_name: ENV['app71224544@heroku.com'],
        password: ENV['x5wznfai5054'],
        domain: 'heroku.com',
        enable_starttls_auto: true
    }
end