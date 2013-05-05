class HomeController < ApplicationController

	def index
		@idea = Idea.order("ideas.idea ASC")
		@ideaCreation = Idea.new()
	end
	
	def idea
		@idea = Idea.order("ideas.idea ASC")
		@ideaCreation = Idea.new()
	end
	
	def popular
		render("popular")
	end
	
	def show
		@idea = Idea.find(params[:id])
	end
	
	
	
	def create 
		@idea = Idea.new(params[:ideaCreation])
		if @idea.save
			flash[:notice] = "Idea Submitted."
			redirect_to(:action => 'idea')
		else
			render('new')
		end
	end
	
	def edit
		@idea = Idea.find(params[:id])
	end
	
	def update 
		@idea = Idea.find(params[:id])
		if @idea.update_attributes(params[:idea])
			flash[:notice] = "Idea Updated."
			redirect_to(:action => 'idea')
		else
			flash[:notice] = "Idea Failed to Update. Try again."
			render('edit')
		end
	end
	
	def delete 
	   Idea.find(params[:id]).destroy
	   redirect_to(:action => 'idea')
	end
	

	def index 
		render('index')
	end

end
