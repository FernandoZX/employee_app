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
require 'rails_helper'

RSpec.describe EmployeeRole do
  it { is_expected.to validate_presence_of(:name) }
end
