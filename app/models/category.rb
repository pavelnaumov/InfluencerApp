class Category < ApplicationRecord
  belongs_to :influencer, optional: true
end
