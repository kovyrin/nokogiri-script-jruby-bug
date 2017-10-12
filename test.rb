#!/usr/bin/env ruby

require 'bundler'
Bundler.require
require 'nokogiri'

# Parse a simple html doc
html = '<html><head><script>document.alert("hello from js");</script><body>hello</body>'
doc = Nokogiri::HTML(html)

# Get the script node
script_node = doc.xpath('//script').first

# Get script's content
script_content = script_node.children.first
puts "Script content: #{script_content.inspect}"

# Test it
raise "Whoa! Script content is text instead of CDATA" if script_content.text?
