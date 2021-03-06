# encoding: utf-8
# frozen_string_literal: true
module Rudisco
  path_to_database =
    ENV['RUDISCO_DB'] || File.join(__dir__, '../../lib/database/rudisco.db')

  Sequel.connect "sqlite://#{path_to_database}",
                 max_connections: 40,
                 pool_sleep_time: 0.015,
                 single_threaded: true,
                 pool_timeout: 60000
end # module Rudisco
