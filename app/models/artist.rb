class Artist
  include Mongoid::Document
  field :name, :type => String
  embeds_many :instruments

  def self.method_missing(method_id, *arguments, &block)
    case method_id.to_s
      when /^find_by_([_a-zA-Z]\w*)$/
        p $1
      else
      
    end

    p method_id
    p arguments
    p "-----------------"
  end
end
