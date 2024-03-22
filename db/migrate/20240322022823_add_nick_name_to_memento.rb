class AddNickNameToMemento < ActiveRecord::Migration[7.1]
  def change
    add_column :mementos, :nickname, :string
  end
end
