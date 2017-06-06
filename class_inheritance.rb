require "byebug"
class Employee
  attr_accessor :name, :title, :salary, :boss

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)
    salary * multiplier
  end

end

class Manager < Employee
attr_accessor :name, :title, :salary, :boss, :employees

  def initialize(name, title, salary, boss)
    super(name, title, salary, boss)
    @employees = []
  end

  def add_employee(employee)

    if employee.boss == self.name && !employee.is_a?(Manager)
      self.employees << employee

    else
      self.employees << employee
      self.employees = self.employees.concat(employee.employees)
    end
  end

  def bonus(multiplier)
    total_salary = 0
    employees.each do |employee|
      total_salary += employee.salary * multiplier
    end
    total_salary
  end

end

shawna = Employee.new("shawna", "TA", 12000,"darren")
david = Employee.new("david", "TA", 10000,"darren")
darren = Manager.new("darren", "TA manager", 78000,"ned")
ned = Manager.new("ned", "founder", 1000000, nil)
darren.add_employee(shawna)
darren.add_employee(david)
ned.add_employee(darren)

p david
p shawna
p ned
p darren

p ned.bonus(5)
p darren.bonus(4)
p david.bonus(3)
