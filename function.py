def fun():
    a=[]
    for i in lst:
        if i not in a:
            a.append(i)
    return a
lst=[1,3,4,6,4,6,8]
print(fun(),"deplicates are deleted")