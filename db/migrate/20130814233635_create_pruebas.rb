class CreatePruebas < ActiveRecord::Migration
  def change
    create_table :pruebas do |t|
    	t.string "titulo"
    	t.text "texto"
      t.timestamps
    end
  end
end
