class Student:
    def __init__(self, age, course, grade, gpa):
        self.age = age
        self.course = course
        self.grade = grade
        self.gpa = gpa
    
    def learn(self, subject):
        print("I learned about " + subject + "today in " + self.course + ".")
    
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

    def walkToClass(self, minutes):
        print("It will take " + str(minutes) + "to reach " + self.course)
    
class Course:
    def __init__(self, numStudents, teacher, credits, courseName):
        self.numStudents = numStudents
        self.teacher = teacher
        self.credits = credits
        self.courseName = courseName
    
    def listStudents(self, studentList):
        for i in range(len(studentList)):
            print(studentList[i])

    def changeTeacher(self, newTeacher):
        self.teacher = newTeacher

    def teach(self, subject):
         print("I will teach about " + subject + "today")