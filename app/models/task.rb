class Task < ApplicationRecord
    #add 4/16
    validates :status, presence: true, length: { maximum: 10 }
end
