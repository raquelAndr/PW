package servletjsp;

public class CalculaImc {

    public static String calcular(int peso, double altura) {

        String resultado = "";
        double imc = peso / (altura * altura);

        if (imc < 17) {
            resultado = "Seu IMC é: " + imc + ". Você está muito abaixo do peso";
        } else if (imc >= 17 && imc <= 18.49) {
            resultado = "Seu IMC é: " + imc + ". Você está abaixo do peso";
        } else if (imc >= 18.5 && imc <= 24.99) {
            resultado = "Seu IMC é: " + imc + ". Você está com o peso normal";
        } else if (imc >= 25 && imc <= 29.99) {
            resultado = "Seu IMC é: " + imc + ". Você está acima do peso";
        } else if (imc >= 30 && imc <= 34.99) {
            resultado = "Seu IMC é: " + imc + ". Você está com obesidade grau 1";
        } else if (imc >= 35 && imc <= 39.99) {
            resultado = "Seu IMC é: " + imc + ". Você está com obesidade  grau 2 (severa)";
        } else if (imc > 40) {
            resultado = "Seu IMC é: " + imc + ". Você está com obesidade grau 3 (mórbida)";
        }

        return resultado;
    }
}
