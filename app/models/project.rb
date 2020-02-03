class Project < ApplicationRecord

    def increase_funding
        self.amount_raised += 100
    end

end
