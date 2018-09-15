class ArticulosController < ApplicationController
    def new
        @articulo = Articulo.new
    end
    def index
        @articulo = Articulo.all
    end
    def create
        @articulo = Articulo.new(articulo_params)
        if @articulo.save
            redirect_to @articulo
        else
            render 'new'
        end
    end
    def show
        @articulo = Articulo.find(params[:id])
    end
    def edit
        @articulo = Articulo.find(params[:id])
    end
    def update
        @articulo = Articulo.find(params[:id])
        
        if @articulo.update(articulo_params)
            redirect_to @articulo
        else
            render 'edit'
        end
    end
    private
    def articulo_params
        params.require(:articulo).permit(:title, :text)
    end
end