class Entry < ApplicationRecord
  belongs_to :entry_category
  belongs_to :entry
end
