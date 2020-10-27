import re
content = open("C:\Users\sgomez\Downloads\service.log").read()
rexeg = "'[A-Z]*\-ERR\-0[0-0][0-9]'"
print(re.findall(regex, content, re.M))
