class RenameNamToNameInChatrooms < ActiveRecord::Migration[7.1]
  def change
    rename_column :chatrooms, :nam, :name
  end
end
