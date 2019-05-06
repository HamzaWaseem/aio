class CarSellingsController < InheritedResources::Base

  private

    def car_selling_params
      params.require(:car_selling).permit(:title, :rates, :details, :published_at)
    end

end
