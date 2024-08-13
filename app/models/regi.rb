class Regi < ApplicationRecord
  has_many :filings, dependent: :destroy
  has_many :patients, dependent: :destroy
  has_many :charts, dependent: :destroy
  validates :last_name, :first_name, :gender, presence: true

  GENDER_OPTIONS = [
    ['Select', ''],
    ['Male', 'Male'],
    ['Female', 'Female'],
    ['Other', 'Other']
  ]
end
