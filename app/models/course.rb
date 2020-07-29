class Course < ApplicationRecord
    belongs_to :user
    belongs_to :trainer
    has_one_attached :certificate
    validates :name, presence: true, uniqueness: true
    validates :description, :trainer, :hours, :location, :sponsor, :format, :cost, :category, presence: true

    def trainer_name=(name)
        self.trainer = Trainer.find_or_create_by(name: name)
      end
    
      def trainer_name
         self.trainer ? self.trainer.name : nil
      end
end
