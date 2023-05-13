class ArticalsController < ApplicationController
    
    def show
        #byebug
        @artical=Artical.find(params[:id])
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
        @artical=Artical.find(params[:id])
    end

    def create
        @artical = Artical.new(params.require(:artical).permit(:title, :description))
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
        @artical=Artical.find(params[:id])
        if Artical.update(params.require(:artical).permit(:title, :description))
            flash[:notice]="Artical has updated"
            redirect_to @artical
        else
            respond_to do |format|
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @article.errors, status: :unprocessable_entity }
              end
        end
    end
end