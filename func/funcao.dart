int somatorioDivisiveis(int numero) {
  int soma = 0;

  for (int i = 3; i < numero; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      soma += i;
    }
  }

  return soma;
}
