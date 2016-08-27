class Dish < ApplicationRecord

  belongs_to :menu
  validates_presence_of :name,
                        :price,
                        :menu,
                        :category

end
