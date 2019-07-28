Jets.application.configure do
  config.project_name = "afterburner"
  config.mode = "api"
  config.controllers.default_protect_from_forgery = false

  if ENV['CERT_ARN'] && ENV['JETS_ENV_EXTRA'].nil?
    config.domain.name = "afterburner.demo.rubyonjets.com"
    config.domain.hosted_zone_name = "demo.rubyonjets.com"
    config.domain.cert_arn = ENV['CERT_ARN']
  end
end
