time = int(input("Enter an amount of time: "))
hm = input("Enter 'hours' to convert to hours and 'minutes' to convert to minutes: ")
if(hm == "hours"):
    hours = time / 60
    print("The time in hours is " + str(hours) + " hours")
else:
    minutes = time * 60
    print("The time in minutes is " + str(minutes) + " minutes")