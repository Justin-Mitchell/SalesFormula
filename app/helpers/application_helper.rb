module ApplicationHelper
  
  def render_breadcrumbs?
    !(params[:action] == 'index' && params[:controller] == 'pages')
  end
  
end
