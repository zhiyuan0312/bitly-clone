class CreateUrls < ActiveRecord::Migration
	def change
		create_table :urls do |t|
			t.string :url
			t.string :shorterned_url
			t.timestamps null: false
		end
	end
end
