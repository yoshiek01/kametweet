class Tweet < ActiveRecord::Base
    validates :name, presence: true
end
