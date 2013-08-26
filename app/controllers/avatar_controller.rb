class AvatarController < ApplicationController


	def avatar

		@u = Avatar.find(2)
		# u.avatar = params[:file]
		# u.avatar = File.open('somewhere')
		# u.save!
		# u.avatar.url # => '/url/to/file.png'
		# u.avatar.current_path # => 'path/to/file.png'
		# u.avatar.identifier # => 'file.png'
		
	end


  def create
    # Instantiate a new object using form parameters
    @subject = Avatar.new(params[:subject])
    # Save the object
    if @subject.save
      # If save succeeds, redirect to the list action
      redirect_to('https://github.com/carrierwaveuploader/carrierwave')
    else
      # If save fails, redisplay the form so user can fix problems
      redirect_to('http://redmine.phantasia.pe/issues/16594')
    end
  end


end
