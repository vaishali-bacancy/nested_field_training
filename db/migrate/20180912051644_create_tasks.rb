class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.references :project, foreign_key: true
      t.string :title
      t.string :description
      t.boolean :completed, default:false
      t.timestamps
    end
  end
end
