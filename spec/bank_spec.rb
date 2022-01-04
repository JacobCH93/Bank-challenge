require './lib/bank'

 describe Bank do
  it 'Has a starting balance of 0' do
    subject = Bank.new
    expect(subject.balance).to eq(0)
  end

  it 'adds an amount when depositied' do
      subject = Bank.new 
      expect(subject.deposit(300)).to eq(300)
  end
end 