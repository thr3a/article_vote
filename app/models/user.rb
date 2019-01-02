class User < ApplicationRecord

  has_many :votes

  def self.generate_id(str)
    Digest::MD5.hexdigest("#{str}_#{Rails.application.credentials.id_salt}")[0..11]
  end

end
