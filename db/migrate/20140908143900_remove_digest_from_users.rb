class RemoveDigestFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :digest
      end

  def down
    add_column :users, :digest, :string
  end
end
