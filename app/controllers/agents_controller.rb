class AgentsController < ApplicationController
  
  def show
    render template: "agents/#{params[:page]}"
  end
  
end
