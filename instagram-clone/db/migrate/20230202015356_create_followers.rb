class CreateFollowers < ActiveRecord::Migration[6.0]
  def change
    create_table :followers do |t|
      t.references :follower, references: :accounts
      t.references :following, references: :accounts
      t.timestamps
    end
  end
end
