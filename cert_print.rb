#!/usr/bin/env ruby
require 'spaceship'

Spaceship.login('your Apple ID')
Spaceship.select_team

Spaceship.certificate.all.each do |cert|
  cert_type = Spaceship::Portal::Certificate::CERTIFICATE_TYPE_IDS[cert.type_display_id].to_s.split("::")[-1]
  puts "Cert id: #{cert.id}, name: #{cert.name}, name: #{cert.owner_name}, expires: #{cert.expires.strftime("%Y-%m-%d")}, type: #{cert_type}"
end
