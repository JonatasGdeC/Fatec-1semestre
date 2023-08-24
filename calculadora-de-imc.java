public class MyClass {
    public static void main(String args[]) {
      
      //índice de massa comporal (IMC)
      double IMC = 0;
      double peso = 80;
      double altura = 1.80;
      
      //Calculando um novo valor do IMC
      IMC = peso / (altura * altura);
      
      //Imprimindo o valor do IMC
      System.out.println("O valor do meu IMC é: " + IMC);
      
      /*Classificando o 
      biotipo 
      de 
      uma pessoa*/
      
      if(IMC < 18.5){
          System.out.println("Biotipo = magreza");
      } else if(IMC >= 18.5 && IMC < 24.9){
          System.out.println("Biotipo = normal");
      } else if(IMC >= 24.9 && IMC < 29.9){
          System.out.println("Biotipo = sobrepeso");
      } else if(IMC >= 29.9 && IMC < 34.9){
          System.out.println("Biotipo = obesidade grau 1");
      } else if(IMC >= 34.9 && IMC <= 40){
          System.out.println("Biotipo = obesidade grau 2");
      } else {
          System.out.println("Biotipo = obesidade grau 3");
      }
      
    }
}
