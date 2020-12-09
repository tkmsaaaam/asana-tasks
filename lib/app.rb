# frozen_string_literal: true

require 'httparty'

require './lib/task.rb'
require './lib/message.rb'
require './lib/slack_message.rb'

response = Task.new().get

message = Message.new(response: response).create

SlackMessage.new(message: message).post
