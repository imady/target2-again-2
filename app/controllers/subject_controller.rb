class SubjectController < ApplicationController

  layout false

  def math
    #render('english')
  end

  def english
    @pages = [4,7,8,12,15,16,21]

    @id = params[:id]
    @page = params[:page]


  end

  def list_subject
    redirect_to(:controller => 'subject', :action => 'math')
  end

  def lynda
    redirect_to("http://lynda.com")
  end
end
