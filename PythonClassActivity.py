class Student:
    def __init__(self, age, course, grade, gpa):
        self.age = age
        self.course = course
        self.grade = grade
        self.gpa = gpa
    
    def learn(self, subject):
        print("I learned about " + subject + " today in " + self.course + ".")
    
    def doHomework(self, finish):
        if (finish):
            self.grade += 1
        if (self.grade >= 95):
            self.gpa = 4.0
        elif (self.grade >= 90):
            self.gpa = 3.8
        elif (self.grade >= 85):
            self.gpa = 3.6
        elif (self.grade >= 80):
            self.gpa = 3.4
        elif (self.grade >= 75):
            self.gpa = 3.2
        elif (self.grade >= 70):
            self.gpa = 3
        elif (self.grade >= 65):
            self.gpa = 2.8
        elif (self.grade >= 60):
            self.gpa = 2.6
        else:
            self.gpa = 0
        print("Grade:", self.grade)
        print("GPA:", self.gpa)

    def walkToClass(self, minutes):
        print("It will take " + str(minutes) + " to reach " + self.course)
    
class Course:
    def __init__(self, numStudents, teacher, credits, courseName):
        self.numStudents = numStudents
        self.teacher = teacher
        self.credits = credits
        self.courseName = courseName
    
    def listStudents(self, studentList):
        print("The names of the students in the class are: ")
        for i in range(len(studentList)):
            print(studentList[i])

    def changeTeacher(self, newTeacher):
        self.teacher = newTeacher

    def teach(self, subject):
         print(self.teacher + " will teach about " + subject + " today")

if __name__ == "__main__":

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