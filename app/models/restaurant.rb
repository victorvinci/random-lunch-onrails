class Restaurant < ApplicationRecord
  validates :name, presence: {message: 'Nome, por favor.'}
  validates :description, presence: {message: 'Essa parte é importante!'}
  validates :website, presence: {message: 'Pode ser TripAdvisor também.'}
  validates :address, presence: {message: 'Onde fica?'}
  validates :price, presence: {message: 'Quanto se gasta nesse lugar?'}
  validates :cuisine, presence: {message:'Não se esqueça dessa parte!'}
  validates :food_type, presence: {message: 'Selecione uma das opções.'}
end
