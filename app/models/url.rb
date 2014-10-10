class Url < ActiveRecord::Base
   validates :url, presence: true
   validates :hex, uniqueness: true, presence: true


  def hex_random_generator
    require 'SecureRandom'
    hex = SecureRandom.urlsafe_base64(3)
    # if hex is uniq
    # return hex
    # else
    # hex_random_generator
    # end
  end

end
