class CreateNginxConfigs < ActiveRecord::Migration
  def change
    create_table :nginx_configs do |t|
      t.string :server_name
      t.string :root

      t.timestamps
    end
  end
end
