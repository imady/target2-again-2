class BooksController < ApplicationController
	
	layout false
  
  def index
	@book = Book.order("created_at DESC")
  end

  def new
	@book = Book.new
  end
  
  def save
  @book = Book.new(params.require(:book).permit(:Name, :Subject, :Quantity, :Class))
  @book.save
  redirect_to(:action => 'index')
  end

  def edit
  @book = Book.find(params[:id])
  end
  
  def update
  
  @book = Book.find(params[:id])
  @book.update_attributes(params.require(:book).permit(:Name, :Subject, :Quantity, :Class))
  @book.save
  flash[:notice] = "Books has been update"
  redirect_to(:action => 'index')
  end

	def show
	@book = Book.find(params[:id])
	end
	
	def delete
	@book = Book.find(params[:id])
	end
	
  def destroy
	@book = Book.find(params[:id])
	@book.destroy
	flash[:notice] = "Books has been deleted"
	redirect_to(:action=>'index')
  end
  
end
