class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides
  has_secure_password
<<<<<<< HEAD
  before_create :default
=======
  after_initialize :default
>>>>>>> c940a59634119d74b5adac5a20e78cc588823b58

  def default
    self.admin = false
  end

  def mood
<<<<<<< HEAD
    if self.nausea.nil? || self.happiness.nil?
      "WHO CARES"
    else
      if self.nausea > self.happiness
        "sad"
      else
        "happy"
      end
=======
    if self.nausea > self.happiness
      "sad"
    else
      "happy"
>>>>>>> c940a59634119d74b5adac5a20e78cc588823b58
    end
  end

end
