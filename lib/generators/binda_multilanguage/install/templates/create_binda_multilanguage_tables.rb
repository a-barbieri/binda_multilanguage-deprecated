class CreateBindaMultilanguageTables < ActiveRecord::Migration[5.0]

	def change

		# update Binda tables to support multilanguage
		change_column_null :binda_components, :name, true
		add_column :binda_components, :lang, :string, default: 'en', null: false

		create_table :binda_languages do |t|
			t.string :lang, null: false
			t.boolean :selected, null: false, default: false
		end

	end

end