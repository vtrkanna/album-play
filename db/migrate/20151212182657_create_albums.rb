class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :entity_path, :title, :tag, :caption, :audio_duration, :entity_size, :entity_type
      t.text :description
      t.boolean :active
      t.attachment :image
      t.attachment :audio
      t.integer :user_id, :created_by, :updated_by
      t.timestamps null: false
    end
    add_index(:albums, :title)
    add_index(:albums, :entity_path)
    add_index(:albums, :entity_type)
  end
end
