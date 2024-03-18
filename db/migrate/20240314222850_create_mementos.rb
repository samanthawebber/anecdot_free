class CreateMementos < ActiveRecord::Migration[7.1]
  def change
    create_table :mementos do |t|
      t.jsonb :story

      t.timestamps
    end
  end
end
