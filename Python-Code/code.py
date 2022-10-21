for i in range(1,101):
    print("AVA"*(i%3==0) + "AMO"*(i%5==0) or i)