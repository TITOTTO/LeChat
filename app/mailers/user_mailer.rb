class UserMailer < ApplicationMailer
<<<<<<< HEAD
    default from: 'kuaker26@gmail.com'

    def participate_email(attendance)
    end
=======
   default from: 'noreply@cat-e-store.com'
>>>>>>> c49db2774ccde6824bc5838a3d1418393ff98f78
 
   def welcome_email(user)
     @user = user
     mail(to: @user.email, subject: 'Chat alors! Bienvenue')
   end
 
   def order_confirm(user)
     @user = user
     mail(to: @user.email, subject: "Confirmation d'aChAT")
   end
 end