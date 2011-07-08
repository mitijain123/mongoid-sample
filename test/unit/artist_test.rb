ENV["RAILS_ENV"] = "test"
require File.expand_path('../../../config/environment', __FILE__)
require 'rails/test_help'

class ArtistTest < ActiveSupport::TestCase
  test "the truth" do
    Artist.create(:name => "Mrs")    
    assert !Artist.find_by_name("Mrs").last.blank?
  end
end
