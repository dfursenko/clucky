class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :login
      t.string :email
      t.string :password_hash
      t.string :access_token_hash
      t.string :acc_action_token_hash
      t.string :refresh_token_hash
      t.string :status

      t.timestamps
    end
  end
end
