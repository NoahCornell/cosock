-- disable this test for 5.1 since we can't asyncify
if _VERSION == "Lua 5.1" then os.exit(0) end
local cosock = require "cosock"
local perform_test = require "test.http.perform_test"

perform_test("http", "http", cosock.asyncify("socket.http").request)
cosock.run()

print("--------------- SUCCESS ----------------")
