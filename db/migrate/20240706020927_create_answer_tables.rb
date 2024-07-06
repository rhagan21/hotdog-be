class CreateAnswerTables < ActiveRecord::Migration[7.2]
  def change
    create_table :answer_tables do |t|
      t.string :entry

      t.timestamps
    end
  end
end
