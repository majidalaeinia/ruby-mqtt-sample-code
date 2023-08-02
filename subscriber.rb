require 'mqtt'

session_id = 'aaa'

mqtt_client = ::MQTT::Client.connect(
  host: '',
  port: 8883,
  username: '',
  password: '',
  ssl: true
)

mqtt_client.subscribe("some/#{session_id}/thing")


topic, message = mqtt_client.get

puts 'topic: ' + topic
puts 'message: ' + message
