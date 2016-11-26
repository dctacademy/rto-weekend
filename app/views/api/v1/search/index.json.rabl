if params[:reg_no]
	if @registration_number.nil?
		node(:error) {"Registration Number not found"}
	else
		object @registration_number
		attributes :name

		child(:district) do 
			attributes :name
		end

		child(:localities) do 
			attributes :name
		end

		node(:district_name){@registration_number.district.name}
		node(:locality_names) {@registration_number.localities.pluck(:name)}
	end
end 


if params[:locality]
	if @locality.nil?
		node(:error) {"Locality Not found"}
	else
		object @locality
		attributes :name

		child(:registration_number) do 
			attributes :name
			node(:district_name) {|r| r.district.name}
			child(:district) do 
				attributes :name
			end
		end
	end
end