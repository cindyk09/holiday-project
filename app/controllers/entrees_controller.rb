class EntreesController < ApplicationController
  get '/entrees' do
    @entrees = Entree.all
    erb :'/entrees/index'
  end

  get '/entrees/new' do
    @menus = Menu.all
    erb :'/entrees/new'
  end

  post '/entrees' do

    if !params["menu"]["name"].empty?
      @menu = Menu.create(params["menu"])
      @entree = Entree.create("name" => params[:entree][:name], "description" => params[:entree][:description], "ingredients" => params[:entree][:ingredients])
      @entree.menu = @menu
      @menu.entrees << @menu
      @entree.save
      @menu.save
    else
      @entree = Entree.create(params[:entree])
      @entree.menu = Entree.find_by(id: params[:menu][:menu_id])
      @entree.menu.entrees << @entree
      @entree.save
      @entree.menu.save
    end
    redirect to "entrees/#{@entree.id}"
  end

  get '/entrees/:id' do
    @entree = Entree.find(params[:id])
    erb :'/entrees/show'
  end

  get '/entrees/:id/edit' do
    @entree = Entree.find(params[:id])
    erb :'/entrees/edit'
  end

  post '/entrees/:id' do
    @entree = Entree.find(params[:id])
    @entree.update(params["entree"])
    @entree.menu = Menu.find_by(id: params["menu"]["menu_id"])
    if !params["menu"]["name"].empty?
      @entree.menu = Menu.create(name: params["menu"]["name"])
    end
    @entree.menu.entrees << @entree
    @entree.save
    @entree.menu.save
    redirect to "entrees/#{@entree.id}"
  end

  post '/pets/:id/delete' do
    @pet = Pet.find_by(params[:id])
    @pet.destroy
    redirect to '/pets'
  end
end
