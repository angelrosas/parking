require 'rails_helper'

describe Organization do
  
  context "when valid" do 
    let!(:organization) { Organization.new(name: "UACJ", domain: "uacj.mx", email: "email@test.com") }
    it("has a name")    { expect(organization.name).to be_a String}
    it("has a domain")  { expect(organization.domain).to be_a String}
    it("has an email")  { expect(organization.email).to be_a String}
  end

  context "when invalid" do
    let!(:organization) { Organization.new }
    before              { expect(organization).to be_invalid }
    
    it("has name 'can't be blank' error")    { expect(organization.errors[:name]).to include "can't be blank" }
    it("has domain 'can't be blank' error")  { expect(organization.errors[:domain]).to include "can't be blank" }
    it("has email 'can't be blank' error")   { expect(organization.errors[:email]).to include "can't be blank" }
  end

end
