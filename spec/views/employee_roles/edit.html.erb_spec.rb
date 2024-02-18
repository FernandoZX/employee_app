require 'rails_helper'

RSpec.describe "employee_roles/edit", type: :view do
  let(:employee_role) {
    EmployeeRole.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:employee_role, employee_role)
  end

  it "renders the edit employee_role form" do
    render

    assert_select "form[action=?][method=?]", employee_role_path(employee_role), "post" do

      assert_select "input[name=?]", "employee_role[name]"
    end
  end
end
