# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Ability do
it "a candidate have to be authenticated" do
    ability = build(:ability)
	usuario=build(:user)
    ability.initialize(usuario)
  end
end
