require 'rails_helper'

RSpec.describe "employee_roles/show", type: :view do
  before(:each) do
    assign(:employee_role, EmployeeRole.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
