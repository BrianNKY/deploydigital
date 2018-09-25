class ContactMailer < ApplicationMailer

    def contact
    
        mail(to: 'contact@test.fr', subject: 'Sujet du mail')
        
    end

end
