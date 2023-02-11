require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { Post.new(title: 'my post', text: 'post something nice', comments_counter: 12, likes_counter: 7) }

  before { subject.save }

  it 'expects the post title to be present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'expects the post title to not be  long' do
    subject.title = 'abc' * 200
    expect(subject).to_not be_valid
  end

  it 'expects the post title to not be too short' do
    subject.title = 'a'
    expect(subject).to_not be_valid
  end

  it 'expects the post title to have valid value' do
    expect(subject.title).to eql 'my post'
  end

  it 'expects text to be present' do
    subject.text = nil
    expect(subject).to_not be_valid
  end

  it 'expects text to have valid a value' do
    expect(subject.text).to eql 'post something nice'
  end

  it 'expects the comments_counter to be an integer' do
    subject.comments_counter = 'Ten'
    expect(subject).to_not be_valid
  end

  it 'expects comments_counter to not be less than 1' do
    subject.comments_counter = -1
    expect(subject).to_not be_valid
  end

  it 'expects the likes_counter to be an integer' do
    subject.likes_counter = 'Seven'
    expect(subject).to_not be_valid
  end

  it 'expects the likes_counter must not be less than 1' do
    subject.likes_counter = -1
    expect(subject).to_not be_valid
  end
end
