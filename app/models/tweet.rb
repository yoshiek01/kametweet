class Tweet < ActiveRecord::Base
    validates :name, presence: true
    validates :content, length: { in: 1..140 }      
end
