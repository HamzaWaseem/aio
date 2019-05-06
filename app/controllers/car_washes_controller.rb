class CarWashesController < InheritedResources::Base

  private

    def car_wash_params
      params.require(:car_wash).permit(:title, :rates, :body, :published_at)
    end

end
