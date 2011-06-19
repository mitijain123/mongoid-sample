class Instrument
  include Mongoid::Document
  field :name, :type => String
  embedded_in :artist
end
