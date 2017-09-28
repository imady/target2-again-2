class SubjectsController < ApplicationController

	layout false

  def index
	@subjects = Subject.order("created_at DESC")
  end

  def show
	@subject = Subject.find(params[:id])
  end

  def new
  @subject = Subject.new({:Name => "Default"})
  end
  
  def create
	@subject = Subject.new(params.require(:subject).permit(:Name, :Position, :Visible))
	
	if @subject.save
	
		redirect_to(:action => 'index')
	else
		render('new')
	end
  end

  def edit
	@subject = Subject.find(params[:id])
  end
  
  def update
	@subject = Subject.find(params[:id])
		@subject.update_attributes(params.require(:subject).permit(:Name, :Position, :Visible))
		if @subject.save
		flash[:notice] = "New Subject Has been Saved"
		redirect_to(:action =>'show',:id => @subject.id)
	else
		render('edit')
	end
  end

  def delete
	@subject = Subject.find(params[:id])
  end
  
  def destroy
	@subject = Subject.find(params[:id])
	@subject.destroy
	flash[:notice] = "New Subject Has been '#{@subject.Name}' Saved Deleted"
	redirect_to(:action => 'index')
  end
end
