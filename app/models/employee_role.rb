# frozen_string_literal: true

# == Schema Information
#
# Table name: employee_roles
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class EmployeeRole < ApplicationRecord
  validates :name, presence: true
end