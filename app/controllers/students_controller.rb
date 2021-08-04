class StudentsController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def contacts
    end

    def welcome
    end
end
