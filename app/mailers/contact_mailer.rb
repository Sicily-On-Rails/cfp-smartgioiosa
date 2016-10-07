class ContactMailer < ApplicationMailer
  def new_contact_message(contact)
    @contact = contact
    mail(to: "cfp@smartgioiosa.it", from: @contact.email, subject: @contact.object)
   end
end
