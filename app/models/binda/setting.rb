module Binda
	class Setting
		include Mobility
		translates :name,    type: :string
		translates :content, type: :text
	end
end