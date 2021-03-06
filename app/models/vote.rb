class Vote < ApplicationRecord
  before_validation :set_default, on: :create
  belongs_to :user, foreign_key: :user_id, optional: true

  def set_default
    self.url_h = Digest::MD5.hexdigest(self.url)[0..15]
    self.article_host = URI(self.url).hostname
    self.article_path = URI(self.url).path
    self.date = Date.today
    self.user_agent = "dummy"
    self.uid_h = "dummy"
  end

  def value_localed
    case self.value_id
    when -1
      "役に立たなかった"
    when 0
      "どちらでもない"
    when 1
      "役立った"
    else
      "unknown"
    end
  end
  

end
