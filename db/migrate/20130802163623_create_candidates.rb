class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.text :description
      t.attachment :curriculum
      t.string :email
      t.string :course
      t.references :selection_process

      t.timestamps
    end
  end
end