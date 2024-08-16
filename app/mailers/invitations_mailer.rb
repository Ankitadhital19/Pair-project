class InvitationsMailer < ApplicationMailer
  def invite
    @organization_id = @organization_id
    mail(to: @email, subject: "Invitationss")
  end
end
