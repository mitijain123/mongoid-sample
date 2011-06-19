# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mongo}
  s.version = "1.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jim Menard", "Mike Dirolf", "Kyle Banker"]
  s.date = %q{2011-05-11}
  s.default_executable = %q{mongo_console}
  s.description = %q{A Ruby driver for MongoDB. For more information about Mongo, see http://www.mongodb.org.}
  s.email = %q{mongodb-dev@googlegroups.com}
  s.executables = ["mongo_console"]
  s.files = ["test/grid_file_system_test.rb", "test/db_test.rb", "test/collection_test.rb", "test/cursor_test.rb", "test/grid_test.rb", "test/db_api_test.rb", "test/conversions_test.rb", "test/connection_test.rb", "test/uri_test.rb", "test/cursor_message_test.rb", "test/cursor_fail_test.rb", "test/test_helper.rb", "test/grid_io_test.rb", "test/db_connection_test.rb", "test/safe_test.rb", "test/support_test.rb", "test/threading_test.rb", "test/unit/db_test.rb", "test/unit/repl_set_connection_test.rb", "test/unit/collection_test.rb", "test/unit/cursor_test.rb", "test/unit/grid_test.rb", "test/unit/connection_test.rb", "test/unit/pool_test.rb", "test/unit/safe_test.rb", "test/async/collection_test.rb", "test/async/cursor_test.rb", "test/async/connection_test.rb", "test/async/worker_pool_test.rb", "test/load/unicorn/unicorn.rb", "test/load/unicorn/load.rb", "test/load/resque/processor.rb", "test/load/resque/load.rb", "test/load/thin/load.rb", "test/auxillary/slave_connection_test.rb", "test/auxillary/threaded_authentication_test.rb", "test/auxillary/authentication_test.rb", "test/auxillary/fork_test.rb", "test/auxillary/autoreconnect_test.rb", "test/auxillary/repl_set_auth_test.rb", "test/auxillary/1.4_features.rb", "test/tools/test.rb", "test/tools/repl_set_manager.rb", "test/tools/auth_repl_set_manager.rb", "test/tools/load.rb", "test/tools/sharding_manager.rb", "test/threading/threading_with_large_pool_test.rb", "test/bson/byte_buffer_test.rb", "test/bson/binary_test.rb", "test/bson/object_id_test.rb", "test/bson/json_test.rb", "test/bson/timestamp_test.rb", "test/bson/bson_test.rb", "test/bson/ordered_hash_test.rb", "test/bson/hash_with_indifferent_access_test.rb", "test/support/keys.rb", "test/support/hash_with_indifferent_access.rb", "test/replica_sets/rs_test_helper.rb", "test/replica_sets/pooled_insert_test.rb", "test/replica_sets/count_test.rb", "test/replica_sets/replication_ack_test.rb", "test/replica_sets/query_secondaries.rb", "test/replica_sets/query_test.rb", "test/replica_sets/connection_string_test.rb", "test/replica_sets/insert_test.rb", "test/replica_sets/connect_test.rb", "bin/mongo_console"]
  s.homepage = %q{http://www.mongodb.org}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Ruby driver for the MongoDB}
  s.test_files = ["test/grid_file_system_test.rb", "test/db_test.rb", "test/collection_test.rb", "test/cursor_test.rb", "test/grid_test.rb", "test/db_api_test.rb", "test/conversions_test.rb", "test/connection_test.rb", "test/uri_test.rb", "test/cursor_message_test.rb", "test/cursor_fail_test.rb", "test/test_helper.rb", "test/grid_io_test.rb", "test/db_connection_test.rb", "test/safe_test.rb", "test/support_test.rb", "test/threading_test.rb", "test/unit/db_test.rb", "test/unit/repl_set_connection_test.rb", "test/unit/collection_test.rb", "test/unit/cursor_test.rb", "test/unit/grid_test.rb", "test/unit/connection_test.rb", "test/unit/pool_test.rb", "test/unit/safe_test.rb", "test/async/collection_test.rb", "test/async/cursor_test.rb", "test/async/connection_test.rb", "test/async/worker_pool_test.rb", "test/load/unicorn/unicorn.rb", "test/load/unicorn/load.rb", "test/load/resque/processor.rb", "test/load/resque/load.rb", "test/load/thin/load.rb", "test/auxillary/slave_connection_test.rb", "test/auxillary/threaded_authentication_test.rb", "test/auxillary/authentication_test.rb", "test/auxillary/fork_test.rb", "test/auxillary/autoreconnect_test.rb", "test/auxillary/repl_set_auth_test.rb", "test/auxillary/1.4_features.rb", "test/tools/test.rb", "test/tools/repl_set_manager.rb", "test/tools/auth_repl_set_manager.rb", "test/tools/load.rb", "test/tools/sharding_manager.rb", "test/threading/threading_with_large_pool_test.rb", "test/bson/byte_buffer_test.rb", "test/bson/binary_test.rb", "test/bson/object_id_test.rb", "test/bson/json_test.rb", "test/bson/timestamp_test.rb", "test/bson/bson_test.rb", "test/bson/ordered_hash_test.rb", "test/bson/hash_with_indifferent_access_test.rb", "test/support/keys.rb", "test/support/hash_with_indifferent_access.rb", "test/replica_sets/rs_test_helper.rb", "test/replica_sets/pooled_insert_test.rb", "test/replica_sets/count_test.rb", "test/replica_sets/replication_ack_test.rb", "test/replica_sets/query_secondaries.rb", "test/replica_sets/query_test.rb", "test/replica_sets/connection_string_test.rb", "test/replica_sets/insert_test.rb", "test/replica_sets/connect_test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bson>, [">= 1.3.1"])
    else
      s.add_dependency(%q<bson>, [">= 1.3.1"])
    end
  else
    s.add_dependency(%q<bson>, [">= 1.3.1"])
  end
end
