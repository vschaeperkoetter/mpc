class TournamentsController < ApplicationController
	attr_accessor :kittens, :tournament

  def index
    @tournaments = Tournament.all
  end

  def new
  	@tournament = Tournament.create(user_id: current_user.id)
    @tournament.save

    @kittens = HTTParty.get("http://pv.pop.umn.edu/images/").parsed_response["data"]

    @kittens.each do |kitten_url|
      @tournament.kittens.build(url: kitten_url, wins: 0).save
    end
    @tournament.save

    redirect_to @tournament
  end

  # def create
  # 	@tournament = Tournament.create(user_id: current_user.id)
  # 	@tournament.save

  # 	@kittens = HTTParty.get("http://pv.pop.umn.edu/images/").parsed_response["data"]

  # 	@kittens.each do |kitten_url|
  # 		@tournament.kittens.build(url: kitten_url, wins: 0).save
  # 	end
  # 	@tournament.save

  # 	redirect_to @tournament
  # end

  def show
  end

  # def round1
  # 	@kittens
  # end

  # def round2
  # end

  # def round3
  # end

  # def round4
  # end
end
