module Binda
	module ComponentsControllerExtension
		extend ActiveSupport::Concern

		included do
			after_action :set_language, only: [:create, :update]
		end
		
		def set_language
      unless @component.update_attributes(lang_params)
      	redirect_to edit_structure_component_path( @structure.slug, @component.slug ), flash: { alert: @component.errors } 
      end
		end

		private
			def lang_params
				params.require(:component).permit( :lang )
			end
	end
end