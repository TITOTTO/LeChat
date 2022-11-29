class UserMailer < ApplicationMailer
   default from: 'noreply@cat-e-store.com'
 
   def welcome_email(user)
     @user = user
     mail(to: @user.email, subject: 'Chat alors! Bienvenue')
   end
 
   def order_confirm(user)
     @user = user
     mail(to: @user.email, subject: "Confirmation d'aChAT")
   end
 end