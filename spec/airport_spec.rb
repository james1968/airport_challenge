
require 'airport'
require './lib/plane'


DEFAULT_CAPACITY = 50

describe Airport do
  subject(:airport) { described_class.new}


  it { is_expected.to respond_to :land}
  it { is_expected.to respond_to :take_off}

  it "has default capacity" do
    expect(subject.capacity).to eq Airport::DEFAULT_CAPACITY
  end

  it 'has the plane after landing' do
    allow(plane).to receive(:land)
    airport.land(plane)
    expect(airport.planes).to include plane
  end



#describe 'plane land' do

#  it 'instructs plane to land' do
#    airport.land(plane)
#    expect(airport.planes).to include plane
#  end
#end


end
