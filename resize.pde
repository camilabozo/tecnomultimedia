int porcentajeX(int valor){
  return round(map(valor,0,800,0,width));
}

int porcentajeY(int valor){
  return round(map(valor,0,600,0,height));
}
