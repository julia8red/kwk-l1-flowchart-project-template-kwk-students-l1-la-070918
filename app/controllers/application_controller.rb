 class ApplicationController < Sinatra::Base

  configure do
    set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	erb :index
  end
  
  post "/" do 
    @questionNumber = params[:questionNumber]

    if @questionNumber == "1"
      @name = params[:name]
      return erb :question2
    elsif @questionNumber == "2"
      @name = params[:name]
      @choice1 = params[:first]
      return erb :question3
    elsif @questionNumber == "3"
      @name = params[:name]
      @choice1 = params[:first]
      @choice2 = params[:second]
      return erb :question4
    else
      @name = params[:name]
      @choice1 = params[:first]
      @choice2 = params[:second]
      @choice3 = params[:third]
      
      @the_answer = get_animal(@choice1, @choice2, @choice3)
      
      return erb :results
    end
    
  end
  
end
