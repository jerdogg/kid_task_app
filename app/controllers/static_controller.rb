require 'rails/application_controller'

class StaticController < Rails::ApplicationController
  layout false

  def index
    puts "static controller"
    render file: Rails.root.join('public', 'index.html')
  end
end
