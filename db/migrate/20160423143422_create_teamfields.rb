class CreateTeamfields < ActiveRecord::Migration
  def change
    create_table :teamfields do |t|
      t.string :team_name
      t.string :team_technology
      t.string :team_project
      t.boolean :removed
      t.references :userform, index: true

      t.timestamps
    end
  end
end
