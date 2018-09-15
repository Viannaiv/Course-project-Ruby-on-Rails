class Brewery < ApplicationRecord
    has_many :beers

    # a test method from the material of week 2: probably to be deleted later
    def print_report
        puts name
        puts "established at year #{year}"
        puts "number of beers #{beers.count}"
    end

    # another test method for week 2: delete later
    def restart
        self.year = 2018
        puts "changed year to #{year}"
    end
end
