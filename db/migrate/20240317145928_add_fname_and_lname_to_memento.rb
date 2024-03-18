class AddFnameAndLnameToMemento < ActiveRecord::Migration[7.1]
  def change
    add_column :mementos, :fname, :string
    add_column :mementos, :lname, :string
  end
end
