
checkfile = io.open("~/.conky/QPL/ConkyQA","r")
if checkfile then
os.execute("mv ConkyQA ConkyQA-backup")
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
print('Info: -> A new database has been created')
print('network interfaces : '..sub_2)
print('Config successfully Completed !')
end
