#!/usr/bin/env ruby

def match_school(input)
regex = /\bSchool\b/i

  if input =~ regex
    puts "The input '#{input}' contains the word 'School'."
  else
    puts "The input '#{input}' does not contain the word 'School'."
  end
end

if ARGV.empty?
  puts "Please provide a string as a command-line argument."
else

  input_string = ARGV[0]

  match_school(input_string)
end
