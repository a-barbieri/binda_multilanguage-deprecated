class CreateBindaMultilanguageTables < ActiveRecord::Migration[5.0]

	def change

		# update Binda tables to support multilanguage
		change_column_null :binda_components, :name, true
		add_column :binda_components, :lang, :string, default: 'en', null: false

	end

end