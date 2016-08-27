class Dish < ApplicationRecord
  CATEGORIES = ['Starter', 'Mail Course', 'Dessert']
  belongs_to :menu
  validates_presence_of :name,
                        :price,
                        :menu,
                        :category

  validates :category, inclusion: ['Starter', 'Mail Course', 'Dessert']

end
