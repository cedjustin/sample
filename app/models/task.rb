class Task < ApplicationRecord
    validates :content, presence: true, length:{maximum: 130}, uniqueness: true
end
