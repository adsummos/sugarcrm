require 'helper'
require "test/unit"
require "pp"

class TestGetAvailableModules < Test::Unit::TestCase
  context "A SugarCRM.connection" do
    setup do
      SugarCRM::Connection.new(URL, USER, PASS, {:register_modules => false})
    end
    should "return an array of modules when #get_modules" do
      assert_instance_of SugarCRM::Module, SugarCRM.connection.get_modules[0]
    end
  end
end