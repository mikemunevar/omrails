# This was generated using this command: #MDM
# rails generate scaffold item user:references title:string url:string text:text
# You could have run the --skip stylesheets option, but you forgot.
# Run this migration with rails db:migrate

class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :url
      t.text :text

      t.timestamps
    end
  end
end
