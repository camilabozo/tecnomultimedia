class Juego{
   Jugador jugador;
   Enemigo [] enemigos;
   Techo techo;
   Contador contador;
   int cantidadDeEnemigos;
   int velocidad;
   
   Juego(){
     this.cantidadDeEnemigos = 10;
     this.jugador = new Jugador(colorJugador, width/2, 360, tam, tam);
     this.contador = new Contador(50, 50, colorTexto, 20);
     this.techo = new Techo();
     this.velocidad = 1;
     this.enemigos = new Enemigo[cantidadDeEnemigos];
     for(int i = 0; i < cantidadDeEnemigos; i++){
       this.enemigos[i] = new Enemigo(i*tam+tam/2);
     }
   }  
   void comenzar(){
     for(int i = 0; i < cantidadDeEnemigos; i++){
       this.enemigos[i].dibujate();
     }
     jugador.dibujate();
     techo.dibujate();
     contador.dibujate();
   }
   void aumentarVelocidad(){
     this.velocidad++;
   }
   
}
