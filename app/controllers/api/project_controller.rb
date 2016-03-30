class Api::ProjectController < ApplicationController
  protect_from_forgery
  skip_before_action :verify_authenticity_token, if: :json_request?

  def index
    @projects = Project.all
    render json: @projects
  end

  def import_json
    puts params[:project]
    Project.import params[:project]
    render :nothing => true, :status => :no_content
  end

  protected

  def json_request?
    request.format.json?
  end
end
