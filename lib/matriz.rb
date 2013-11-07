#! /usr/local/ruby/bin/ruby

class Matriz

  attr_accessor :nF , :nC, :matriz

  def initialize (matriz)
    @nF = matriz.size
    @nC = matriz[0].size
    @matriz = matriz
  end

  def to_s
    matString = ""
    for i in 0...@nF do
      for j in 0...@nC do
        matString = matString + @matriz[i][j].to_s + " "
      end
      matString = matString + "\n"
    end
    matString
  end

  # Suma de Matrices
  def +(mat)  
    d = Matriz.new(@matriz)
      for i in (0...@nF) do
        for j in (0...@nC) do
           d.matriz[i][j] = (@matriz[i][j] + mat.matriz[i][j])
        end 
      end  
  d     
  end

  # Resta de Matrices
  def -(mat)
    d = Matriz.new(@matriz)
      for i in (0...@nF) do
        for j in (0...@nC) do
           d.matriz[i][j] = (@matriz[i][j] - mat.matriz[i][j])
        end 
      end  
  d     
  end

  # Producto de Matrices
  def *(mat)
   d = Matriz.new(@matriz)
     for i in (0...@nF) do
        for j in (0...@nC) do
           sum = 0;
           for k in (0...@nC) do
              sum += (@matriz[i][k] * mat.matriz[k][j])
           end
        d.matriz[i][j] = sum
        end        
     end
  d
  end


end
