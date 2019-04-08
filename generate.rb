#!/usr/bin/env ruby

require "csv"

data_file = "vendorpol.csv"

puts "<ul>"
CSV.foreach(data_file, headers: true, header_converters: :symbol) do |row|
  print %(<li> #{row[:vendor]}: #{row[:title]}: )
  unless row[:privacy_url].nil?
    print %(<a href="#{row[:privacy_url]}">privacy</a> )
  end
  unless row[:tc_url].nil?
    print %(<a href="#{row[:tc_url]}">terms and conditions</a>)
  end
  puts %(</li>)
end
puts "</ul>"
