class Url < ActiveRecord::Base
  before_validation :hex_random_generator
   validates :url, presence: true
   validates :hex, uniqueness: true, presence: true


   # def initialize(attributes={})
   #    super
   #    @hex = hex_random_generator
   # end

# possibly add something to the model to check
# the DB for the hex value. validates isn't working
  def hex_random_generator
    require 'SecureRandom'
    hex = SecureRandom.urlsafe_base64(2)
    self.hex = hex
  end

end
