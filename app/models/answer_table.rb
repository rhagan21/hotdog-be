class AnswerTable < ApplicationRecord
    validate :entry_not_in_exclusion_list
  
    validates :entry, presence: true, allow_blank: false, allow_nil: false
  
    private
    def entry_not_in_exclusion_list
        exclusion_list = ['yes', 'no', 'maybe', 'i don\'t know', 'i dont know', 'that\'s ok', 'thats ok']
        if exclusion_list.map(&:downcase).include?(entry.to_s.downcase)
            errors.add(:entry, "'#{entry}' is not accepted.")
        end
    end
  end