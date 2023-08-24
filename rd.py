# d={1:2,2:3,3:4}
# keys, values = zip(*d.items())
# x=list(reversed(keys))
# y=list(reversed(values))
# res = {x[i]: y[i] for i in range(len(x))}
# print(res)

"fibonacci series"
num = 10
a = 5
b = 6
for i in range(num):
    k = a+b
    a,b = b,k
    print(k)
#1,1,2,3,5,8,13..



# "STAR PYRAMID"
# for x in range(1,6):
#     for y in range(5,x,-1):
#         print(" ",end="")
#     for z in range(0,x):
#         print("* ",end="")
#     print()


