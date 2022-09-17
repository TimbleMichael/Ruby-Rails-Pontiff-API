class CreatePopes < ActiveRecord::Migration[6.0]
    def change
        create_table :popes do |t|
            t.string :birth_name
            t.string :papal_name
            t.string :birth_place
            t.string :birth_year
            t.string :oradained_priest
            t.string :oradained_bishop
            t.string :papacy_began
            t.string :papacy_end
        end
    end
end