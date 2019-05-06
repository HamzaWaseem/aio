class CarModificationsController < InheritedResources::Base


  private

    def car_modification_params
      params.require(:car_modification).permit(:title, :rates, :body, :published_at)
    end

end
