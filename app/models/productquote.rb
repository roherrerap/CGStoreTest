class Productquote < ApplicationRecord
  belongs_to :product
  belongs_to :quote
end
