class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.references :owner, index: true
      t.text :text
      t.string :title
      t.integer :upvotes

      t.timestamps
    end
  end
end
