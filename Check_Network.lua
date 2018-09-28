function file_check(file_name)
file_found = io.open(file_name, "r")       
if file_found==nil then
file_found=file_name .. " ... Error - File Not Found"
else
file_found=file_name .. " ... File Found"
end
return file_found
end
File = {
    '~/.conky/QPL/.Project',
    '~/.conky/QPL/.Project2',
    '~/.conky/QPL/.Projectv3'
}
ead = io.popen("ip route get 8.8.8.8");riead = ead:read("*a");sub = string.gsub(riead,'(.*)dev ', '');sub_2 = string.gsub(sub,' src(.*)', '')
for k,v in pairs(Files) do
if file_check(v) then
type= io.open(v,'r'):read('*a'):gsub("NETWORKTYPE",sub_2)
io.open("ConkyQA"..k,'w'):write(type):close()
end
end
ead = io.popen("sudo vnstat -u -i "..sub_2);print('network interfaces : '..sub_2);print('Info: -> A new database has been created');print('network interfaces : '..sub_2);print('Config successfully Completed !')
