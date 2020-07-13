require 'bank'

describe Account do

    it 'should be able to deposit money' do
        expect(subject).to respond_to(:deposit).with(1).arguments
    end

end

