id = 2

request = function()
   path = "/testTicket?id=" .. id
   id = id + 1
   return wrk.format("POST", path) 
end
