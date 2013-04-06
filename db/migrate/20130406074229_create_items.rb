class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string      :name
      t.text        :description
      t.float       :price
      t.string      :location
      t.boolean     :available
      t.integer     :type
      t.timestamps
    end

    add_index :items, :name
    add_index :items, :price
    add_index :items, :type
\
  end
end
