class CreateRepos < ActiveRecord::Migration
  def change
    create_table :repos do |t|
      t.string :name
      t.string :url
      t.string :homepage

      t.timestamps
    end
  end
end
