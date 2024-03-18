class CreateLovenotes < ActiveRecord::Migration[7.1]
  def change
    create_table :lovenotes do |t|
      t.jsonb :story

      t.timestamps
    end
  end
end
