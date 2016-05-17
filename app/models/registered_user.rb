class RegisteredUser < ApplicationRecord
  validates :number, numericality: { only_integer: true }, presence: true
  validates :date, presence: true
end
