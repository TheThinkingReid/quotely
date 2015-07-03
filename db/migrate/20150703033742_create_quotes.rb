class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|

    	t.string :quotes
    	t.string :author
    	t.string :type

      t.timestamps
    end
  end
end
