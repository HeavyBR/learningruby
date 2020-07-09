class AvengersHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(name)
        self.list.push(name)
    end

end

describe AvengersHeadQuarter do
    it 'deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']
    end

    it 'deve adicionar uma lista de vingadorer' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Spiderman')
        hq.put('hulk')

        expect(hq.list).to include 'hulk'
        expect(hq.list.size).to be > 0
        expect(hq.list).to eql ['Thor', 'Spiderman', 'hulk']
    end

    it 'thor deve ser o primeiro da lista' do

        hq = AvengersHeadQuarter.new
        
        hq.put('thor')
        hq.put('spiderman')
        hq.put('hulk')

        expect(hq.list).to start_with('thor')
    end

    it 'hulk deve ser o último da lista' do
        hq = AvengersHeadQuarter.new
        
        hq.put('thor')
        hq.put('spiderman')
        hq.put('hulk')

        expect(hq.list).to end_with('hulk')
    end

end
