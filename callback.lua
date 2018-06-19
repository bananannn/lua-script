-- example HTTP POST script which demonstrates setting the
-- url

wrk.method = "GET"
i = 0
index = 0
ind = 0
arr = {}
request = function()
   while i <= 200000 do
      
      path = "/us/esf/" .. i .. ".html"
      i = i + 1

      arr[index] = path
      index = index + 1
   end
   path = arr[ind]
   ind = ind + 1
   print(path)
   return wrk.format("GET", path)
end
   
