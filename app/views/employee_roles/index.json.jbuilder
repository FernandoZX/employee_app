# frozen_string_literal: true

json.array! @employee_roles, partial: 'employee_roles/employee_role', as: :employee_role
