from PythonClassActivity import Student, Course

age = int(input("Enter an age: "))
course = input("Enter the name of the course: ")
grade = int(input("Enter a grade: "))
gpa = float(input("Enter a GPA: "))
s = Student(age, course, grade, gpa)

subject = input("Enter a subject: ")
s.learn(subject)

done = input("If homework is finished, enter y: ")
finish = False
if (done == "y"):
    finish = True
s.doHomework(finish)

minutes = int(input("Enter an amount of time in minutes: "))
s.walkToClass(minutes)



numStudents = int(input("Enter the amount of students in the course: "))
teacher = input("Enter the name of the teacher: ")
credits = float(input("Enter the amount of credits of the course: "))
courseName = input("Enter the name of the course: ")
c = Course(numStudents, teacher, credits, courseName)

names = []
for x in range(numStudents):
    name = input("Enter a name: ")
    names.append(name)
c.listStudents(names)

newTeacher = input("Enter the name of the new teacher: ")
c.changeTeacher(newTeacher)

subj = input("Enter the name of the subject: ")
c.teach(subj)