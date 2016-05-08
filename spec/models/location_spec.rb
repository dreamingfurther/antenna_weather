require 'rails_helper'

describe Location do
  describe "#average_windspeed_for_evening(days_from_today)" do
    context "for today" do
      it 'returns 3mph' do
        location = create(:location)
        expect(location.average_windspeed_for_evening(0)).to eq "5mph"
      end
    end

    context "for tomorrow" do
      it 'returns 3mph' do
        location = create(:location)
        expect(location.average_windspeed_for_evening(1)).to eq "14mph"
      end
    end

    context "for 2 days from now" do
      it 'returns 3mph' do
        location = create(:location)
        expect(location.average_windspeed_for_evening(2)).to eq "12mph"
      end
    end

    context "for 3 days from now" do
      it 'returns 3mph' do
        location = create(:location)
        expect(location.average_windspeed_for_evening(3)).to eq "10mph"
      end
    end
  end

  describe "#average_windspeed_for_morning(days_from_today)" do
    context "for today" do
      context "if no morning hours left" do
        it 'returns none' do
          location = create(:location)
          expect(location.average_windspeed_for_morning(0)).to eq "none"
        end
      end
    end

    context "for tomorrow" do
      it 'returns 3mph' do
        location = create(:location)
        expect(location.average_windspeed_for_morning(1)).to eq "3mph"
      end
    end

    context "for 2 days from now" do
      it 'returns 3mph' do
        location = create(:location)
        expect(location.average_windspeed_for_morning(2)).to eq "21mph"
      end
    end

    context "for 3 days from now" do
      it 'returns 3mph' do
        location = create(:location)
        expect(location.average_windspeed_for_morning(3)).to eq "7mph"
      end
    end
  end
end
