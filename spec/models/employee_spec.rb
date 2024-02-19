# frozen_string_literal: true

# == Schema Information
#
# Table name: employees
#
#  id         :bigint           not null, primary key
#  age        :integer
#  first_name :string
#  last_name  :string
#  role       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Employee do
  it { is_expected.to validate_presence_of(:first_name) }
  it { is_expected.to validate_presence_of(:last_name) }
  it { should validate_presence_of(:role) } # rubocop:disable RSpec/ImplicitExpect
end
