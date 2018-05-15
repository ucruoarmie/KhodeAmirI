
function file_check(file_name)
    local file_found=io.open(file_name, "r")      
    
    if file_found==nil then
      file_found=file_name .. " ... Error - File Not Found"
    else
      file_found=file_name .. " ... File Found"
    end
    return file_found
  end
if file_check("~/.conky/QPL/TestProject") then
ead = io.popen("ip route get 8.8.8.8")
local riead = ead:read("*a") 
sub = string.gsub(riead,'(.*)dev ', '')
sub_2 = string.gsub(sub,' src(.*)', '')
-------------------------------------
local type= io.open("TestProject",'r'):read('*a'):gsub("NETWORKTYPE",sub_2)
io.open("ConkyQA",'w'):write(type):close()
------------------------------------
ead = io.popen("sudo vnstat -u -i "..sub_2)
print('network interfaces : '..sub_2)
print('Info: -> A new database has been created')
print('network interfaces : '..sub_2)
print('Config successfully Completed !')
end
if file_check("~/.conky/QPL/Projectv2") then
local type = io.open("Projectv2",'r'):read('*a'):gsub("NETWORKTYPE",sub_2)
io.open("ConkyQA-V2",'w'):write(type):close()
------------------------------------------
end
