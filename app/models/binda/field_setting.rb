module Binda
	class FieldSetting 
		include Mobility
		translates :name, type: :string
		translates :description, type: :text
		translates :default_text, type: :text
		translates :choices, type: :text
		translates :default_choice, type: :text
	end
end
