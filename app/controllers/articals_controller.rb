class ArticalsController < ApplicationController
    before_action :setArtical, only: [:show,:edit,:update,:destroy] 
    
    def show
        #byebug
    end

    def index
        @artical=Artical.all
    end

    def new 
        p "1"
        #p @artical.errors.full_messages
        @artical=Artical.new
    end

    def edit
    end

    def create
        @artical = Artical.new(artical_params)
        if @artical.save
            flash[:notice]="Artical is saved successfully"
            redirect_to @artical
          else
            respond_to do |format|
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @article.errors, status: :unprocessable_entity }
              end
          end
    end

    def update
        
        if Artical.update(artical_params)
            flash[:notice]="Artical has updated"
            redirect_to @artical
        else
            respond_to do |format|
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @article.errors, status: :unprocessable_entity }
              end
        end
    end

    def destroy
        
        @artical.delete
        redirect_to articals_path
    end
    private
    def setArtical()
        @artical= Artical.find(params[:id])
    end
    def artical_params
        params.require(:artical).permit(:title, :description)
    end

end