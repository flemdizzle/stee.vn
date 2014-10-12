class Url < ActiveRecord::Base
   validates :url, presence: true
   # validates :hex, uniqueness: true, presence: true
   before_save :hex_random_generator

   # def initialize(attributes={})
   #    super
   #    @hex = hex_random_generator
   # end

# possibly add something to the model to check
# the DB for the hex value. validates isn't working
  def hex_random_generator
    require 'SecureRandom'
    hex = SecureRandom.urlsafe_base64(3)
    self.hex = hex
  end

end
