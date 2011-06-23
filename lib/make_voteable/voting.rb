module MakeVoteable
  class Voting < ActiveRecord::Base
    attr_accessible :voteable, :voter, :what_vote

    belongs_to :voteable, :polymorphic => true
    belongs_to :voter, :polymorphic => true
    
    
    def down_vote?
      what_vote == 0
    end
    
    def up_vote?
      what_vote == 1
    end
    
    def abstain_vote?
      what_vote == 2
    end
    
  end
end
