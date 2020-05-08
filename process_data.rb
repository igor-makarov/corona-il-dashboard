require 'json'

json_str = File.read('_data/data.json')
json = JSON.parse(json_str)

STDERR.puts "Timestamp: #{json['timestamp']}"
fatalities = json['deceased'].delete(',').to_i
total_outcome = fatalities + json['recovered'].delete(',').to_i
STDERR.puts "Fatalities: #{fatalities}"
STDERR.puts "Outcomes: #{total_outcome}"
cfr = fatalities.to_f / total_outcome
json['cfr'] = "%.2f" % [cfr * 100]
STDERR.puts "CFR: #{json['cfr']}"

File.open('_data/data.json', 'w') { |f| f.write(json.to_json) }
