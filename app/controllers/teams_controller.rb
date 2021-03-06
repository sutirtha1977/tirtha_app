class TeamsController < ApplicationController
  layout 'admin'

  before_action :confirm_logged_in
  before_action :set_team_count, :only => [:new, :create, :edit, :update]

  def index
    @teams = Team.sorted
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    @team.avatar_loc = File.join("team", @team.first_name.downcase.split.first + ".jpg")

    if @team.save
      flash[:notice] = "Member created successfully."
      redirect_to(teams_path)
    else
      render "new.js.erb"
    end

  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    if @team.update_attributes(team_params)
      flash[:notice] = "Member '#{@team.name}' updated successfully."
      redirect_to(teams_path)
    else
      render "edit.js.erb"
    end 
  end

  def delete
    @team = Team.find(params[:id])
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    flash[:notice] = "Member '#{@team.name}' destroyed successfully."
    redirect_to(teams_path)
  end

  private

  def team_params
    params.require(:team).permit(
      :first_name,
      :last_name,
      :title,
      :email,
      :description,
      :cell_phone,
      :google,
      :facebook,
      :twitter,
      :linkedin,
      :position,
      :avatar_loc
    )
  end
  
  def set_team_count
    @team_count = Team.count
    if params[:action] == 'new' || params[:action] == 'create'
      @team_count += 1
    end
  end
end
