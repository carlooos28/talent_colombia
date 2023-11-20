class Feedback < ApplicationRecord
    belongs_to :performance_review
    belongs_to :author, class_name: 'User'
end
