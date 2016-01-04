class MenusController < ApplicationController

  get '/menus' do
    @menus = Menu.all
    erb :'/menus/index'
  end

  get '/menus/new' do
    erb :'/menus/new'
  end

  post '/menus' do
    @menu = Menu.create(params[:menu])
    if !params["entree"]["name"].empty?
      @menu.entrees << Entree.create("name" => params[:entree][:name], "description" => params[:entree][:description], "ingredients" => params[:entree][:ingredients])
    end
    @menu.save
    redirect to "menus"
  end


  get '/menus/:id' do
    @menu = Menu.find(params[:id])
    erb :'/menus/show'
  end

  get '/menus/:id/edit' do
    @menu = Menu.find(params[:id])
    erb :'/menus/edit'
  end

  post '/menus/:id' do
    @menu = Menu.find(params[:id])
    @menu.update(params["menu"])
    if !params["entree"]["name"].empty?
      @menu.entrees << Entree.create(name: params["entree"]["name"]["description"]["ingredients"])
    end
    redirect to "menus/#{@menu.id}"
  end

  post '/menus/:id/delete' do
    @menu = Menu.find_by(params[:id])
    @menu.destroy
    redirect to '/menus'
  end

end
