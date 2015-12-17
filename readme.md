em-filewatcher
=====

```
gem install em-filewatcher
```

Usage
----
```rb
require 'em-filewatcher'

EM::run do
  EM::FileWatcher.start_watch "*.rb" do |path, event|
    puts path

    case event
      when :new
        puts "created"
      when :delete
        puts "deleted"
      when :changed
        puts "changed"
    end
  end
end
```