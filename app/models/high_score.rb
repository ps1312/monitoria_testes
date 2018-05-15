class HighScore < ActiveRecord::Base
    validates :game, presence: true
end
