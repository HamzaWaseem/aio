class WebsiteController < ApplicationController
  layout 'website'

  def index
    # @games = Header.all
    # @top_games = Game.last(3)
  end

  def about
    # @team = Team.first(4)
    # @team_testimonial = []
    # @team.each do |t|
    #   if t.testimonial.present?
    #     @team_testimonial << t
    #   end
    # end
    # @detail = Detail.last
  end

  def wash
      @wash = CarWash.all.order('created_at DESC').page params[:page]
  end

  def modification
    @modification = CarModification.all.order('created_at DESC').page params[:page]
  end

  def selling
    @car = CarSelling.all.order('created_at DESC').page params[:page]
  end

  def maintenance
    @maintenance = CarMaintenance.all.order('created_at DESC').page params[:page]
  end

  # def game
  #   # @games = Game.all.order('created_at DESC').page params[:page]
  # end
  #
  # def game_show
  #   @game = Game.where(name: params[:name]).first
  # end
  #
  # def locations
  #   @message = Contact.new
  # end
  #
  # def privacy
  #
  # end
  #
  # def create
  #   @message = Contact.new(message_params)
  #   @message.save
  #   redirect_to :contact
  # end
  #
  def about_us

  end

  private

  def message_params
    params.require(:contact).permit(:name,:phone,:email,:comment)
  end

  def car_maintenance_params
    params.require(:car_maintenance).permit(:title, :rates, :body, :published_at)
  end

  def car_modification_params
    params.require(:car_modification).permit(:title, :rates, :body, :published_at)
  end

  def car_selling_params
    params.require(:car_selling).permit(:title, :rates, :details, :published_at)
  end

  def car_wash_params
    params.require(:car_wash).permit(:title, :rates, :body, :published_at)
  end
end
