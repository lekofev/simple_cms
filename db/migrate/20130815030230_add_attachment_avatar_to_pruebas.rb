class AddAttachmentAvatarToPruebas < ActiveRecord::Migration
  def self.up
    change_table :pruebas do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :pruebas, :avatar
  end
end
