class CarMaintenancesController < InheritedResources::Base

  private

    def car_maintenance_params
      params.require(:car_maintenance).permit(:title, :rates, :body, :published_at)
    end

end
