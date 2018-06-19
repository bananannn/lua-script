-- example HTTP POST script which demonstrates setting the
-- HTTP method, body, and adding a header

wrk.method = "POST"
tableIn = 0
index = 0
arr = {}

request = function()
   local f = assert(io.open("/users/moyan/downloads/query_result.txt", 'r'))
   count = 0
   if arr[0] == nil then 
   while true do
      line = f:read()
      if line == nil then break end
      local ntime = os.time()*100 + count
      path = "/alipay/testNotify?outTradeNo=" .. line .. "&tradeNo=" .. ntime
      count = count + 1
      arr[tableIn] = path
      tableIn = tableIn + 1
   end
   end
   f:close()

   path = arr[index]
   index = index + 1
   return wrk.format("POST", path)
end
   
