require './lib/bank'

 describe Bank do
  let(:subject) { Bank.new }
  let(:date) { 05/01/2022 }

  it 'Has a starting balance of 0' do
    expect(subject.balance).to eq(0)
  end

  it 'adds an amount when depositied' do
      subject.deposit(100)
      expect(subject.balance).to eq(100)
  end

  it 'minuses an amount when depositied' do
    subject.deposit(100)
    subject.withdraw(50)
    expect(subject.balance).to eq(50)
  end

  it 'Insufficent funds' do
    @balance = -50
    expect { subject.withdraw(100) }.to raise_error ("Insufficent funds")
  end

  it 'returns a statement date, tansaction and balance' do
    subject.deposit(100)
    subject.date
    expect(subject.state).to include(["05/01/2022", "  ||  £100", "    ||        ", " || £100"])
  end

  it 'returns statement with deposits and withdrawals' do
    subject.deposit(100)
    subject.withdraw(70)
    subject.date
    expect(subject.state).to include(["05/01/2022", "  ||  £100", "    ||        ", " || £100"], ["05/01/2022", "  ||        ", "||   £70", "    ||  £30"])
  end

end 