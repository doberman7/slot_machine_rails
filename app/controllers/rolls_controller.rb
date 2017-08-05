class RollsController < ApplicationController

  def create
    @roll = Roll.new
  end

  def index
    @rolls = []
    p "/" * 50
    3.times { @rolls << Roll.create }
    #Mostrar "WINER" si al mapear Rolls, solo hay un unico value
    p @win = "WINNER!!" if @rolls.map! { |roll| roll.value }.uniq.count == 1
    p "/" * 50
    render 'rolls/index'
  end
end
