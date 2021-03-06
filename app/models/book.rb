class Book < ApplicationRecord
    belongs_to :book
    
    def self.search(search)
        if search
            self.where(title: search)
            self.where(author: search)
        else Book.all
        end
    end
    
end