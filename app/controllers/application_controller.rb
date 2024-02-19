# frozen_string_literal: true

class ApplicationController < ActionController::Base # rubocop:disable Style/Documentation
  before_action :authenticate_user!
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  private

  def not_found
    model = controller_name.classify.constantize.model_name.human
    respond_to do |format|
      format.html do
        redirect_to root_url,
                    alert: t('activerecord.exceptions.not_found', model: model, id: params[:id])
      end
      format.json { render json: 'Record not found', status: :not_found }
    end
  end
end
