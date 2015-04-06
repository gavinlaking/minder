require 'minder/pomodoro'

describe Minder::Pomodoro do
  describe '#run' do
    let(:timer) { instance_spy(Minder::Timer) }

    it 'runs the pomodoro' do
      pomodoro = described_class.new(minutes: 5)

      allow(Minder::Timer).to receive(:new)
        .with(seconds: 300)
        .and_return(timer)
      allow(timer).to receive(:completed?).and_return(false, true)
      allow($stdout).to receive(:flush)
      allow(pomodoro).to receive(:puts)
      allow(pomodoro).to receive(:print)

      pomodoro.run

      expect(pomodoro).to have_received(:puts).with('Work period')
      expect(timer).to have_received(:start!)
      expect(timer).to have_received(:tick).at_least(:once)
    end
  end
end
