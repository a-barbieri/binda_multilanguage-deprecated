module Binda
	class Binding
		include Mobility
		translates :title,       type: :string
		translates :description, type: :text
	end
end