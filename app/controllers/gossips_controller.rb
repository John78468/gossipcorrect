class GossipsController < ApplicationController
    def index
        @gossips = Gossip.all
    end

    def show
        #puts "C" *50
        #puts params[:id]
        #puts "X" *50
        @gossip = Gossip.find(params[:id])
        @date = @gossip.created_at.to_date
    end
    
    def edit
        @gossip = Gossip.find(params[:id])
    end

    def update
        @gossip = Gossip.find(params[:id])
        gossip_params = params.require(:gossip).permit(:title, :content)
        @gossip.update(gossip_params)
        redirect_to gossips_path
    end
    def new
        @gossip = Gossip.new
    end
    def create
        gossip_params = params.require(:gossip).permit(:title, :content, :user_id)
        gossip = Gossip.create(gossip_params)
        redirect_to gossips_path
    end
    def destroy
        @gossip = Gossip.find(params[:id])
        @gossip.destroy
        redirect_to gossips_path, alert: "vous avez bien supprimé le gossip"
    end
end
