#!/bin/ruby
exit if User.count != 0
agent = User.new(
  email: ENV['ADMIN_EMAIL'],
  password: ENV['ADMIN_PASSWORD'],
  password_confirmation: ENV['ADMIN_PASSWORD']
)
agent.agent = true
agent.save!
