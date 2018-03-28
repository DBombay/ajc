class Entry < ApplicationRecord
  validates :body, presence: true

  belongs_to :blog
  has_many :pictures, dependent: :destroy
end
