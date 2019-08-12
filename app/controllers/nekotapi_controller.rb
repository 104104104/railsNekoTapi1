class NekotapiController < ApplicationController
    def index
    end

    def title
    end

    def ranking
        @ranking = Ranking.all.order(score: :desc)
    end

    def game
    end

    def submitscore
        @score = params[:score]
        @ranking = Ranking.new
    end

    def createscore
        @ranking = Ranking.new
        @ranking.name = params[:name]
        @ranking.score = params[:score]
        @ranking.memo = params[:memo]
        @ranking.save
        redirect_to '/nekotapi/title'
    end


end
