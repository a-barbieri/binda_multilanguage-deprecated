module Binda
	class Category
		include Mobility
		translates :name,        type: :string
		translates :description, type: :text
	end
end