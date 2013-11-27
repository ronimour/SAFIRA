# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Candidate do
it "a candidate have to be authenticated" do
    candidato = build(:candidate)
    candidato.confirm("oi").should be == false
  end
end
