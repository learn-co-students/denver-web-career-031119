class Application < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views") }
  use Rack::MethodOverride

  get "/plants" do
    @plants = Plant.all
    erb :index
  end

  get "/plants/new" do
    erb :new
  end

  get "/plants/:id/edit" do
    @plant = Plant.find(params[:id])

    erb :edit
  end

  get "/plants/:id" do
    @plant = Plant.find(params[:id])
    erb :show
  end

  post "/plants" do
    Plant.create(params)

    redirect "/plants"
  end

  put "/plants/:id" do
    plant = Plant.find(params[:id])
    plant.update({
      species: params["species"],
      size: params["size"]
    })

    redirect "/plants"
  end

  delete "/plants/:id" do
    plant = Plant.find(params[:id])
    plant.destroy

    redirect "/plants"
  end
end
