class Order < ApplicationRecord
    has_many :items
    belongs_to :seller, :class_name => "User"
end

