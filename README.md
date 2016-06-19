#To run
This code was tested with Ruby 2.3.1. To test, check out a local copy, install Bundler, then ensure you have the right gems with ````bundle install````. Then run the ````rspec```` command.

There's also a Rake task - `run`, which takes an path to a file conforming to the problem spec, and an optional boolean value describing whether the walls 'wrap'. (This 'wrapping' behaviour is my only substantial assumption - it's how I met the 'tunnelling through to the other side' part of the problem spec.)

Run the rake task like this:

`rake run[spec/examples/first.txt,true]`
