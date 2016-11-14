class SiteController < ApplicationController
	def home
		#render 'home' // si la vista se llama igual que el def podemos ahorrarnos esta linea
	end

	def contact
	end

	def calculator
	end

	def calculate
		@num1 = params[:first_num].to_f
		@num2 = params[:second_num].to_f
		@result = @num1 + @num2
	end
end
