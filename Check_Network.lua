
checkfile = io.open("~/.conky/QPL/TestProject","r")
if not checkfile then
os.execute("mv TestProject TestProject-backup")
ead = io.popen("ip route get 8.8.8.8")
local riead = ead:read("*a") 
sub = string.gsub(riead,'(.*)dev ', '')
sub_2 = string.gsub(sub,' src(.*)', '')
local type,ok = io.open("TestProject",'r'):read('*a'):gsub("NETWORKTYPE",sub_2)
io.open("ConkyQA",'w'):write(type):close()
ead = io.popen("sudo vnstat -u -i "..sub_2)
print('network interfaces : '..sub_2)
else
ead = io.popen("ip route get 8.8.8.8")
local riead = ead:read("*a") 
sub = string.gsub(riead,'(.*)dev ', '')
sub_2 = string.gsub(sub,' src(.*)', '')
local type,ok = io.open("TestProject",'r'):read('*a'):gsub("NETWORKTYPE",sub_2)
io.open("ConkyQA",'w'):write(type):close()
ead = io.popen("sudo vnstat -u -i "..sub_2)
print('network interfaces : '..sub_2)
end
