# frozen_string_literal: true

# == Schema Information
#
# Table name: employees
#
#  id         :bigint           not null, primary key
#  first_name :string
#  last_name  :string
#  age        :integer
#  role       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Employee < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true
  validates :role, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
