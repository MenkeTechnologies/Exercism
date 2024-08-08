require "spec"
require "../src/*"

describe SavingsAccount do
  describe "interest_rate", tags: "task_id=1" do
    it "Returns minimum interest rate" do
      SavingsAccount.interest_rate(0.0).should eq(0.5)
    end

    it "Returns tiny interest rate" do
      SavingsAccount.interest_rate(0.000001).should eq(0.5)
    end

    it "Returns maximum first interest rate" do
      SavingsAccount.interest_rate(999.9999).should eq(0.5)
    end

    it "Returns minimal second interest" do
      SavingsAccount.interest_rate(1_000.0).should eq(1.621)
    end

    it "Returns tiny second interest" do
      SavingsAccount.interest_rate(1_000.0001).should eq(1.621)
    end

    it "Returns maximum second interest" do
      SavingsAccount.interest_rate(4_999.999).should eq(1.621)
    end

    it "Returns minimal third interest" do
      SavingsAccount.interest_rate(5_000.0).should eq(2.475)
    end

    it "Returns tiny third interest" do
      SavingsAccount.interest_rate(5_000.0001).should eq(2.475)
    end

    it "Returns maximum third interest" do
      SavingsAccount.interest_rate(5_639_998.742909).should eq(2.475)
    end

    it "Return on minimal negative balance" do
      SavingsAccount.interest_rate(-0.000001).should eq(3.213)
    end

    it "Return on small negative balance" do
      SavingsAccount.interest_rate(-0.123).should eq(3.213)
    end

    it "Return on large negative balance" do
      SavingsAccount.interest_rate(-152964.2313).should eq(3.213)
    end
  end

  describe "interest", tags: "task_id=2" do
    it "Returns intrest on negative balance" do
      SavingsAccount.interest(-10000.0).should be_close(-321.3, 0.001)
    end

    it "Returns interest on small balance" do
      SavingsAccount.interest(555.55).should be_close(2.77775, 0.001)
    end

    it "Returns interest on medium balance" do
      SavingsAccount.interest(4999.99).should be_close(81.0498379, 0.001)
    end

    it "Returns interest on large balance" do
      SavingsAccount.interest(34600.80).should be_close(856.3698, 0.001)
    end
  end

  describe "annual_balance_update", tags: "task_id=3" do
    it "Returns zero for empty start balance" do
      SavingsAccount.annual_balance_update(0.0).should be_close(0.0, 0.001)
    end

    it "Returns updated balance on small start balance" do
      SavingsAccount.annual_balance_update(0.000001).should be_close(0.000001005, 0.001)
    end

    it "Returns updated balance on avrage start balance" do
      SavingsAccount.annual_balance_update(1_000.0).should be_close(1016.2101016210, 0.001)
    end

    it "Returns updated balance on large start balance" do
      SavingsAccount.annual_balance_update(898124017.826243404425).should be_close(920352587.26744292868451875, 0.001)
    end

    it "Returns updated balance on small negative start balance" do
      SavingsAccount.annual_balance_update(-0.123).should be_close(-0.12695199, 0.001)
    end

    it "Returns updated balance on large negative start balance" do
      SavingsAccount.annual_balance_update(-152964.231).should be_close(-157878.97174203, 0.001)
    end
  end

  describe "years_before_desired_balance", tags: "task_id=4" do
    it "Returns years before desired balance on small start balance" do
      SavingsAccount.years_before_desired_balance(100.0, 125.80).should eq(47)
    end

    it "Returns years before desired balance on avrage start balance" do
      SavingsAccount.years_before_desired_balance(1_000.0, 1_100.0).should eq(6)
    end

    it "Returns years before desired balance on large start balance" do
      SavingsAccount.years_before_desired_balance(8_080.80, 9_090.90).should eq(5)
    end

    it "Returns years before desired balance on large start balance" do
      SavingsAccount.years_before_desired_balance(2_345.67, 12_345.6789).should eq(85)
    end
  end
end
