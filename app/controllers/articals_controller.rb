class ArticalsController < ApplicationController
    def show
        #byebug
        @artical=Artical.find(params[:id])
    end
end