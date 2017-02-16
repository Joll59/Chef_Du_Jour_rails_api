class AddColumnToDiningExperiences < ActiveRecord::Migration[5.0]
  def change
    add_column :dining_experiences, :title, :string
  end
end
