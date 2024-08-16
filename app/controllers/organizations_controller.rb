class OrganizationsController < ApplicationController
  def new
    @organization = Organization.new
    @organizations = Organization.all
  end

  def create
    @organization = Organization.new(organization_params)
    @user = User.new(user_params.merge({ password: "password", admin: true }))
    if @organization.save && @user.save
      Membership.create(organization_id: @organization.id, user_id: @user.id)
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @organization = Organization.find(params[:id])
  end

  private
   def organization_params
    params.require(:organization).permit(:name)
   end

   def user_params
    params.require(:organization )[:users].permit(:email)
   end
end
