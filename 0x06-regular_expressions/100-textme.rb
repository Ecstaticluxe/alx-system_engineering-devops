#!/usr/bin/env ruby

def extract_textme_info(log_entry)
  match_data = log_entry.match(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/)
  
  sender = match_data[1]
  receiver = match_data[2]
  flags = match_data[3]

  "#{sender},#{receiver},#{flags}"
end

if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} 'log_entry'"
  exit 1
end

log_entry = ARGV[0]
result = extract_textme_info(log_entry)
puts result

