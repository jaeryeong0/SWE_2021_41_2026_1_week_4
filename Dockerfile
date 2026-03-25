FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n):\n\
    if n==1: return True\n\
    s = str(n)\n\
    lst = [n]\n\
    while True:\n\
        sum = 0\n\
        for i in s:\n\
            sum += int(i)*int(i)\n\
        s = str(sum)\n\
        if s == \"1\":\n\
            return True\n\
        elif sum in lst:\n\
            return False\n\
        lst.append(sum)\n\
\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
"]