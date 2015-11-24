class SignupsController < ApplicationController
  before_action :authenticate_customer!, except: [:completed]
  
  def company
  end
  
  def domain
  end
  
  def agreement
  end
  
  def site
  end
  
  def completed
  end

end