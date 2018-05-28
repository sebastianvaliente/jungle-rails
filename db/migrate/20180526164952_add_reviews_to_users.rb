class AddReviewsToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :review, index: true, foreign_key: true
  end
end
