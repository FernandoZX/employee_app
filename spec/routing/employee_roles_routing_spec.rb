# frozen_string_literal: true

require 'rails_helper'

RSpec.describe EmployeeRolesController do # rubocop:disable RSpec/SpecFilePathFormat
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/employee_roles').to route_to('employee_roles#index')
    end

    it 'routes to #new' do
      expect(get: '/employee_roles/new').to route_to('employee_roles#new')
    end

    it 'routes to #show' do
      expect(get: '/employee_roles/1').to route_to('employee_roles#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/employee_roles/1/edit').to route_to('employee_roles#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/employee_roles').to route_to('employee_roles#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/employee_roles/1').to route_to('employee_roles#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/employee_roles/1').to route_to('employee_roles#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/employee_roles/1').to route_to('employee_roles#destroy', id: '1')
    end
  end
end
