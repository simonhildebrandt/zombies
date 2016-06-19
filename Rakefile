$:.unshift File.expand_path('../lib', __FILE__)
require 'runner'

desc "Run a zombie file"
task :run, [:path,:porous] do |t, args|
  path = args[:path]
  porous = args[:porous] == 'true' || false
  raise "#{path} doesn't exist" unless File.exists?(path)

  Runner.new(path, porous).report
end
