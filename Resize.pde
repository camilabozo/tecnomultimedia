class Resize {
  
  int porcentajeX(float valor) {
    return round(map(valor, 0, 800, 0, width));
  }

  int porcentajeY(float valor) {
    return round(map(valor, 0, 600, 0, height));
  }
}
