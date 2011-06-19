require 'rubygems'
require 'active_support'
require 'active_support/test_case'
require 'shoulda'
require 'matchy'
require 'mongo_mapper'
require 'models/widget'
require 'lib/mongrations'

class ActiveSupport::TestCase
  def teardown
    MongoMapper.database.collections.each do |coll|
      coll.remove
    end
  end

  def inherited(base)
    base.define_method teardown do
      super
    end
  end
end
