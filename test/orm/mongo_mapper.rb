MongoMapper.connection = Mongo::Connection.new('127.0.0.1', 27017)
MongoMapper.database = "devise-test-suite"

class ActiveSupport::TestCase
  setup do
    User.delete_all
    Admin.delete_all
  end
end
