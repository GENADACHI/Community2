class Discussion < ApplicationRecord
    has_many :likes, as: :likeable
end
