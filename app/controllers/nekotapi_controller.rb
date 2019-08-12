class NekotapiController < ApplicationController
    def index
    end

    def title
    end

    def ranking
        @ranking = Ranking.all.order(score: :desc)
        @ranking2 = Ranking2.all.order(score: :desc)
    end

    def game
    end

    def submitscore
        @score = params[:score]
        @ranking = Ranking.new
        @ranking2 = Ranking2.new
    end

    def createscore
        @ranking = Ranking.new
        @ranking.name = params[:name]
        @ranking.score = params[:score]
        @ranking.memo = params[:memo]
        @ranking.save

        @ranking2 = Ranking2.new
        if params[:name].length <= 0 then
            @ranking2.name = 'NoName'
        elsif 1 <= params[:name].length and params[:name].length <= 10 then
            @ranking2.name = params[:name]
        else
            @ranking2.name = params[:name][0, 10]
        end
        @ranking2.score = params[:score]
        if params[:memo].length <= 140 then
            @ranking2.memo = params[:memo]
        else
            @ranking2.memo = params[:memo][0, 140]
        end
        @ranking2.save
        redirect_to '/nekotapi/title'
    end


end
