class Vote < ApplicationRecord
  before_validation :set_default, on: :create

  def set_default
    self.url_h = Digest::MD5.hexdigest(self.url)[0..15]
    self.article_host = URI(self.url).hostname
    self.article_path = URI(self.url).path
    self.date = Date.today
    self.user_agent = 'dummy'
  end
  

end
