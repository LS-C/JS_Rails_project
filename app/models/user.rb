class User < ApplicationRecord
    has_many :items, foreign_key: 'seller_id'
    has_many :orders, through: :items
    has_many :purchases, foreign_key: 'buyer_id', :class_name => "Order"

    def full_name
        self.first_name + " " + self.last_name
    end

end

