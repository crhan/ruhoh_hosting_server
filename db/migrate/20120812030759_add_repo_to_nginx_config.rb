class AddRepoToNginxConfig < ActiveRecord::Migration
  def change
    change_table :nginx_configs do |t|
      t.references :repo
    end
  end
end
