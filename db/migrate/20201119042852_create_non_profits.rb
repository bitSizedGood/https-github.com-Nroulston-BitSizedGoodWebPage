class CreateNonProfits < ActiveRecord::Migration[6.0]
  def change
    create_table :non_profits do |t|
      t.string :why
      t.string :what_achieve
      t.string :website
      t.string :name
      t.string :contact
      t.string :contact_info

      t.timestamps
    end
  end
end
