class RollsController < ApplicationController

  # def create
  #   @roll = Roll.new
  # end

  def index
    @rolls = []
    #p "/" * 50
    3.times { @rolls << Roll.create }
    #Mostrar "WINER" si al mapear Rolls, solo hay un unico value
    @win = "WINNER!!" if @rolls.map! { |roll| roll.value }.uniq.count == 1
    #p "/" * 50
    render 'rolls/index'
  end

  def roll_dice

    @rolls = []

    if params[:value]
        3.times { @rolls << Roll.create({ value: value }) }
      else
        3.times { @rolls << Roll.create }
    end
    #Se dejan solo los valores de cada Roll en el Ary, se eliminan los repetidos, y si al la cuenta de elementos dentro del Ary es 1, @win es "WINER"
    @win = "WINNER!!" if @rolls.map! { |roll| roll.value }.uniq.count == 1
        
    # if request.xhr?
    #
    #     # renderear :_die_roll, pero no layout:
    #     render 'die_roll', layout: false
    #   else
    #
    #     render 'index'
    # end
    render 'rolls/index'
  end
end
