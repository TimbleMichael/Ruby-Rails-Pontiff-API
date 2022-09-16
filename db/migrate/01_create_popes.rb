class CreatePopes < ActiveRecord::Migration[6.0]
    def change
        create_table :popes do |t|
            t.string :birth_name
            t.string :papal_name
            t.string :birth_place
        end
    end
end