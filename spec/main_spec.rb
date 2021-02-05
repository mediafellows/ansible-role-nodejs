require 'spec_helper'

describe "NodeJS setup" do
  package("nodej") do
    it { should be_installed }
  end
end
