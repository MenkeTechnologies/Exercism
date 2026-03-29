require "spec"
require "../src/*"

describe "Gigasecond" do
  it "date only specification of time" do
    Gigasecond.from(Time.utc(2011, 4, 25)).should eq(Time.utc(2043, 1, 1, 1, 46, 40))
  end

  pending "second test for date only specification of time" do
    Gigasecond.from(Time.utc(1977, 6, 13)).should eq(Time.utc(2009, 2, 19, 1, 46, 40))
  end

  pending "third test for date only specification of time" do
    Gigasecond.from(Time.utc(1959, 7, 19)).should eq(Time.utc(1991, 3, 27, 1, 46, 40))
  end

  pending "full time specified" do
    Gigasecond.from(Time.utc(2015, 1, 24, 22, 0, 0)).should eq(Time.utc(2046, 10, 2, 23, 46, 40))
  end

  pending "full time with day roll-over" do
    Gigasecond.from(Time.utc(2015, 1, 24, 23, 59, 59)).should eq(Time.utc(2046, 10, 3, 1, 46, 39))
  end
end
