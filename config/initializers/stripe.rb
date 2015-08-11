if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key      => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_ebHWWqUGlFUT8MoRRgsHsi04',
    :secret_key      => 'sk_test_CxAqqB7Pdpjec4d3qT4SEsX3'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]