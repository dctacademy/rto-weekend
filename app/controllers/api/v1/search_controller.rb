module Api 
	module V1
		class SearchController < ApplicationController


			def index 
				if params[:reg_no]
					@registration_number = RegistrationNumber.find_by_name(params[:reg_no])
				end

				if params[:locality]
					@locality = Locality.find_by_name(params[:locality])
				end

			end

		end
		
	end
end