# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe 'employee_roles' do # rubocop:disable RSpec/DescribeClass
  # This should return the minimal set of attributes required to create a valid
  # EmployeeRole. As you add validations to EmployeeRole, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      EmployeeRole.create! valid_attributes
      get employee_roles_url
      expect(response.successful?).to be(true)
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      employee_role = EmployeeRole.create! valid_attributes
      get employee_role_url(employee_role)
      expect(response.successful?).to be(true)
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      employee_role = EmployeeRole.create! valid_attributes
      get edit_employee_role_url(employee_role)
      expect(response.successful?).to be(true)
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new EmployeeRole' do
        expect do
          post employee_roles_url, params: { employee_role: valid_attributes }
        end.to change(EmployeeRole, :count).by(1)
      end

      it 'redirects to the created employee_role' do
        post employee_roles_url, params: { employee_role: valid_attributes }
        expect(response).to redirect_to(employee_role_url(EmployeeRole.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new EmployeeRole' do
        expect do
          post employee_roles_url, params: { employee_role: invalid_attributes }
        end.not_to change(EmployeeRole, :count)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post employee_roles_url, params: { employee_role: invalid_attributes }
        expect(response.has_http_status?(:unprocessable_entity)).to be(true)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested employee_role' do
        employee_role = EmployeeRole.create! valid_attributes
        patch employee_role_url(employee_role), params: { employee_role: new_attributes }
        employee_role.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the employee_role' do
        employee_role = EmployeeRole.create! valid_attributes
        patch employee_role_url(employee_role), params: { employee_role: new_attributes }
        employee_role.reload
        expect(response).to redirect_to(employee_role_url(employee_role))
      end
    end

    context 'with invalid parameters' do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        employee_role = EmployeeRole.create! valid_attributes
        patch employee_role_url(employee_role), params: { employee_role: invalid_attributes }
        expect(response.has_http_status?(:unprocessable_entity)).to be(true)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested employee_role' do
      employee_role = EmployeeRole.create! valid_attributes
      expect do
        delete employee_role_url(employee_role)
      end.to change(EmployeeRole, :count).by(-1)
    end

    it 'redirects to the employee_roles list' do
      employee_role = EmployeeRole.create! valid_attributes
      delete employee_role_url(employee_role)
      expect(response).to redirect_to(employee_roles_url)
    end
  end
end
