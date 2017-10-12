## Test on MRI:

```
$ ./script/switch-to-mri.sh
...

$ ruby -v
ruby 2.2.8p477 (2017-09-14 revision 59906) [x86_64-darwin16]

$ ./test.rb
Script content: #<Nokogiri::XML::CDATA:0x3fea73c23510 "document.alert(\"hello from js\");">
```

## Test on jruby

```
$ ./script/switch-to-jruby.sh
...

$ ruby -v
jruby 9.1.13.0 (2.3.3) 2017-09-06 8e1c115 Java HotSpot(TM) 64-Bit Server VM 24.80-b11 on 1.7.0_80-b15 +jit [darwin-x86_64]

$ ./test.rb
Script content: #<Nokogiri::XML::Text:0x7d0 "document.alert(\"hello from js\");">
RuntimeError: Whoa! Script content is text instead of CDATA
  <main> at ./test.rb:12
```
