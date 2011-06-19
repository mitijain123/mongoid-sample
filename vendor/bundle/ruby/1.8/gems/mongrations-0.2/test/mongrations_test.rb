require 'test_helper'

class MongrationsTest < ActiveSupport::TestCase
  context "A valid MongoMapper connection" do
    setup do
      MongoMapper.connection = Mongo::Connection.new
      MongoMapper.database = "mongrations_test"
      @path = File.join("test", "mongrations")
      @version = "20101125020919"
    end

    context "with a valid database" do
      context "with a pending migration" do
        should "migrate up to a given version" do
          Widget.create(:name => "Sparkling Wizzles", :price => 100)
          Widget.first.price.should == 100
          MongoMapper::Migrator.run(:up, @path, @version)
          Widget.first.price.should == 200
        end

        should "run all pending migrations" do

          Widget.create(:name => "Sparkling Wizzles", :price => 100)
          Widget.first.price.should == 100
          MongoMapper::Migrator.migrate(@path, nil)
          Widget.first.price.should == 200
        end
      end

      should "run a migration:down" do
        Widget.create(:name => "Sparkling Wizzles", :price => 100)
        Widget.first.price.should == 100
        MongoMapper::Migrator.migrate(@path, nil)
        Widget.first.price.should == 200
        MongoMapper::Migrator.run(:down, @path, @version)
        Widget.first.price.should == 100
      end

      should "run a migration rollback" do
        Widget.create(:name => "Sparkling Wizzles", :price => 100)
        Widget.first.price.should == 100
        MongoMapper::Migrator.migrate(@path, nil)
        Widget.first.price.should == 200
        MongoMapper::Migrator.rollback(@path, 1)
        Widget.first.price.should == 100
      end

      should "not run a migration more than once" do
        Widget.create(:name => "Sparkling Wizzles", :price => 100)
        Widget.first.price.should == 100
        MongoMapper::Migrator.migrate(@path, nil)
        Widget.first.price.should == 200
        MongoMapper::Migrator.migrate(@path, nil)
        Widget.first.price.should == 200
      end
    end

    teardown do
      # Not gonna remove it. For now.
      # MongoMapper.connection.drop_database "mongrations_test"
    end
  end
end
