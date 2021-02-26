require 'rails_helper'

# test concerning Model - Post
RSpec.describe Post, type: :model do
  context 'Comment association' do
    it 'should increment comments_count' do
      post = build(:post)
      post.comments << build(:comment)
      post.save
      expect(Comment.count).to eq(1)
      expect(post.comments_count).to eq(1)
    end
  end

  it 'should persist a post' do
    create(:post)
    # I want to check that Post correctly created so count equal 1
    expect(Post.count).to eq(1)
  end
end
