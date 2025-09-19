class RefereesController < ApplicationController
  def index
    @referees = Referee.all
  end

  def show
    @referee = Referee.find(params[:id])
  end
  def new
  @referee = Referee.new
end

def create
  @referee = Referee.new(referee_params)
  if @referee.save
    redirect_to referees_path, notice: "審判情報を登録しました"
  else
    render :new
  end
end

private

def referee_params
  params.require(:referee).permit(:name, :age, :experience, :organization)
end
end
