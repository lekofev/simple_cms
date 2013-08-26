class PruebasController < ApplicationController
	def index
		@prueba=Prueba.find(1);
	end

	# def create
	#     # Instantiate a new object using form parameters
	#     @subject = Prueba.new(params[:subject])
	#     # Save the object
	#     if @subject.save
	#       # If save succeeds, redirect to the list action
	#       redirect_to(:controller=>'pruebas')
	#     else
	#       # If save fails, redisplay the form so user can fix problems
	#       redirect_to('https://www.google.com.pe/')
	#     end
	# end

	# def crear
	#   @user = Prueba.create( params[:user] )
	#   if @user.save
	#   		redirect_to(:controller=>'pruebas')
	#     else
	#       # If save fails, redisplay the form so user can fix problems
	#     	redirect_to('https://www.google.com.pe/')
	#     end
	# end

end
