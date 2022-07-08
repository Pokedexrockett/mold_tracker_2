class StrainsController < ApplicationController

    def new
        @strain = Strain.new
        @strain.build_dry_room
    end

    def create
        @strain = Strain.new(strain_params)
        @strain.user_id = session[:user_id]

        if @strain.save
            redirect_to strain_path(@strain)

        else
            @strain.build_dry_room
            render :new
        end
    end

    def index
        if params[:dry_room_id]
            dry_room = DryRoom.find(params[:dry_room_id])
            @strains = dry_room.strains

        else
            @strains = Strain.order_by_batch_number.includes(:dry_room)
        end
    end

    def show

    end

    def edit 
        if authorized_to_edit?(@strain)
            render :edit
        else
            redirect_to strain_path(@strain)
        end
    end

    def update
        if @strain.update(strain_params)
            redirect_to strain_path(@strain)
        else
            render :edit
        end
    end

    def destroy
        @strain = Strain.find(params[:id])
        @strain.destroy
        redirect_to strains_path
    end


    private
    def strain_params
        params.require(:strain).permit(:name, :batch_number, :metric_tag, :date, :mold_weight, :dry_room_id, dry_room_attributes: [:room_number], images: [])
    end

    def set_strain
        @strain = Strain.find_by(id: params[:id])
        redirect_to strains_path if !@strain 
    end
end
