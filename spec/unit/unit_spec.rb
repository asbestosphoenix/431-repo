# location: spec/unit/unit_spec.rb
# require 'rails_helper'
# require 'Date'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'is not valid without all attributes' do
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(author: "JK Rowling")
  end

  it 'is not valid without all attributes' do
    expect(subject).not_to be_valid
  end

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(price: 28.99)
  end

  it 'is not valid without all attributes' do
    expect(subject).not_to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(publish_date: '2-25-2001')
  end

  it 'is not valid without all attributes' do
    expect(subject).not_to be_valid
  end

  it 'is not valid without a published date' do
    subject.publish_date = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'Harry Potter', author: 'JK Rowling', price: 28.99, publish_date: '2-25-2001')
  end

  it 'is valid with all valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a published date' do
    subject.publish_date = nil
    expect(subject).not_to be_valid
  end
end