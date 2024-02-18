require 'rails_helper'

RSpec.describe "employee_roles/index", type: :view do
  before(:each) do
    assign(:employee_roles, [
      EmployeeRole.create!(
        name: "Name"
      ),
      EmployeeRole.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of employee_roles" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end
