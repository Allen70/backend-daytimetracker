class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.string :sunrise
      t.string :sunset
      t.string :day_length
      t.string :solar_noon
      t.timestamps
    end
  end
end
