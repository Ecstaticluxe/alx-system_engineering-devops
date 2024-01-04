#!/usr/bin/env ruby

# filename: match_school.rb

def match_school(input)

  regex = /\bSchool\b/

  if input =~ regex
    puts "The input '#{input}' matches the pattern 'School'."
  else
    puts "The input '#{input}' does not match the pattern 'School'."
  end
end


if ARGV.empty?
  puts "Please provide a string as a command-line argument."
else

  input_string = ARGV[0]


  match_school(input_string)
end
