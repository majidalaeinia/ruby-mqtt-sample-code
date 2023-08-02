require 'mqtt'
require 'json'

session_id = 'aaa'
trace_id = 'bbb'

mqtt_client = ::MQTT::Client.connect(
  host: '',
  port: 8883,
  username: '',
  password: '',
  ssl: true
)

payload = {
  data: {
    trace_id: trace_id
  }
}

mqtt_client.publish("some/#{session_id}/thing", payload.to_json)