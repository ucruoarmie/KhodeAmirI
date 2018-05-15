checkfile_1 = io.open("~/.conky/QPL/TestProject","r")
checkfile_2 = io.open("~/.conky/QPL/TestProject-v2","r")
if checkfile_1 and checkfile_2  then
ead = io.popen("ip route get 8.8.8.8")
local riead = ead:read("*a") 
sub = string.gsub(riead,'(.*)dev ', '')
sub_2 = string.gsub(sub,' src(.*)', '')
-------------------------------------
local type= io.open("TestProject",'r'):read('*a'):gsub("NETWORKTYPE",sub_2)
io.open("ConkyQA",'w'):write(type):close()
------------------------------------
local type = io.open("TestProject-v2",'r'):read('*a'):gsub("NETWORKTYPE",sub_2)
io.open("ConkyQA-V2",'w'):write(type):close()
------------------------------------------
ead = io.popen("sudo vnstat -u -i "..sub_2)
print('network interfaces : '..sub_2)
print('Info: -> A new database has been created')
print('network interfaces : '..sub_2)
print('Config successfully Completed !')
else
print'Files Notfound Please Again Configing...'
end
