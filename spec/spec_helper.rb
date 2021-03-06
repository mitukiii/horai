# coding: utf-8
# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# Require this file using `require "spec_helper"` to ensure that it is only
# loaded once.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration

unless ENV['CI']
  require 'simplecov'
  SimpleCov.start
end

require 'horai'
require 'rspec'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'
end

def now(year = nil, month = nil, day = nil, hour = nil, minute = nil, second = nil)
  now = DateTime.now
  DateTime.new(year   || now.year,
               month  || now.month,
               day    || now.day,
               hour   || now.hour,
               minute || now.minute,
               second || now.second,
               Rational(9, 24))
end
