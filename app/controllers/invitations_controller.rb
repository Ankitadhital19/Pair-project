class InvitationsController < ApplicationController
  def invite
    @email = params[:email]
    @organization_id = params[:organization_id]
    InvitationsMailer.invite.deliver_now
  end
end
