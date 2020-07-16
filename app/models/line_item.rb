class LineItem < ApplicationRecord
  belongs_to :job
  belongs_to :saved
end
