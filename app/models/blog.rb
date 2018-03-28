class Blog < ApplicationRecord
  validates :title, presence: true

  has_many :entries, dependent: :destroy
  has_many :pictures, through: :entries
end
