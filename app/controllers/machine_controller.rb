class MachineController < ApplicationController
  def index
    @rolls = []
    p "/" * 50
    3.times { @rolls << Roll.create }
    #Mostrar "WINER" si al mapear Rolls, solo hay un unico value
    p @win = "WINNER!!" if @rolls.map! { |roll| roll.value }.uniq.count == 1
    p "/" * 50
    render 'machine/index'
  end

end
