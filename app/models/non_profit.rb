class NonProfit < ApplicationRecord
    validates :why, presence: true
    validates :what_achieve, presence: true
    validates :website, presence: true
    validates :name, presence: true
    validates :contact, presence: true
    validates :contact_info, presence: true
    
end
