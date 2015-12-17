require 'filewatcher'
require 'eventmachine'

module EM
  class FileWatcher
    def self.start_watch path, &callback
      FileWatcher.new(path, &callback)
    end

    def initialize path, &callback
      @filewatcher = ::FileWatcher.new([path])

      t = Thread.new(@filewatcher) do |fw|
        fw.watch do |path, event|
          EM::next_tick {callback.call(path, event)}
        end
      end
    end
    def stop
      @filewatcher.stop
      @filewatcher.finalize
    end
  end  
end