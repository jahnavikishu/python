def getMoneySpent(keyboards, drives, b):
    keyboards.sort()
    drives.sort()
    res = -1
    for k in keyboards:
        x = -1
        for d in drives:
            if k + d <= b:
                x = k + d
            else:
                break
        if x == -1:
            break
        else:
            res = max(res, x)
    return res
