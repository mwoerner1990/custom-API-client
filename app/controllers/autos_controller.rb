class AutosController < ApplicationController
  
  def index
    @autos = Unirest.get("http://localhost:3000/api/v1/autos").body
    render 'index.html.erb'
  end

  def show
    @auto = Unirest.get("http://localhost:3000/api/v1/autos/#{params[:id]}").body
    render 'show.html.erb'
  end
end
