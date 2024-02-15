class CsvFile < ApplicationRecord
  has_one_attached :file

  validates :file, uniqueness: true
end
