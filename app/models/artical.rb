class Artical < ApplicationRecord
    validates :title, presence: true, length: {minimum: 5,maximum: 10}
    validates :description, presence: true, length: {minimum: 10,maximum: 20}
end 