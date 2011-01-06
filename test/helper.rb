require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'test/unit'
require 'shoulda'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'fazscore'

class Test::Unit::TestCase

HISTORY = { 'England' => [5,1,3,4,4],
          'Ireland' => [1,0,0,1,2],
          'Scotland' => [2,4,1,4,5]}
CURRENT = { 'England' => 0,
            'Ireland' => 7,
            'Scotland' => 6 }

end
