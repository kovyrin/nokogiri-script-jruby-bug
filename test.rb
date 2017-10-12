#!/usr/bin/env ruby

require 'bundler'
Bundler.require
require 'nokogiri'

html = '<html><head><script>document.alert("hello from js");</script><body>hello</body>'
doc = Nokogiri::HTML(html)
script_node = doc.xpath('//script').first
script_content = script_node.children.first
puts "Script content: #{script_content.inspect}"
raise "Whoa! Script content is text instead of CDATA" if script_content.text?
