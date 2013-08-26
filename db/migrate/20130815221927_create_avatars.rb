class CreateAvatars < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
    	t.string "titulo"
    	t.text "texto"
    	t.string "avatar"
      t.timestamps
    end
  end
end
