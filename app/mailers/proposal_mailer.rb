class ProposalMailer < ApplicationMailer
  def new_proposal_message(proposal)
    @proposal = proposal
    mail(to: @proposal.user.email , from: "cfp@smartgioiosa.it", subject: @proposal.title)
   end
end
