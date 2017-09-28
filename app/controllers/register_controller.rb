class RegisterController < ApplicationController
	
	layout false


  def new
	@register = Register.new(:Name => 'Name',:Quantity => 'Quantity', :Subject => 'Subject', :Class => 'Class')
  end
  
  def create
  @register = Register.new(params.require(:register).permit(:Name,:Quantity,:Subject, :Class))
  @register.save
  redirect_to(:action => 'index')
  end
	
  def index
	@register = Register.order('created_at DESC')
  end

  def show
  @register = Register.find(params[:id])
  end

  def edit
  @register = Register.find(params[:id])
  end
  
  def update
	@register = Register.find(params[:id])
	@register.update_attributes(params.require(:register).permit(:Name, :Quantity, :Subject, :Class))
	@register.save
	redirect_to(:action => 'index')
  end

  def delete
	@register_delete = Register.find(params[:id])
  end

  def destroy
	@register_delete = Register.find(params[:id])
	@register_delete.destroy
	redirect_to(:action=>'index')
  end
end
















