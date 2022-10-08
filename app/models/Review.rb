class Review < ActiveRecord::Base
    belongs_to :Restaurant
    belongs_to :Client
end