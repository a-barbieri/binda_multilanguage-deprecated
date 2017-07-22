module Binda
	class FieldGroup
		include Mobility
		translates :name,        type: :string
		translates :description, type: :text
	end
end
