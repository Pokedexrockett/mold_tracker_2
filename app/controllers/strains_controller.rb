class StrainsController < ApplicationController


    private
    def strain_params
        params.require(:strain).permit(:name, :batch_number, :metric_tag, :date, :mold_weight, :dry_room_id, dry_room_attributes: [:room_number], images: [])
    end
end
