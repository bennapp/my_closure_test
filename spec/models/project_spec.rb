require 'rails_helper'

RSpec.describe Project do
  it 'can have polymorphic parents' do
    parent = Project.create!(name: 'parent')
    child = Project.create!(name: 'child', parent: parent)
    expect(child.parent).to eq(parent)

    expect(parent.descendants).to include(child)
  end

  it 'can have different type children' do
    parent = Project.create!(name: 'parent')
    child = Task.create!(name: 'child', parent: parent)

    expect(child.parent).to eq(parent)
    expect(parent.descendants).to include(child)
  end
end