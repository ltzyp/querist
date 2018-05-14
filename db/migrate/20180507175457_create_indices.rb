class CreateIndices < ActiveRecord::Migration[5.1]
  def change
  return
    create_table :indices do |t|

      t.timestamps
    end
  end
end
