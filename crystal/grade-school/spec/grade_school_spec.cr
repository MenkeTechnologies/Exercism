require "spec"
require "../src/*"

describe "GradeSchool" do
  it "Roster is empty when no student is added" do
    grade_school = GradeSchool.new
    grade_school.roster.should eq [] of String
  end

  pending "Add a student" do
    grade_school = GradeSchool.new
    grade_school.add("Aimee", 2).should be_true
  end

  pending "Student is added to the roster" do
    grade_school = GradeSchool.new
    grade_school.add("Aimee", 2)
    grade_school.roster.should eq ["Aimee"]
  end

  pending "Adding multiple students in the same grade in the roster" do
    grade_school = GradeSchool.new
    grade_school.add("Blair", 2).should be_true
    grade_school.add("James", 2).should be_true
    grade_school.add("Paul", 2).should be_true
  end

  pending "Multiple students in the same grade are added to the roster" do
    grade_school = GradeSchool.new
    grade_school.add("Blair", 2)
    grade_school.add("James", 2)
    grade_school.add("Paul", 2)
    grade_school.roster.should eq ["Blair", "James", "Paul"]
  end

  pending "Cannot add student to same grade in the roster more than once" do
    grade_school = GradeSchool.new
    grade_school.add("Blair", 2).should be_true
    grade_school.add("James", 2).should be_true
    grade_school.add("James", 2).should be_false
    grade_school.add("Paul", 2).should be_true
  end

  pending "Student not added to same grade in the roster more than once" do
    grade_school = GradeSchool.new
    grade_school.add("Blair", 2)
    grade_school.add("James", 2)
    grade_school.add("James", 2)
    grade_school.add("Paul", 2)
    grade_school.roster.should eq ["Blair", "James", "Paul"]
  end

  pending "Adding students in multiple grades" do
    grade_school = GradeSchool.new
    grade_school.add("Chelsea", 3).should be_true
    grade_school.add("Logan", 7).should be_true
  end

  pending "Students in multiple grades are added to the roster" do
    grade_school = GradeSchool.new
    grade_school.add("Chelsea", 3)
    grade_school.add("Logan", 7)
    grade_school.roster.should eq ["Chelsea", "Logan"]
  end

  pending "Cannot add same student to multiple grades in the roster" do
    grade_school = GradeSchool.new
    grade_school.add("Blair", 2).should be_true
    grade_school.add("James", 2).should be_true
    grade_school.add("James", 3).should be_false
    grade_school.add("Paul", 3).should be_true
  end

  pending "Student not added to multiple grades in the roster" do
    grade_school = GradeSchool.new
    grade_school.add("Blair", 2)
    grade_school.add("James", 2)
    grade_school.add("James", 3)
    grade_school.add("Paul", 3)
    grade_school.roster.should eq ["Blair", "James", "Paul"]
  end

  pending "Students are sorted by grades in the roster" do
    grade_school = GradeSchool.new
    grade_school.add("Jim", 3)
    grade_school.add("Peter", 2)
    grade_school.add("Anna", 1)
    grade_school.roster.should eq ["Anna", "Peter", "Jim"]
  end

  pending "Students are sorted by name in the roster" do
    grade_school = GradeSchool.new
    grade_school.add("Peter", 2)
    grade_school.add("Zoe", 2)
    grade_school.add("Alex", 2)
    grade_school.roster.should eq ["Alex", "Peter", "Zoe"]
  end

  pending "Students are sorted by grades and then by name in the roster" do
    grade_school = GradeSchool.new
    grade_school.add("Peter", 2)
    grade_school.add("Anna", 1)
    grade_school.add("Barb", 1)
    grade_school.add("Zoe", 2)
    grade_school.add("Alex", 2)
    grade_school.add("Jim", 3)
    grade_school.add("Charlie", 1)
    grade_school.roster.should eq ["Anna", "Barb", "Charlie", "Alex", "Peter", "Zoe", "Jim"]
  end

  pending "Grade is empty if no students in the roster" do
    grade_school = GradeSchool.new
    grade_school.grade(1).should eq [] of String
  end

  pending "Grade is empty if no students in that grade" do
    grade_school = GradeSchool.new
    grade_school.add("Peter", 2)
    grade_school.add("Zoe", 2)
    grade_school.add("Alex", 2)
    grade_school.add("Jim", 3)
    grade_school.grade(1).should eq [] of String
  end

  pending "Student not added to same grade more than once" do
    grade_school = GradeSchool.new
    grade_school.add("Blair", 2)
    grade_school.add("James", 2)
    grade_school.add("James", 2)
    grade_school.add("Paul", 2)
    grade_school.grade(2).should eq ["Blair", "James", "Paul"]
  end

  pending "Student not added to multiple grades" do
    grade_school = GradeSchool.new
    grade_school.add("Blair", 2)
    grade_school.add("James", 2)
    grade_school.add("James", 3)
    grade_school.add("Paul", 3)
    grade_school.grade(2).should eq ["Blair", "James"]
  end

  pending "Student not added to other grade for multiple grades" do
    grade_school = GradeSchool.new
    grade_school.add("Blair", 2)
    grade_school.add("James", 2)
    grade_school.add("James", 3)
    grade_school.add("Paul", 3)
    grade_school.grade(3).should eq ["Paul"]
  end

  pending "Students are sorted by name in a grade" do
    grade_school = GradeSchool.new
    grade_school.add("Franklin", 5)
    grade_school.add("Bradley", 5)
    grade_school.add("Jeff", 1)
    grade_school.grade(5).should eq ["Bradley", "Franklin"]
  end
end
