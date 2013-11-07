
require 'matriz.rb'
require 'rspec'

describe Matriz do
  
  before :each do
    @mat1 = Matriz.new([[7,2],[2,7]])
    @mat2 = Matriz.new([[4,4],[4,4]])
    @mat3 = Matriz.new([[2,4,2],[1,3,1],[3,5,3]])
    @mat4 = Matriz.new([[1,2,3],[4,5,6],[7,8,9]])
  end

  describe "# Creacion de matrices" do
    it "Dimensiones establecidas correctamente" do
      @mat1.nC.should eq (2)
      @mat1.nF.should eq (2)
      @mat3.nC.should eq (3)
      @mat3.nF.should eq (3)
    end
    it "Se muestra correctamente" do
      @mat1.to_s.should eq "7 2 \n2 7 \n"
      @mat2.to_s.should eq "4 4 \n4 4 \n"
      @mat3.to_s.should eq "2 4 2 \n1 3 1 \n3 5 3 \n"
      @mat4.to_s.should eq "1 2 3 \n4 5 6 \n7 8 9 \n"
    end
  end

  describe "Operaciones de matrices cuadradas" do
    it "Suma de matrices" do
      ((@mat1 + @mat2).matriz.should eq Matriz.new([[11,6],[6,11]]).matriz)
      ((@mat3 + @mat4).matriz.should eq Matriz.new([[3,6,5],[5,8,7],[10,13,12]]).matriz)
    end
    it "Resta de matrices" do
      ((@mat1 - @mat2).matriz.should eq Matriz.new([[3,-2],[-2,3]]).matriz)
      ((@mat3 - @mat4).matriz.should eq Matriz.new([[1,2,-1],[-3,-2,-5],[-4,-3,-6]]).matriz)
    end
    it "Producto de matrices" do
      ((@mat1 * @mat2).matriz.should eq Matriz.new([[36,152],[36,172]]).matriz)
      #((@mat3 * @mat4).matriz.should eq Matriz.new([[10,1,9],[8,2,12]]).matriz)
    end    
  end

end
