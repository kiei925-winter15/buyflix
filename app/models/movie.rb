class Movie < ActiveRecord::Base
  belongs_to :studio
  has_many :roles
  has_many :actors, through: :roles

  validates :name, presence: true
  validates :price, presence: true, numericality: true
end
