require "./rectangle.rb"
require "./square.rb"
require "./circle.rb"
require "./project1.rb"
require"./square_root.rb" 

 
class Operations

include ArithmeticOperations

end

object = Operations.new


print <<R 
Calculator:

+ : use for add two value
- : use for subtract two value 
* : use for multiply two value
/ : use for diving two value
A : use for Area of Square 
R : use for Area of Rectangle
C : use for Area of Circle
S : use for Square Root

Enter Sign :
R
sign= gets.chomp


def arithmecis_o

   puts "Enter the values "

   $first_value= gets.chomp.to_f
   $second_value= gets.chomp.to_f

end

def area_of_circle
   puts "Enter the radius Of Circle in meter "
   $radius_of_circle=gets.chomp.to_f
end   

def area_of_square
   puts "Enter the side of Square in meter"
   $side_of_square=gets.chomp.to_f
end 

def square_root_number
   puts "Enter the number "
   $number=gets.chomp.to_f
end

case sign

   when "+"
      arithmecis_o 
      p "A+B is : #{object.add($first_value,$second_value)}"
       
   when "-"
      arithmecis_o 
      p "A-B is : #{object.subtract($first_value,$second_value)}"
       

   when "*"
      arithmecis_o 
      p "A*B is : #{object.multiply($first_value,$second_value)}"
       
     
   when "/"
      arithmecis_o 
      if $second_value!=0
        p "A/B is : #{object.divide($first_value,$second_value)}"
      else
        puts "Not Define"
      end 
   when "A"
      area_of_square
      puts "Area of Square : #{Square.area($side_of_square)} m*m"
       
   when "R"
      arithmecis_o 
      puts " Area of Rectangle : #{Rectangle.area($first_value,$second_value)} m*m"

   when "C"
      area_of_circle
      puts "Area of Circle : #{Circle.area($radius_of_circle)} m*m"
       

   when "S"
      square_root_number
      puts "Square Root of#{$n} is : #{SquareRoot.root($number)}"

   else

    puts "Sign Not Valid " 


end

