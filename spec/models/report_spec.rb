require 'spec_helper'

describe Report do
  subject { report }

  let(:report) { FactoryGirl.build :report }

  its(:valid?) { should be_true}

  describe 'validations' do
    it 'requires a title' do
      expect { report.title = nil }.to change { report.valid? }.from(true).to(false)
    end

    describe 'url' do
      it 'should be required' do
        expect { report.url = nil }.to change { report.valid? }.from(true).to(false)
      end

      it 'should begin with "http://" or "https://"' do
        expect { report.url = 'invalid' }.to change { report.valid? }.from(true).to(false)
      end
    end
  end
end
