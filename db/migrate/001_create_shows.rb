# * Run `mkdir db` and then `mkdir db/migrate` to create the `migrate` folder within `db`. Then create a file in the `db/migrate` folder called `001_create_shows.rb`. In this file, write the migration code to create a `shows` table. The table should have `name`, `network`, `day`, and `rating` columns. `name`, `network`, and `day` have a datatype of string, and `rating` has a datatype of integer.

class CreateShows < ActiveRecord::Migration
  def change
          create_table :shows do |t|
            t.string :name
            t.string :network
            t.string :day
            t.integer :rating 
        end
      end
    end
