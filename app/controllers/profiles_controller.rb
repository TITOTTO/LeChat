class ProfilesController < ApplicationController

  

  # GET /profiles/1 or /profiles/1.json
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  # GET /profiles/1/edit
  def edit
  end

  # PATCH/PUT /profiles/1 or /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to profile_url(@profile), notice: "Profile was successfully updated." }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  

end
