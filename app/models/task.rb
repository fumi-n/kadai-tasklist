class Task < ApplicationRecord
    #add 4/16
    #空送信でエラーアクション
    #validates :cotent, presence: true, length: { maximum: 255 }
    validates :status, presence: true, length: { maximum: 10 }
end
