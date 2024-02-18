require 'rails_helper'

RSpec.describe "employee_roles/new", type: :view do
  before(:each) do
    assign(:employee_role, EmployeeRole.new(
      name: "MyString"
    ))
  end

  it "renders new employee_role form" do
    render

    assert_select "form[action=?][method=?]", employee_roles_path, "post" do

      assert_select "input[name=?]", "employee_role[name]"
    end
  end
end
