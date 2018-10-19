class UsersController < ApplicationController

    before_action :set_user, only: [:show, :edit, :update, :destroy, :add_tag]

    # GET /families
    # GET /families.json
    def index
      @user = User.all
    end

    # GET /families/1
    # GET /families/1.json

    def show
      @user = User.all
    end

    # GET /families/new
    def new
      @user = User.new
    end

    # GET /families/1/edit
    def edit
    end

    # POST /families
    # POST /families.json
    def nuevo
      @user = User.new(user_params)

      respond_to do |format|
        if @user.save
          format.html { redirect_to @user, notice: 'User was successfully created.' }
          format.json { render :show, status: :created, location: @user }
        else
          format.html { render :new }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /families/1
    # PATCH/PUT /families/1.json
    def update
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to @user, notice: 'User was successfully updated.' }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /families/1
    # DELETE /families/1.json
    def destroy
      @user.destroy
      respond_to do |format|
        format.html { redirect_to families_url, notice: 'User was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def user_params
        params.require(:user).permit(:password_confirmation , :password,:email, :name, :sex, :weight, :height, :age, :photo, :physical_activity_level, :family_id)
      end

  end