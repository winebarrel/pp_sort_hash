require 'spec_helper'

describe PpSortHash do
  let(:hash1) do
    {a: 1, c: {c1: 10, c2: 20}, b: 2}
  end

  let(:hash2) do
    {b: 2, a: 1, c: {c2: 20, c1: 10}}
  end

  it 'pretty inspect a sorted hash by key' do
    expect(hash1.pretty_inspect).to_not eq hash2.pretty_inspect
    require 'pp_sort_hash'
    expect(hash1.pretty_inspect).to eq hash2.pretty_inspect
  end
end
