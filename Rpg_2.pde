import ddf.minim.*;
//variables globales
int filas = 800;//x
int columnas = 600;//y
int t = 6;
int posx = 1;
int posy = 1;
int pantalla = 0;
int movrx = 0;
int movr2x = 0;
int miniatura1 = 0;
int miniatura2 = 0;
int miniatura3 = 0;
int miniatura4 = 0;
int miniatura5 = 0;
int miniatura6 = 0;
int miniatura7 = 0;
int miniatura8 = 0;
int miniatura9 = 0;
int miniatura10 = 0;
int HPF = 200;
int HPMX = 280;
int HPC = 150;
int HPM = 290;
int HPE = 250;
int HPF2 = 200;
int HPMX2 = 280;
int HPC2 = 150;
int HPM2 = 290;
int HPE2 = 250;
int golpe;
int jugador = 0;
PFont bits;
float delta;
int turnos = 1;
int vidajefe = 750;
//Maximo para x = 134, Maximo para y = 67

class Maya{
 void maya(){
   stroke(0);
  for(int i = 0; i < filas; i++){
    line(0, i*t, filas, i*t);
  }
  for(int k = 0; k < columnas; k++){
    line(k*t, 0, k*t, columnas);
  }
 }
  
}

class Fondo{
  void display(){
    noStroke();
    //cielo
    fill(#011840);
    rect(posx,posy,t*135,t*25);
    //Estrellas
    int s =second();
    int mov = 1;
    fill(random(0,255),random(0,255),random(0,255));
    for(int i=0; i<s;i++){
      mov = mov+t;
    }
    rect((t*50)+mov,(t*10)+mov,t,t);
    rect((t*(50-60))+mov,(t*(10-60))+mov,t,t);
    rect((t*70)+mov,(t*5)+mov,t,t);
    rect((t*(70-60))+mov,(t*(5-60))+mov,t,t);
    rect((t*20)+mov,(t*10)+mov,t,t);
    rect((t*(20-60))+mov,(t*(10-60))+mov,t,t);
    rect((t*0)+mov,(t*0)+mov,t,t);
    rect((t*(0-60))+mov,(t*(0-60))+mov,t,t);
    rect((t*20)+mov,(t*-15)+mov,t,t);
    rect((t*(20-60))+mov,(t*(-15-60))+mov,t,t);
    rect((t*60)+mov,(t*-20)+mov,t,t);
    rect((t*(60-60))+mov,(t*(-20-60))+mov,t,t);
    rect((t*85)+mov,(t*-15)+mov,t,t);
    rect((t*(85-60))+mov,(t*(-15-60))+mov,t,t);
    rect((t*45)+mov,(t*-5)+mov,t,t);
    rect((t*(45-60))+mov,(t*(-5-60))+mov,t,t);
    rect((t*85)+mov,(t*-8)+mov,t,t);
    rect((t*(85-60))+mov,(t*(-8-60))+mov,t,t);
    rect((t*38)+mov,(t*-7)+mov,t,t);
    rect((t*(38-60))+mov,(t*(-7-60))+mov,t,t);//primera
    rect((t*50)+mov,(t*5)+mov,t,t);
    rect((t*(50-60))+mov,(t*(5-60))+mov,t,t);
    rect((t*70)+mov,(t*-9)+mov,t,t);
    rect((t*(70-60))+mov,(t*(-9-60))+mov,t,t);
    rect((t*20)+mov,(t*-16)+mov,t,t);
    rect((t*(20-60))+mov,(t*(-16-60))+mov,t,t);
    rect((t*90)+mov,(t*-5)+mov,t,t);
    rect((t*(90-60))+mov,(t*(-5-60))+mov,t,t);
    rect((t*20)+mov,(t*-30)+mov,t,t);
    rect((t*(20-60))+mov,(t*(-30-60))+mov,t,t);
    rect((t*60)+mov,(t*-25)+mov,t,t);
    rect((t*(60-60))+mov,(t*(-25-60))+mov,t,t);//segunda
    rect((t*50)+mov,(t*-35)+mov,t,t);
    rect((t*(50-60))+mov,(t*(-35-60))+mov,t,t);
    rect((t*70)+mov,(t*-22)+mov,t,t);
    rect((t*(70-60))+mov,(t*(-22-60))+mov,t,t);
    rect((t*20)+mov,(t*-30)+mov,t,t);
    rect((t*(20-60))+mov,(t*(-30-60))+mov,t,t);
    rect((t*90)+mov,(t*-24)+mov,t,t);
    rect((t*(90-60))+mov,(t*(-24-60))+mov,t,t);
    rect((t*20)+mov,(t*-27)+mov,t,t);
    rect((t*(20-60))+mov,(t*(-27-60))+mov,t,t);
    rect((t*60)+mov,(t*-23)+mov,t,t);
    rect((t*(60-60))+mov,(t*(-23-60))+mov,t,t);//tercera
    rect((t*45)+mov,(t*10)+mov,t,t);
    rect((t*(45-60))+mov,(t*(10-60))+mov,t,t);
    rect((t*30)+mov,(t*5)+mov,t,t);
    rect((t*(30-60))+mov,(t*(5-60))+mov,t,t);
    rect((t*25)+mov,(t*15)+mov,t,t);
    rect((t*(25-60))+mov,(t*(15-60))+mov,t,t);
    rect((t*42)+mov,(t*12)+mov,t,t);
    rect((t*(42-60))+mov,(t*(12-60))+mov,t,t);
    rect((t*36)+mov,(t*21)+mov,t,t);
    rect((t*(36-60))+mov,(t*(21-60))+mov,t,t);
    rect((t*46)+mov,(t*3)+mov,t,t);
    rect((t*(46-60))+mov,(t*(3-60))+mov,t,t);
    
    //Luna
    fill(255,20);
    for(int i = 0; i < 7; i++){
     rect(posx*(t*i+532),posy*(t*(5-i)),t*(13-i-i),t);
    }
    for(int i = 0; i < 6; i++){
     rect(posx*(t*i+538),posy*(t*(6+i)),t*(11-i-i),t);
    }
    //luna
    fill(255);
    for(int i = 0; i < 4; i++){
     rect(posx*(t*i+550),posy*(t*(5-i)),t*(7-i-i),t);
    }
    for(int i = 0; i < 4; i++){
     rect(posx*(t*i+550),posy*(t*(5+i)),t*(7-i-i),t);
    }
    
    //Montañas
    for(int k=0;k<1350;k+=100){
      int movx = -20+k;
     for(int j=0;j<20;j++){
      //color relleno
      fill(5);
      rect(posx*(t*(j+j+movx)),posy*(t*(20-j)),t*(80-j-j-j-j),t);
     }
     for(int i=0;i<20;i++){
      //color contorno
      fill(0);
      rect(posx*(t*(40+i+i+movx)),posy*(t*i),t*2,t);
      rect(posx*(t*(40-i-i+movx)),posy*(t*i),t*2,t);
     }
    }
    
    //Suelo y fondo del bosque
    fill(0);
    rect(posx,posy*(t*25),t*135,t*20);
   fill(0,27,3);
   rect(posx,posy*(t*42),t*135,t*67);
   for(int i = 0; i < 680;i++){
     fill(131,47,7);
     rect(posx*(t*(60-i-i-i)),posy*(t*(42+i)),t*(15+i+i+i+i+i+i),t);
   }
   for(int j = 0; j < 680; j++){
     fill(#9D4820);
     rect(posx*(t*(65-j-j-j)),posy*(t*(42+j)),t*(5+j+j+j+j+j+j),t);
   }
   
   //Arboles
   for(int i = 0; i < 1350; i+=20){
     int movx = -90+i;
     int movy = 18;   
     fill(0,10,0);//verde obscuro
     noStroke();
     rect(posx*(t*(100 - movx)),posy*(t*(30-movy)),t,t);//punta del pino
     rect(posx*(t*(99- movx)),posy*(t*(31 - movy)),t*3,t);
     rect(posx*(t*(98 - movx)),posy*(t*(32 - movy)),t,t);
     rect(posx*(t*(102 - movx)),posy*(t*(32 - movy)),t,t);
     rect(posx*(t*(97 - movx)),posy*(t*(33 - movy)),t,t);
     rect(posx*(t*(103 - movx)),posy*(t*(33 - movy)),t,t);
     rect(posx*(t*(96 - movx)),posy*(t*(34 - movy)),t,t);
     rect(posx*(t*(104 - movx)),posy*(t*(34 - movy)),t,t);
     rect(posx*(t*(95 - movx)),posy*(t*(35 - movy)),t,t);
     rect(posx*(t*(105 - movx)),posy*(t*(35 - movy)),t,t);
     rect(posx*(t*(94 - movx)),posy*(t*(36 - movy)),t,t);
     rect(posx*(t*(106 - movx)),posy*(t*(36 - movy)),t,t);
     rect(posx*(t*(93 - movx)),posy*(t*(37 - movy)),t,t);
     rect(posx*(t*(107 - movx)),posy*(t*(37 - movy)),t,t);
     rect(posx*(t*(92 - movx)),posy*(t*(38 - movy)),t*4,t);
     rect(posx*(t*(106 - movx)),posy*(t*(38 - movy)),t*3,t);
     rect(posx*(t*(94 - movx)),posy*(t*(39 - movy)),t*4,t);
     rect(posx*(t*(104 - movx)),posy*(t*(39 - movy)),t*4,t);
     rect(posx*(t*(96 - movx)),posy*(t*(40 - movy)),t*2,t);
     rect(posx*(t*(104 - movx)),posy*(t*(40 - movy)),t*2,t);
     rect(posx*(t*(105 - movx)),posy*(t*(41 - movy)),t,t);
     rect(posx*(t*(95 - movx)),posy*(t*(41 - movy)),t,t);
     rect(posx*(t*(106 - movx)),posy*(t*(42 - movy)),t,t);
     rect(posx*(t*(94 - movx)),posy*(t*(42 - movy)),t,t);
     rect(posx*(t*(107 - movx)),posy*(t*(43 - movy)),t,t);
     rect(posx*(t*(93 - movx)),posy*(t*(43 - movy)),t,t);
     rect(posx*(t*(108 - movx)),posy*(t*(44 - movy)),t,t);
     rect(posx*(t*(92 - movx)),posy*(t*(44 - movy)),t,t);
     rect(posx*(t*(91 - movx)),posy*(t*(45 - movy)),t*19,t);//fin del pino
     rect(posx*(t*(99 - movx)),posy*(t*(33 - movy)),t,t*10);//inicio del relleno
     rect(posx*(t*(98 - movx)),posy*(t*(37 - movy)),t*3,t*2);
     rect(posx*(t*(99 - movx)),posy*(t*(38 - movy)),t,t);
     rect(posx*(t*(100 - movx)),posy*(t*(35 - movy)),t*3,t*2);
     rect(posx*(t*(95 - movx)),posy*(t*(35 - movy)),t,t*3);
     rect(posx*(t*(101 - movx)),posy*(t*(39 - movy)),t*3,t);
     rect(posx*(t*(103 - movx)),posy*(t*(41 - movy)),t,t*5);
     fill(0,40,0);//verde claro
     rect(posx*(t*(106 - movx)),posy*(t*(37 - movy)),t,t);
     rect(posx*(t*(101 - movx)),posy*(t*(37 - movy)),t*5,t*2);
     rect(posx*(t*(103 - movx)),posy*(t*(35 - movy)),t*2,t*2);
     rect(posx*(t*(105 - movx)),posy*(t*(36 - movy)),t,t);
     rect(posx*(t*(100 - movx)),posy*(t*(33 - movy)),t*3,t*2);
     rect(posx*(t*(99 - movx)),posy*(t*(32 - movy)),t*3,t);
     rect(posx*(t*(103 - movx)),posy*(t*(34 - movy)),t,t);
     rect(posx*(t*(94 - movx)),posy*(t*(37 - movy)),t,t);
     rect(posx*(t*(97 - movx)),posy*(t*(34 - movy)),t,t);
     rect(posx*(t*(96 - movx)),posy*(t*(35 - movy)),t*2,t*4);
     rect(posx*(t*(98 - movx)),posy*(t*(33 - movy)),t,t*4);
     rect(posx*(t*(94 - movx)),posy*(t*(43 - movy)),t*9,t*2);
     rect(posx*(t*(104 - movx)),posy*(t*(43 - movy)),t*3,t*2);
     rect(posx*(t*(107 - movx)),posy*(t*(44 - movy)),t,t);
     rect(posx*(t*(93 - movx)),posy*(t*(44 - movy)),t,t);
     rect(posx*(t*(96 - movx)),posy*(t*(41 - movy)),t*3,t*2);
     rect(posx*(t*(95 - movx)),posy*(t*(42 - movy)),t,t);
     rect(posx*(t*(104 - movx)),posy*(t*(42 - movy)),t*2,t);
     rect(posx*(t*(100 - movx)),posy*(t*(40 - movy)),t*3,t*3);
     rect(posx*(t*(104 - movx)),posy*(t*(41 - movy)),t,t);
     rect(posx*(t*(103 - movx)),posy*(t*(40 - movy)),t,t);
     rect(posx*(t*(100 - movx)),posy*(t*(39 - movy)),t,t);
     rect(posx*(t*(98 - movx)),posy*(t*(39 - movy)),t,t*2);//fin del relleno pino
     fill(70,4,0);//tronco
     rect(posx*(t*(98 - movx)),posy*(t*(46 - movy)),t*5,t*8);
     fill(98,14,0);
     rect(posx*(t*(99 - movx)),posy*(t*(46 - movy)),t,t*6);
     rect(posx*(t*(102 - movx)),posy*(t*(48 - movy)),t,t*3);
     rect(posx*(t*(101 - movx)),posy*(t*(47 - movy)),t*2,t);
   }
   
    for(int i = 0; i < 1350; i+=20){
      int movx = -100+i;
      int movy = 16;   
      fill(10,50,10);//verde obscuro
      noStroke();
      rect(posx*(t*(100 - movx)),posy*(t*(30-movy)),t,t);//punta del pino
      rect(posx*(t*(99- movx)),posy*(t*(31 - movy)),t*3,t);
      rect(posx*(t*(98 - movx)),posy*(t*(32 - movy)),t,t);
      rect(posx*(t*(102 - movx)),posy*(t*(32 - movy)),t,t);
      rect(posx*(t*(97 - movx)),posy*(t*(33 - movy)),t,t);
      rect(posx*(t*(103 - movx)),posy*(t*(33 - movy)),t,t);
      rect(posx*(t*(96 - movx)),posy*(t*(34 - movy)),t,t);
      rect(posx*(t*(104 - movx)),posy*(t*(34 - movy)),t,t);
      rect(posx*(t*(95 - movx)),posy*(t*(35 - movy)),t,t);
      rect(posx*(t*(105 - movx)),posy*(t*(35 - movy)),t,t);
      rect(posx*(t*(94 - movx)),posy*(t*(36 - movy)),t,t);
      rect(posx*(t*(106 - movx)),posy*(t*(36 - movy)),t,t);
      rect(posx*(t*(93 - movx)),posy*(t*(37 - movy)),t,t);
      rect(posx*(t*(107 - movx)),posy*(t*(37 - movy)),t,t);
      rect(posx*(t*(92 - movx)),posy*(t*(38 - movy)),t*4,t);
      rect(posx*(t*(106 - movx)),posy*(t*(38 - movy)),t*3,t);
      rect(posx*(t*(94 - movx)),posy*(t*(39 - movy)),t*4,t);
      rect(posx*(t*(104 - movx)),posy*(t*(39 - movy)),t*4,t);
      rect(posx*(t*(96 - movx)),posy*(t*(40 - movy)),t*2,t);
      rect(posx*(t*(104 - movx)),posy*(t*(40 - movy)),t*2,t);
      rect(posx*(t*(105 - movx)),posy*(t*(41 - movy)),t,t);
      rect(posx*(t*(95 - movx)),posy*(t*(41 - movy)),t,t);
      rect(posx*(t*(106 - movx)),posy*(t*(42 - movy)),t,t);
      rect(posx*(t*(94 - movx)),posy*(t*(42 - movy)),t,t);
      rect(posx*(t*(107 - movx)),posy*(t*(43 - movy)),t,t);
      rect(posx*(t*(93 - movx)),posy*(t*(43 - movy)),t,t);
      rect(posx*(t*(108 - movx)),posy*(t*(44 - movy)),t,t);
      rect(posx*(t*(92 - movx)),posy*(t*(44 - movy)),t,t);
      rect(posx*(t*(91 - movx)),posy*(t*(45 - movy)),t*19,t);//fin del pino
      rect(posx*(t*(99 - movx)),posy*(t*(33 - movy)),t,t*10);//inicio del relleno
      rect(posx*(t*(98 - movx)),posy*(t*(37 - movy)),t*3,t*2);
      rect(posx*(t*(99 - movx)),posy*(t*(38 - movy)),t,t);
      rect(posx*(t*(100 - movx)),posy*(t*(35 - movy)),t*3,t*2);
      rect(posx*(t*(95 - movx)),posy*(t*(35 - movy)),t,t*3);
      rect(posx*(t*(101 - movx)),posy*(t*(39 - movy)),t*3,t);
      rect(posx*(t*(103 - movx)),posy*(t*(41 - movy)),t,t*5);
      fill(0,120,0);//verde claro
      rect(posx*(t*(106 - movx)),posy*(t*(37 - movy)),t,t);
      rect(posx*(t*(101 - movx)),posy*(t*(37 - movy)),t*5,t*2);
      rect(posx*(t*(103 - movx)),posy*(t*(35 - movy)),t*2,t*2);
      rect(posx*(t*(105 - movx)),posy*(t*(36 - movy)),t,t);
      rect(posx*(t*(100 - movx)),posy*(t*(33 - movy)),t*3,t*2);
      rect(posx*(t*(99 - movx)),posy*(t*(32 - movy)),t*3,t);
      rect(posx*(t*(103 - movx)),posy*(t*(34 - movy)),t,t);
      rect(posx*(t*(94 - movx)),posy*(t*(37 - movy)),t,t);
      rect(posx*(t*(97 - movx)),posy*(t*(34 - movy)),t,t);
      rect(posx*(t*(96 - movx)),posy*(t*(35 - movy)),t*2,t*4);
      rect(posx*(t*(98 - movx)),posy*(t*(33 - movy)),t,t*4);
      rect(posx*(t*(94 - movx)),posy*(t*(43 - movy)),t*9,t*2);
      rect(posx*(t*(104 - movx)),posy*(t*(43 - movy)),t*3,t*2);
      rect(posx*(t*(107 - movx)),posy*(t*(44 - movy)),t,t);
      rect(posx*(t*(93 - movx)),posy*(t*(44 - movy)),t,t);
      rect(posx*(t*(96 - movx)),posy*(t*(41 - movy)),t*3,t*2);
      rect(posx*(t*(95 - movx)),posy*(t*(42 - movy)),t,t);
      rect(posx*(t*(104 - movx)),posy*(t*(42 - movy)),t*2,t);
      rect(posx*(t*(100 - movx)),posy*(t*(40 - movy)),t*3,t*3);
      rect(posx*(t*(104 - movx)),posy*(t*(41 - movy)),t,t);
      rect(posx*(t*(103 - movx)),posy*(t*(40 - movy)),t,t);
      rect(posx*(t*(100 - movx)),posy*(t*(39 - movy)),t,t);
      rect(posx*(t*(98 - movx)),posy*(t*(39 - movy)),t,t*2);//fin del relleno pino
      fill(100,34,0);//tronco
      rect(posx*(t*(98 - movx)),posy*(t*(46 - movy)),t*5,t*8);
      fill(128,44,4);
      rect(posx*(t*(99 - movx)),posy*(t*(46 - movy)),t,t*6);
      rect(posx*(t*(102 - movx)),posy*(t*(48 - movy)),t,t*3);
      rect(posx*(t*(101 - movx)),posy*(t*(47 - movy)),t*2,t);
    }
   
   for(int i = 0; i < 1350; i+=20){
      int movx = -90 + i;
      int movy = 13;   
      fill(0,70,0);//verde obscuro
      noStroke();
      rect(posx*(t*(100 - movx)),posy*(t*(30-movy)),t,t);//punta del pino
       rect(posx*(t*(99- movx)),posy*(t*(31 - movy)),t*3,t);
      rect(posx*(t*(98 - movx)),posy*(t*(32 - movy)),t,t);
      rect(posx*(t*(102 - movx)),posy*(t*(32 - movy)),t,t);
      rect(posx*(t*(97 - movx)),posy*(t*(33 - movy)),t,t);
      rect(posx*(t*(103 - movx)),posy*(t*(33 - movy)),t,t);
      rect(posx*(t*(96 - movx)),posy*(t*(34 - movy)),t,t);
      rect(posx*(t*(104 - movx)),posy*(t*(34 - movy)),t,t);
      rect(posx*(t*(95 - movx)),posy*(t*(35 - movy)),t,t);
      rect(posx*(t*(105 - movx)),posy*(t*(35 - movy)),t,t);
      rect(posx*(t*(94 - movx)),posy*(t*(36 - movy)),t,t);
      rect(posx*(t*(106 - movx)),posy*(t*(36 - movy)),t,t);
      rect(posx*(t*(93 - movx)),posy*(t*(37 - movy)),t,t);
      rect(posx*(t*(107 - movx)),posy*(t*(37 - movy)),t,t);
      rect(posx*(t*(92 - movx)),posy*(t*(38 - movy)),t*4,t);
      rect(posx*(t*(106 - movx)),posy*(t*(38 - movy)),t*3,t);
      rect(posx*(t*(94 - movx)),posy*(t*(39 - movy)),t*4,t);
      rect(posx*(t*(104 - movx)),posy*(t*(39 - movy)),t*4,t);
      rect(posx*(t*(96 - movx)),posy*(t*(40 - movy)),t*2,t);
      rect(posx*(t*(104 - movx)),posy*(t*(40 - movy)),t*2,t);
      rect(posx*(t*(105 - movx)),posy*(t*(41 - movy)),t,t);
      rect(posx*(t*(95 - movx)),posy*(t*(41 - movy)),t,t);
      rect(posx*(t*(106 - movx)),posy*(t*(42 - movy)),t,t);
      rect(posx*(t*(94 - movx)),posy*(t*(42 - movy)),t,t);
      rect(posx*(t*(107 - movx)),posy*(t*(43 - movy)),t,t);
      rect(posx*(t*(93 - movx)),posy*(t*(43 - movy)),t,t);
      rect(posx*(t*(108 - movx)),posy*(t*(44 - movy)),t,t);
      rect(posx*(t*(92 - movx)),posy*(t*(44 - movy)),t,t);
      rect(posx*(t*(91 - movx)),posy*(t*(45 - movy)),t*19,t);//fin del pino
      rect(posx*(t*(99 - movx)),posy*(t*(33 - movy)),t,t*10);//inicio del relleno
      rect(posx*(t*(98 - movx)),posy*(t*(37 - movy)),t*3,t*2);
      rect(posx*(t*(99 - movx)),posy*(t*(38 - movy)),t,t);
      rect(posx*(t*(100 - movx)),posy*(t*(35 - movy)),t*3,t*2);
      rect(posx*(t*(95 - movx)),posy*(t*(35 - movy)),t,t*3);
      rect(posx*(t*(101 - movx)),posy*(t*(39 - movy)),t*3,t);
      rect(posx*(t*(103 - movx)),posy*(t*(41 - movy)),t,t*5);
      fill(0,200,0);//verde claro
      rect(posx*(t*(106 - movx)),posy*(t*(37 - movy)),t,t);
      rect(posx*(t*(101 - movx)),posy*(t*(37 - movy)),t*5,t*2);
      rect(posx*(t*(103 - movx)),posy*(t*(35 - movy)),t*2,t*2);
      rect(posx*(t*(105 - movx)),posy*(t*(36 - movy)),t,t);
      rect(posx*(t*(100 - movx)),posy*(t*(33 - movy)),t*3,t*2);
      rect(posx*(t*(99 - movx)),posy*(t*(32 - movy)),t*3,t);
      rect(posx*(t*(103 - movx)),posy*(t*(34 - movy)),t,t);
      rect(posx*(t*(94 - movx)),posy*(t*(37 - movy)),t,t);
      rect(posx*(t*(97 - movx)),posy*(t*(34 - movy)),t,t);
      rect(posx*(t*(96 - movx)),posy*(t*(35 - movy)),t*2,t*4);
      rect(posx*(t*(98 - movx)),posy*(t*(33 - movy)),t,t*4);
      rect(posx*(t*(94 - movx)),posy*(t*(43 - movy)),t*9,t*2);
      rect(posx*(t*(104 - movx)),posy*(t*(43 - movy)),t*3,t*2);
      rect(posx*(t*(107 - movx)),posy*(t*(44 - movy)),t,t);
      rect(posx*(t*(93 - movx)),posy*(t*(44 - movy)),t,t);
      rect(posx*(t*(96 - movx)),posy*(t*(41 - movy)),t*3,t*2);
      rect(posx*(t*(95 - movx)),posy*(t*(42 - movy)),t,t);
      rect(posx*(t*(104 - movx)),posy*(t*(42 - movy)),t*2,t);
      rect(posx*(t*(100 - movx)),posy*(t*(40 - movy)),t*3,t*3);
      rect(posx*(t*(104 - movx)),posy*(t*(41 - movy)),t,t);
      rect(posx*(t*(103 - movx)),posy*(t*(40 - movy)),t,t);
      rect(posx*(t*(100 - movx)),posy*(t*(39 - movy)),t,t);
      rect(posx*(t*(98 - movx)),posy*(t*(39 - movy)),t,t*2);//fin del relleno pino
      fill(103,37,3);//tronco
      rect(posx*(t*(98 - movx)),posy*(t*(46 - movy)),t*5,t*8);
      fill(131,47,7);
      rect(posx*(t*(99 - movx)),posy*(t*(46 - movy)),t,t*6);
      rect(posx*(t*(102 - movx)),posy*(t*(48 - movy)),t,t*3);
      rect(posx*(t*(101 - movx)),posy*(t*(47 - movy)),t*2,t);
   }
   //pasto oscuro
    for(int k=0;k<1350;k+=10){
      int movx = -6+k;
     for(int j=0;j<6;j++){
      fill(#85B202);
      rect(posx*(t*(j+movx)),posy*(t*(40-j)),t*(10-j-j),t);
     }
     for(int i=0;i<6;i++){
      fill(#5B8600);
      rect(posx*(t*(5+i+movx)),posy*(t*(35+i)),t*1,t);
      rect(posx*(t*(5-i+movx)),posy*(t*(35+i)),t*1,t);
     }
    }
    
    //pasto claro
    for(int k=0;k<1350;k+=10){
      int movx = -1+k;
     for(int j=0;j<6;j++){
      fill(#ACFF00);
      rect(posx*(t*(j+movx)),posy*(t*(41-j)),t*(10-j-j),t);
     }
     for(int i=0;i<6;i++){
      fill(#83C100);
      rect(posx*(t*(5+i+movx)),posy*(t*(36+i)),t*1,t);
      rect(posx*(t*(5-i+movx)),posy*(t*(36+i)),t*1,t);
     }
    }
  }
}

class PersonajesP1{
  void jugadores1(){
    if(movrx == 0){
      //fantasma
      pushMatrix();
    //translate(width/2,height/2);
    scale(-1,1);
    noStroke();
    int movx = -33;
    int movy = 40;
    fill(255);
    rect(posx+(t*(8+movx)),posy+(t*(6+movy)),t*11,t*12);
    fill(#A500E3);//morado
    rect(posx+(t*(11+movx)),posy+(t*(0+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(1+movy)),t*3,t*3);
    rect(posx+(t*(19+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(2+movy)),t*6,t*2);
    rect(posx+(t*(13+movx)),posy+(t*(3+movy)),t*2,t*3);
    rect(posx+(t*(15+movx)),posy+(t*(4+movy)),t*5,t*2);
    rect(posx+(t*(11+movx)),posy+(t*(4+movy)),t*2,t*2);
    rect(posx+(t*(6+movx)),posy+(t*(5+movy)),t*6,t);
    rect(posx+(t*(5+movx)),posy+(t*(4+movy)),t*4,t);
    rect(posx+(t*(6+movx)),posy+(t*(3+movy)),t*2,t);
    rect(posx+(t*(7+movx)),posy+(t*(6+movy)),t*3,t*2);
    rect(posx+(t*(4+movx)),posy+(t*(7+movy)),t*5,t*2);
    rect(posx+(t*(3+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(9+movy)),t*4,t*4);
    rect(posx+(t*(3+movx)),posy+(t*(11+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(13+movy)),t*3,t);
    rect(posx+(t*(5+movx)),posy+(t*(13+movy)),t*3,t);
    rect(posx+(t*(6+movx)),posy+(t*(14+movy)),t*2,t*6);
    rect(posx+(t*(5+movx)),posy+(t*(15+movy)),t,t*4);
    rect(posx+(t*(4+movx)),posy+(t*(17+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(18+movy)),t*15,t*3);
    rect(posx+(t*(8+movx)),posy+(t*(21+movy)),t*14,t*4);
    rect(posx+(t*(7+movx)),posy+(t*(23+movy)),t*3,t*3);
    rect(posx+(t*(6+movx)),posy+(t*(24+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(25+movy)),t*4,t*4);
    rect(posx+(t*(9+movx)),posy+(t*(27+movy)),t*2,t*3);
    rect(posx+(t*(8+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(25+movy)),t,t*3);
    rect(posx+(t*(16+movx)),posy+(t*(25+movy)),t*6,t*2);
    rect(posx+(t*(17+movx)),posy+(t*(27+movy)),t*7,t);
    rect(posx+(t*(22+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(20+movx)),posy+(t*(28+movy)),t*5,t);
    rect(posx+(t*(18+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(29+movy)),t*2,t);
    rect(posx+(t*(22+movx)),posy+(t*(19+movy)),t,t*3);
    rect(posx+(t*(23+movx)),posy+(t*(20+movy)),t,t);
    rect(posx+(t*(22+movx)),posy+(t*(11+movy)),t*2,t*5);
    rect(posx+(t*(24+movx)),posy+(t*(11+movy)),t,t*4);
    rect(posx+(t*(25+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(23+movx)),posy+(t*(10+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(12+movy)),t*3,t*5);
    rect(posx+(t*(21+movx)),posy+(t*(7+movy)),t,t*3);
    rect(posx+(t*(19+movx)),posy+(t*(6+movy)),t*2,t*6);
    rect(posx+(t*(17+movx)),posy+(t*(6+movy)),t*2,t*3);
    rect(posx+(t*(17+movx)),posy+(t*(16+movy)),t*4,t*2);
    rect(posx+(t*(8+movx)),posy+(t*(16+movy)),t,t*2);
    fill(0,0,110);
    rect(posx+(t*(10+movx)),posy+(t*(20+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(22+movy)),t,t*4);
    rect(posx+(t*(9+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(20+movx)),posy+(t*(19+movy)),t*2,t);
    rect(posx+(t*(16+movx)),posy+(t*(20+movy)),t*3,t*2);
    rect(posx+(t*(12+movx)),posy+(t*(26+movy)),t*2,t);
    rect(posx+(t*(14+movx)),posy+(t*(4+movy)),t*2,t*2);
    rect(posx+(t*(5+movx)),posy+(t*(8+movy)),t*2,t*2);
    rect(posx+(t*(18+movx)),posy+(t*(6+movy)),t*2,t*2);
    rect(posx+(t*(20+movx)),posy+(t*(21+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(20+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(25+movy)),t*2,t);
    rect(posx+(t*(12+movx)),posy+(t*(21+movy)),t*2,t*2);
    rect(posx+(t*(19+movx)),posy+(t*(24+movy)),t*2,t*2);
    rect(posx+(t*(19+movx)),posy+(t*(12+movy)),t*2,t*2);
    //Cabeza
    fill(0);
    rect(posx+(t*(10+movx)),posy+(t*(6+movy)),t*7,t);
    rect(posx+(t*(10+movx)),posy+(t*(7+movy)),t,t*2);
    rect(posx+(t*(16+movx)),posy+(t*(7+movy)),t,t*2);
    rect(posx+(t*(9+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(17+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(8+movx)),posy+(t*(9+movy)),t,t*7);
    rect(posx+(t*(18+movx)),posy+(t*(9+movy)),t,t*7);
    rect(posx+(t*(9+movx)),posy+(t*(15+movy)),t,t*3);
    rect(posx+(t*(16+movx)),posy+(t*(15+movy)),t,t*3);
    rect(posx+(t*(17+movx)),posy+(t*(14+movy)),t,t*3);
    rect(posx+(t*(10+movx)),posy+(t*(17+movy)),t*6,t);
    rect(posx+(t*(11+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(9+movx)),posy+(t*(12+movy)),t*2,t*2);
    rect(posx+(t*(14+movx)),posy+(t*(12+movy)),t*2,t*2);
    //Mano derecha
    fill(255);
    rect(posx+(t*(2+movx)),posy+(t*(20+movy)),t*2,t);
    rect(posx+(t*(3+movx)),posy+(t*(20+movy)),t,t*3);
    rect(posx+(t*(2+movx)),posy+(t*(22+movy)),t,t);
    fill(0);
    rect(posx+(t*(1+movx)),posy+(t*(20+movy)),t,t);
    rect(posx+(t*(2+movx)),posy+(t*(19+movy)),t*2,t);
    rect(posx+(t*(4+movx)),posy+(t*(20+movy)),t,t*3);
    rect(posx+(t*(2+movx)),posy+(t*(23+movy)),t*2,t);
    rect(posx+(t*(1+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(2+movx)),posy+(t*(21+movy)),t,t);
    //Mano izquierda
    fill(255);
    rect(posx+(t*(26+movx)),posy+(t*(17+movy)),t*2,t);
    rect(posx+(t*(27+movx)),posy+(t*(17+movy)),t,t*3);
    rect(posx+(t*(26+movx)),posy+(t*(19+movy)),t,t);
    fill(0);
    rect(posx+(t*(25+movx)),posy+(t*(17+movy)),t,t);
    rect(posx+(t*(26+movx)),posy+(t*(16+movy)),t*2,t);
    rect(posx+(t*(28+movx)),posy+(t*(17+movy)),t,t*3);
    rect(posx+(t*(26+movx)),posy+(t*(20+movy)),t*2,t);
    rect(posx+(t*(25+movx)),posy+(t*(19+movy)),t,t);
    rect(posx+(t*(26+movx)),posy+(t*(18+movy)),t,t);
    popMatrix();
    }
    
    if(movrx == 20){
      //Maximo
      noStroke();
    int movx = 2;
    int movy = 40;
    fill(0);
    rect(posx+(t*(6+movx)),posy+(t*(0+movy)),t*2,t);
    rect(posx+(t*(13+movx)),posy+(t*(0+movy)),t,t);
    rect(posx+(t*(26+movx)),posy+(t*(0+movy)),t*2,t);
    rect(posx+(t*(14+movx)),posy+(t*(1+movy)),t,t*2);
    rect(posx+(t*(7+movx)),posy+(t*(1+movy)),t,t*12);
    rect(posx+(t*(26+movx)),posy+(t*(1+movy)),t,t*12);
    rect(posx+(t*(5+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(28+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(29+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(31+movx)),posy+(t*(4+movy)),t,t*5);
    rect(posx+(t*(2+movx)),posy+(t*(4+movy)),t,t*5);
    rect(posx+(t*(3+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(10+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(11+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(29+movx)),posy+(t*(10+movy)),t,t);
    rect(posx+(t*(28+movx)),posy+(t*(11+movy)),t,t);
    rect(posx+(t*(27+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(27+movx)),posy+(t*(13+movy)),t,t*3);
    rect(posx+(t*(29+movx)),posy+(t*(11+movy)),t,t*5);
    rect(posx+(t*(6+movx)),posy+(t*(13+movy)),t,t*3);
    rect(posx+(t*(4+movx)),posy+(t*(11+movy)),t,t*5);
    rect(posx+(t*(5+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(28+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(27+movx)),posy+(t*(17+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(17+movy)),t*3,t);
    rect(posx+(t*(3+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(26+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(31+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(25+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(8+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(2+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(3+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(26+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(27+movx)),posy+(t*(24+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(24+movy)),t*3,t);
    rect(posx+(t*(27+movx)),posy+(t*(25+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(25+movy)),t*3,t);
    rect(posx+(t*(26+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(2+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(31+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(25+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(26+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(27+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(29+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(28+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(29+movy)),t*3,t);
    rect(posx+(t*(16+movx)),posy+(t*(26+movy)),t,t*3);
    rect(posx+(t*(14+movx)),posy+(t*(25+movy)),t*5,t);
    rect(posx+(t*(14+movx)),posy+(t*(21+movy)),t,t*4);
    rect(posx+(t*(18+movx)),posy+(t*(21+movy)),t,t*4);
    rect(posx+(t*(15+movx)),posy+(t*(21+movy)),t*3,t);
    rect(posx+(t*(16+movx)),posy+(t*(18+movy)),t,t*3);
    rect(posx+(t*(13+movx)),posy+(t*(17+movy)),t*8,t);
    rect(posx+(t*(12+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(15+movy)),t*12,t);
    rect(posx+(t*(11+movx)),posy+(t*(11+movy)),t,t*4);
    rect(posx+(t*(22+movx)),posy+(t*(11+movy)),t,t*4);
    rect(posx+(t*(10+movx)),posy+(t*(5+movy)),t,t*6);
    rect(posx+(t*(23+movx)),posy+(t*(5+movy)),t,t*6);
    rect(posx+(t*(11+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(22+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(3+movy)),t*4,t);
    rect(posx+(t*(24+movx)),posy+(t*(6+movy)),t*2,t*2);
    rect(posx+(t*(8+movx)),posy+(t*(6+movy)),t*2,t*2);
    rect(posx+(t*(24+movx)),posy+(t*(9+movy)),t*2,t);
    rect(posx+(t*(8+movx)),posy+(t*(9+movy)),t*2,t);
    //relleno blanco
    fill(255);
    rect(posx+(t*(12+movx)),posy+(t*(4+movy)),t*10,t*11);
    rect(posx+(t*(11+movx)),posy+(t*(5+movy)),t,t*6);
    rect(posx+(t*(22+movx)),posy+(t*(5+movy)),t,t*6);
    rect(posx+(t*(13+movx)),posy+(t*(16+movy)),t*8,t);
    rect(posx+(t*(15+movx)),posy+(t*(22+movy)),t*3,t*3);
    rect(posx+(t*(8+movx)),posy+(t*(8+movy)),t*2,t);
    rect(posx+(t*(24+movx)),posy+(t*(8+movy)),t*2,t);
    rect(posx+(t*(5+movx)),posy+(t*(12+movy)),t,t*4);
    rect(posx+(t*(28+movx)),posy+(t*(12+movy)),t,t*4);
    rect(posx+(t*(5+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(28+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(26+movy)),t,t*2);
    rect(posx+(t*(6+movx)),posy+(t*(26+movy)),t,t*2);
    rect(posx+(t*(27+movx)),posy+(t*(26+movy)),t,t*2);
    rect(posx+(t*(29+movx)),posy+(t*(26+movy)),t,t*2);
    rect(posx+(t*(3+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(7+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(26+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(30+movx)),posy+(t*(27+movy)),t,t*2);
    //relleno rojo
    fill(170,0,0);
    rect(posx+(t*(6+movx)),posy+(t*(1+movy)),t,t*11);
    rect(posx+(t*(5+movx)),posy+(t*(2+movy)),t,t*9);
    rect(posx+(t*(4+movx)),posy+(t*(3+movy)),t,t*7);
    rect(posx+(t*(3+movx)),posy+(t*(4+movy)),t,t*5);
    rect(posx+(t*(27+movx)),posy+(t*(1+movy)),t,t*11);
    rect(posx+(t*(28+movx)),posy+(t*(2+movy)),t,t*9);
    rect(posx+(t*(29+movx)),posy+(t*(3+movy)),t,t*7);
    rect(posx+(t*(30+movx)),posy+(t*(4+movy)),t,t*5);
    rect(posx+(t*(27+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(28+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(29+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(30+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(26+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(6+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(5+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(4+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(3+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(7+movx)),posy+(t*(19+movy)),t,t*4);
    //cara
    fill(0);
    rect(posx+(t*(16+movx)),posy+(t*(7+movy)),t*6,t);
    rect(posx+(t*(16+movx)),posy+(t*(2+movy)),t,t*5);
    rect(posx+(t*(21+movx)),posy+(t*(2+movy)),t,t*5);
    rect(posx+(t*(17+movx)),posy+(t*(2+movy)),t*4,t);
    fill(255);
    rect(posx+(t*(17+movx)),posy+(t*(3+movy)),t*4,t*4);
    fill(255,0,0);
    rect(posx+(t*(19+movx)),posy+(t*(4+movy)),t,t*2);
    }
    
    if(movrx == 40){
      //Carl
      int movx = 2;
    int movy = 40;
    noStroke();
    fill(0);
    rect(posx+(t*(1+movx)),posy+(t*(3+movy)),t*12,t);
    rect(posx+(t*(2+movx)),posy+(t*(4+movy)),t*10,t);
    rect(posx+(t*(3+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(6+movy)),t,t*3);
    rect(posx+(t*(2+movx)),posy+(t*(6+movy)),t,t*2);
    rect(posx+(t*(1+movx)),posy+(t*(8+movy)),t,t);
    //rostro
    fill(#FFE09D);
    rect(posx+(t*(4+movx)),posy+(t*(5+movy)),t*6,t*4);
    rect(posx+(t*(5+movx)),posy+(t*(9+movy)),t*4,t);
    rect(posx+(t*(6+movx)),posy+(t*(10+movy)),t*2,t);
    rect(posx+(t*(3+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(6+movy)),t,t);
    
    fill(0);
    rect(posx+(t*(5+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(8+movy)),t*2,t);
    rect(posx+(t*(5+movx)),posy+(t*(10+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(10+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(11+movy)),t*2,t*14);
    rect(posx+(t*(5+movx)),posy+(t*(14+movy)),t,t*11);
    rect(posx+(t*(8+movx)),posy+(t*(14+movy)),t,t*11);
    rect(posx+(t*(8+movx)),posy+(t*(25+movy)),t*2,t*5);
    rect(posx+(t*(4+movx)),posy+(t*(25+movy)),t*2,t*5);
    rect(posx+(t*(10+movx)),posy+(t*(28+movy)),t,t*2);
    rect(posx+(t*(3+movx)),posy+(t*(28+movy)),t,t*2);
    rect(posx+(t*(11+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(2+movx)),posy+(t*(29+movy)),t,t);
    //Capa
    fill(180,0,0);
    rect(posx+(t*(4+movx)),posy+(t*(10+movy)),t,t*15);
    rect(posx+(t*(9+movx)),posy+(t*(10+movy)),t,t*15);
    rect(posx+(t*(5+movx)),posy+(t*(11+movy)),t,t*3);
    rect(posx+(t*(8+movx)),posy+(t*(11+movy)),t,t*3);
    rect(posx+(t*(2+movx)),posy+(t*(11+movy)),t*2,t*15);
    rect(posx+(t*(10+movx)),posy+(t*(11+movy)),t*2,t*15);
    rect(posx+(t*(1+movx)),posy+(t*(12+movy)),t,t*13);
    rect(posx+(t*(12+movx)),posy+(t*(12+movy)),t,t*13);
    rect(posx+(t*(0+movx)),posy+(t*(15+movy)),t,t*7);
    rect(posx+(t*(13+movx)),posy+(t*(15+movy)),t,t*7);
    rect(posx+(t*(3+movx)),posy+(t*(0+movy)),t*8,t*2);
    fill(220,0,0);
    rect(posx+(t*(0+movx)),posy+(t*(2+movy)),t*14,t);
    }
    
    if(movrx == 60){
      //MCI
       int movx = 2;
    int movy = 40;
    noStroke();
    fill(0);
    rect(posx+(t*(9+movx)),posy+(t*(0+movy)),t*6,t);
    rect(posx+(t*(7+movx)),posy+(t*(1+movy)),t*2,t);
    rect(posx+(t*(15+movx)),posy+(t*(1+movy)),t*2,t);
    rect(posx+(t*(5+movx)),posy+(t*(2+movy)),t*2,t);
    rect(posx+(t*(17+movx)),posy+(t*(2+movy)),t*2,t);
    rect(posx+(t*(3+movx)),posy+(t*(3+movy)),t*2,t);
    rect(posx+(t*(19+movx)),posy+(t*(3+movy)),t*2,t);
    rect(posx+(t*(2+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(1+movx)),posy+(t*(5+movy)),t,t*2);
    rect(posx+(t*(22+movx)),posy+(t*(5+movy)),t,t*3);
    rect(posx+(t*(1+movx)),posy+(t*(5+movy)),t,t*2);
    rect(posx+(t*(22+movx)),posy+(t*(5+movy)),t,t*3);
    rect(posx+(t*(0+movx)),posy+(t*(7+movy)),t,t*12);
    rect(posx+(t*(23+movx)),posy+(t*(7+movy)),t,t*12);
    rect(posx+(t*(1+movx)),posy+(t*(19+movy)),t,t*2);
    rect(posx+(t*(22+movx)),posy+(t*(19+movy)),t,t*2);
    rect(posx+(t*(2+movx)),posy+(t*(21+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(21+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(22+movy)),t*2,t);
    rect(posx+(t*(19+movx)),posy+(t*(22+movy)),t*2,t);
    rect(posx+(t*(5+movx)),posy+(t*(23+movy)),t*2,t);
    rect(posx+(t*(17+movx)),posy+(t*(23+movy)),t*2,t);
    rect(posx+(t*(7+movx)),posy+(t*(24+movy)),t*2,t);
    rect(posx+(t*(15+movx)),posy+(t*(24+movy)),t*2,t);
    rect(posx+(t*(9+movx)),posy+(t*(25+movy)),t*6,t);
    rect(posx+(t*(8+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(9+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(14+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(28+movy)),t*4,t);
    //relleno
    fill(100);
    rect(posx+(t*(9+movx)),posy+(t*(1+movy)),t*6,t*24);
    rect(posx+(t*(7+movx)),posy+(t*(2+movy)),t*2,t*22);
    rect(posx+(t*(15+movx)),posy+(t*(2+movy)),t*2,t*22);
    rect(posx+(t*(5+movx)),posy+(t*(3+movy)),t*2,t*20);
    rect(posx+(t*(17+movx)),posy+(t*(3+movy)),t*2,t*20);
    rect(posx+(t*(3+movx)),posy+(t*(4+movy)),t*2,t*18);
    rect(posx+(t*(19+movx)),posy+(t*(4+movy)),t*2,t*18);
    rect(posx+(t*(2+movx)),posy+(t*(5+movy)),t,t*16);
    rect(posx+(t*(21+movx)),posy+(t*(5+movy)),t,t*16);
    rect(posx+(t*(1+movx)),posy+(t*(6+movy)),t,t*13);
    rect(posx+(t*(22+movx)),posy+(t*(7+movy)),t,t*12);
    //contorno ojo
    fill(0);
    rect(posx+(t*(22+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(7+movy)),t*2,t);
    rect(posx+(t*(18+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(17+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(16+movx)),posy+(t*(10+movy)),t,t*7);
    rect(posx+(t*(17+movx)),posy+(t*(17+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(19+movy)),t*2,t);
    rect(posx+(t*(21+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(22+movx)),posy+(t*(17+movy)),t,t);
    //ojo
    fill(255);
    rect(posx+(t*(19+movx)),posy+(t*(8+movy)),t*2,t*11);
    rect(posx+(t*(18+movx)),posy+(t*(9+movy)),t,t*9);
    rect(posx+(t*(17+movx)),posy+(t*(10+movy)),t,t*7);
    rect(posx+(t*(21+movx)),posy+(t*(9+movy)),t,t*9);
    rect(posx+(t*(22+movx)),posy+(t*(10+movy)),t,t*7);
    fill(#FEFF05);
    rect(posx+(t*(21+movx)),posy+(t*(12+movy)),t,t*3);
    rect(posx+(t*(20+movx)),posy+(t*(13+movy)),t,t);
    fill(#FFC505);
    rect(posx+(t*(19+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(20+movx)),posy+(t*(14+movy)),t,t);
    rect(posx+(t*(20+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(15+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(11+movy)),t,t);
    rect(posx+(t*(22+movx)),posy+(t*(12+movy)),t,t*3);
    //Nombre
    fill(0);
    rect(posx+(t*(3+movx)),posy+(t*(12+movy)),t,t*4);
    rect(posx+(t*(4+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(14+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(12+movy)),t,t*4);
    rect(posx+(t*(9+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(10+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(15+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(12+movy)),t*3,t);
    rect(posx+(t*(12+movx)),posy+(t*(15+movy)),t*3,t);
    rect(posx+(t*(13+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(12+movx)),posy+(t*(18+movy)),t*2,t);
    rect(posx+(t*(7+movx)),posy+(t*(18+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(18+movy)),t*2,t);
    //base
    fill(200);
    rect(posx+(t*(9+movx)),posy+(t*(26+movy)),t*6,t);
    rect(posx+(t*(10+movx)),posy+(t*(27+movy)),t*4,t);
    fill(50);
    rect(posx+(t*(8+movx)),posy+(t*(28+movy)),t*2,t);
    rect(posx+(t*(14+movx)),posy+(t*(28+movy)),t*2,t);
    rect(posx+(t*(8+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(25+movy)),t,t*4);
    rect(posx+(t*(16+movx)),posy+(t*(25+movy)),t,t*4);
    rect(posx+(t*(6+movx)),posy+(t*(26+movy)),t,t*3);
    rect(posx+(t*(17+movx)),posy+(t*(26+movy)),t,t*3);
    rect(posx+(t*(5+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(27+movy)),t,t);
    fill(150);
    rect(posx+(t*(6+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(17+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(29+movy)),t*12,t); 
    }
    
    if(movrx == 80){
      //ElDevorador
      int movx = 2;
    int movy = 40;
    noStroke();
    fill(255);
    rect(posx+(t*(9+movx)),posy+(t*(5+movy)),t*3,t*11);
    rect(posx+(t*(12+movx)),posy+(t*(6+movy)),t,t*11);
    rect(posx+(t*(13+movx)),posy+(t*(7+movy)),t,t*10);
    rect(posx+(t*(14+movx)),posy+(t*(8+movy)),t,t*7);
    rect(posx+(t*(8+movx)),posy+(t*(6+movy)),t,t*9);
    rect(posx+(t*(7+movx)),posy+(t*(7+movy)),t,t*6);
    rect(posx+(t*(6+movx)),posy+(t*(8+movy)),t,t*4);
    rect(posx+(t*(10+movx)),posy+(t*(16+movy)),t*2,t);
    fill(0);
    rect(posx+(t*(9+movx)),posy+(t*(4+movy)),t*3,t);
    rect(posx+(t*(8+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(14+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(8+movy)),t,t*5);
    rect(posx+(t*(5+movx)),posy+(t*(8+movy)),t,t*4);
    rect(posx+(t*(6+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(14+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(8+movx)),posy+(t*(15+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(15+movy)),t,t);
    rect(posx+(t*(9+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(14+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(17+movy)),t*5,t);
    rect(posx+(t*(12+movx)),posy+(t*(14+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(9+movx)),posy+(t*(11+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(11+movx)),posy+(t*(10+movy)),t*2,t);
    rect(posx+(t*(13+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(7+movy)),t,t);
    fill(255,0,0);
    rect(posx+(t*(12+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(0+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(1+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(1+movx)),posy+(t*(5+movy)),t,t*2);
    rect(posx+(t*(2+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(2+movx)),posy+(t*(7+movy)),t,t*4);
    rect(posx+(t*(3+movx)),posy+(t*(3+movy)),t,t*3);
    rect(posx+(t*(3+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(11+movy)),t,t*2);
    rect(posx+(t*(4+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(9+movy)),t,t*3);
    rect(posx+(t*(4+movx)),posy+(t*(13+movy)),t*3,t);
    rect(posx+(t*(5+movx)),posy+(t*(3+movy)),t,t*2);
    rect(posx+(t*(5+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(1+movy)),t*2,t);
    rect(posx+(t*(8+movx)),posy+(t*(2+movy)),t*2,t);
    rect(posx+(t*(9+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(2+movy)),t,t*3);
    rect(posx+(t*(14+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(16+movx)),posy+(t*(5+movy)),t,t*2);
    fill(#FFC505);
    rect(posx+(t*(3+movx)),posy+(t*(9+movy)),t,t*2);
    rect(posx+(t*(4+movx)),posy+(t*(3+movy)),t,t*3);
    rect(posx+(t*(5+movx)),posy+(t*(5+movy)),t,t*2);
    rect(posx+(t*(6+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(2+movy)),t,t*2);
    rect(posx+(t*(11+movx)),posy+(t*(3+movy)),t,t);
    fill(#FEFF0A);
    rect(posx+(t*(11+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(2+movx)),posy+(t*(3+movy)),t,t*4);
    rect(posx+(t*(1+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(6+movy)),t,t*2);
    rect(posx+(t*(4+movx)),posy+(t*(7+movy)),t,t*2);
    rect(posx+(t*(6+movx)),posy+(t*(3+movy)),t*3,t*2);
    rect(posx+(t*(7+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(14+movx)),posy+(t*(6+movy)),t*2,t);
    rect(posx+(t*(15+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(12+movy)),t*2,t);
    //Cuerpo
    fill(0);
    rect(posx+(t*(5+movx)),posy+(t*(16+movy)),t*4,t);
    rect(posx+(t*(15+movx)),posy+(t*(16+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(17+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(17+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(20+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(2+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(7+movx)),posy+(t*(19+movy)),t,t*5);
    rect(posx+(t*(15+movx)),posy+(t*(19+movy)),t,t*5);
    rect(posx+(t*(3+movx)),posy+(t*(20+movy)),t*4,t);
    rect(posx+(t*(16+movx)),posy+(t*(20+movy)),t*4,t);
    rect(posx+(t*(6+movx)),posy+(t*(21+movy)),t,t*2);
    rect(posx+(t*(16+movx)),posy+(t*(21+movy)),t,t*2);
    rect(posx+(t*(3+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(17+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(24+movy)),t,t);
    rect(posx+(t*(16+movx)),posy+(t*(24+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(17+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(26+movy)),t*7,t);
    rect(posx+(t*(12+movx)),posy+(t*(26+movy)),t*7,t);
    rect(posx+(t*(11+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(2+movx)),posy+(t*(27+movy)),t*2,t);
    rect(posx+(t*(19+movx)),posy+(t*(27+movy)),t*2,t);
    rect(posx+(t*(1+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(1+movx)),posy+(t*(29+movy)),t*9,t);
    rect(posx+(t*(13+movx)),posy+(t*(29+movy)),t*9,t);
    rect(posx+(t*(13+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(9+movx)),posy+(t*(27+movy)),t,t*2);
    //Relleno
    fill(120);
    rect(posx+(t*(5+movx)),posy+(t*(17+movy)),t*5,t);
    rect(posx+(t*(15+movx)),posy+(t*(17+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(18+movy)),t*15,t);
    rect(posx+(t*(3+movx)),posy+(t*(19+movy)),t*4,t);
    rect(posx+(t*(16+movx)),posy+(t*(19+movy)),t*4,t);
    rect(posx+(t*(8+movx)),posy+(t*(19+movy)),t*7,t*3);
    fill(180);
    rect(posx+(t*(8+movx)),posy+(t*(22+movy)),t*7,t);
    fill(255);
    rect(posx+(t*(3+movx)),posy+(t*(21+movy)),t*3,t);
    rect(posx+(t*(17+movx)),posy+(t*(21+movy)),t*3,t);
    rect(posx+(t*(3+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(17+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(22+movy)),t,t);
    fill(30);
    rect(posx+(t*(8+movx)),posy+(t*(23+movy)),t*7,t);
    rect(posx+(t*(7+movx)),posy+(t*(24+movy)),t*9,t);
    rect(posx+(t*(6+movx)),posy+(t*(25+movy)),t*5,t);
    rect(posx+(t*(12+movx)),posy+(t*(25+movy)),t*5,t);
    fill(#985803);
    rect(posx+(t*(4+movx)),posy+(t*(27+movy)),t*5,t);
    rect(posx+(t*(2+movx)),posy+(t*(28+movy)),t*7,t);
    rect(posx+(t*(14+movx)),posy+(t*(27+movy)),t*5,t);
    rect(posx+(t*(14+movx)),posy+(t*(28+movy)),t*7,t);
    }
    
  }
  
  void jugadores2(){
    if(movr2x == 0){
      //fantasma
      pushMatrix();
    //translate(width/2,height/2);
    //scale(-1,1);
    noStroke();
    int movx = 102;
    int movy = 40;
    fill(255);
    rect(posx+(t*(8+movx)),posy+(t*(6+movy)),t*11,t*12);
    fill(#A500E3);//morado
    rect(posx+(t*(11+movx)),posy+(t*(0+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(1+movy)),t*3,t*3);
    rect(posx+(t*(19+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(2+movy)),t*6,t*2);
    rect(posx+(t*(13+movx)),posy+(t*(3+movy)),t*2,t*3);
    rect(posx+(t*(15+movx)),posy+(t*(4+movy)),t*5,t*2);
    rect(posx+(t*(11+movx)),posy+(t*(4+movy)),t*2,t*2);
    rect(posx+(t*(6+movx)),posy+(t*(5+movy)),t*6,t);
    rect(posx+(t*(5+movx)),posy+(t*(4+movy)),t*4,t);
    rect(posx+(t*(6+movx)),posy+(t*(3+movy)),t*2,t);
    rect(posx+(t*(7+movx)),posy+(t*(6+movy)),t*3,t*2);
    rect(posx+(t*(4+movx)),posy+(t*(7+movy)),t*5,t*2);
    rect(posx+(t*(3+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(9+movy)),t*4,t*4);
    rect(posx+(t*(3+movx)),posy+(t*(11+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(13+movy)),t*3,t);
    rect(posx+(t*(5+movx)),posy+(t*(13+movy)),t*3,t);
    rect(posx+(t*(6+movx)),posy+(t*(14+movy)),t*2,t*6);
    rect(posx+(t*(5+movx)),posy+(t*(15+movy)),t,t*4);
    rect(posx+(t*(4+movx)),posy+(t*(17+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(18+movy)),t*15,t*3);
    rect(posx+(t*(8+movx)),posy+(t*(21+movy)),t*14,t*4);
    rect(posx+(t*(7+movx)),posy+(t*(23+movy)),t*3,t*3);
    rect(posx+(t*(6+movx)),posy+(t*(24+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(25+movy)),t*4,t*4);
    rect(posx+(t*(9+movx)),posy+(t*(27+movy)),t*2,t*3);
    rect(posx+(t*(8+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(25+movy)),t,t*3);
    rect(posx+(t*(16+movx)),posy+(t*(25+movy)),t*6,t*2);
    rect(posx+(t*(17+movx)),posy+(t*(27+movy)),t*7,t);
    rect(posx+(t*(22+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(20+movx)),posy+(t*(28+movy)),t*5,t);
    rect(posx+(t*(18+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(29+movy)),t*2,t);
    rect(posx+(t*(22+movx)),posy+(t*(19+movy)),t,t*3);
    rect(posx+(t*(23+movx)),posy+(t*(20+movy)),t,t);
    rect(posx+(t*(22+movx)),posy+(t*(11+movy)),t*2,t*5);
    rect(posx+(t*(24+movx)),posy+(t*(11+movy)),t,t*4);
    rect(posx+(t*(25+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(23+movx)),posy+(t*(10+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(12+movy)),t*3,t*5);
    rect(posx+(t*(21+movx)),posy+(t*(7+movy)),t,t*3);
    rect(posx+(t*(19+movx)),posy+(t*(6+movy)),t*2,t*6);
    rect(posx+(t*(17+movx)),posy+(t*(6+movy)),t*2,t*3);
    rect(posx+(t*(17+movx)),posy+(t*(16+movy)),t*4,t*2);
    rect(posx+(t*(8+movx)),posy+(t*(16+movy)),t,t*2);
    fill(0,0,110);
    rect(posx+(t*(10+movx)),posy+(t*(20+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(22+movy)),t,t*4);
    rect(posx+(t*(9+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(20+movx)),posy+(t*(19+movy)),t*2,t);
    rect(posx+(t*(16+movx)),posy+(t*(20+movy)),t*3,t*2);
    rect(posx+(t*(12+movx)),posy+(t*(26+movy)),t*2,t);
    rect(posx+(t*(14+movx)),posy+(t*(4+movy)),t*2,t*2);
    rect(posx+(t*(5+movx)),posy+(t*(8+movy)),t*2,t*2);
    rect(posx+(t*(18+movx)),posy+(t*(6+movy)),t*2,t*2);
    rect(posx+(t*(20+movx)),posy+(t*(21+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(20+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(25+movy)),t*2,t);
    rect(posx+(t*(12+movx)),posy+(t*(21+movy)),t*2,t*2);
    rect(posx+(t*(19+movx)),posy+(t*(24+movy)),t*2,t*2);
    rect(posx+(t*(19+movx)),posy+(t*(12+movy)),t*2,t*2);
    //Cabeza
    fill(0);
    rect(posx+(t*(10+movx)),posy+(t*(6+movy)),t*7,t);
    rect(posx+(t*(10+movx)),posy+(t*(7+movy)),t,t*2);
    rect(posx+(t*(16+movx)),posy+(t*(7+movy)),t,t*2);
    rect(posx+(t*(9+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(17+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(8+movx)),posy+(t*(9+movy)),t,t*7);
    rect(posx+(t*(18+movx)),posy+(t*(9+movy)),t,t*7);
    rect(posx+(t*(9+movx)),posy+(t*(15+movy)),t,t*3);
    rect(posx+(t*(16+movx)),posy+(t*(15+movy)),t,t*3);
    rect(posx+(t*(17+movx)),posy+(t*(14+movy)),t,t*3);
    rect(posx+(t*(10+movx)),posy+(t*(17+movy)),t*6,t);
    rect(posx+(t*(11+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(9+movx)),posy+(t*(12+movy)),t*2,t*2);
    rect(posx+(t*(14+movx)),posy+(t*(12+movy)),t*2,t*2);
    //Mano derecha
    fill(255);
    rect(posx+(t*(2+movx)),posy+(t*(20+movy)),t*2,t);
    rect(posx+(t*(3+movx)),posy+(t*(20+movy)),t,t*3);
    rect(posx+(t*(2+movx)),posy+(t*(22+movy)),t,t);
    fill(0);
    rect(posx+(t*(1+movx)),posy+(t*(20+movy)),t,t);
    rect(posx+(t*(2+movx)),posy+(t*(19+movy)),t*2,t);
    rect(posx+(t*(4+movx)),posy+(t*(20+movy)),t,t*3);
    rect(posx+(t*(2+movx)),posy+(t*(23+movy)),t*2,t);
    rect(posx+(t*(1+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(2+movx)),posy+(t*(21+movy)),t,t);
    //Mano izquierda
    fill(255);
    rect(posx+(t*(26+movx)),posy+(t*(17+movy)),t*2,t);
    rect(posx+(t*(27+movx)),posy+(t*(17+movy)),t,t*3);
    rect(posx+(t*(26+movx)),posy+(t*(19+movy)),t,t);
    fill(0);
    rect(posx+(t*(25+movx)),posy+(t*(17+movy)),t,t);
    rect(posx+(t*(26+movx)),posy+(t*(16+movy)),t*2,t);
    rect(posx+(t*(28+movx)),posy+(t*(17+movy)),t,t*3);
    rect(posx+(t*(26+movx)),posy+(t*(20+movy)),t*2,t);
    rect(posx+(t*(25+movx)),posy+(t*(19+movy)),t,t);
    rect(posx+(t*(26+movx)),posy+(t*(18+movy)),t,t);
    popMatrix();
    }
    
    if(movr2x == 20){
      //Maximo
      pushMatrix();
    //translate(width/2,height/2);
    scale(-1,1);
    noStroke();
    int movx = -133;
    int movy = 40;
    fill(0);
    rect(posx+(t*(6+movx)),posy+(t*(0+movy)),t*2,t);
    rect(posx+(t*(13+movx)),posy+(t*(0+movy)),t,t);
    rect(posx+(t*(26+movx)),posy+(t*(0+movy)),t*2,t);
    rect(posx+(t*(14+movx)),posy+(t*(1+movy)),t,t*2);
    rect(posx+(t*(7+movx)),posy+(t*(1+movy)),t,t*12);
    rect(posx+(t*(26+movx)),posy+(t*(1+movy)),t,t*12);
    rect(posx+(t*(5+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(28+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(29+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(31+movx)),posy+(t*(4+movy)),t,t*5);
    rect(posx+(t*(2+movx)),posy+(t*(4+movy)),t,t*5);
    rect(posx+(t*(3+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(10+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(11+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(29+movx)),posy+(t*(10+movy)),t,t);
    rect(posx+(t*(28+movx)),posy+(t*(11+movy)),t,t);
    rect(posx+(t*(27+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(27+movx)),posy+(t*(13+movy)),t,t*3);
    rect(posx+(t*(29+movx)),posy+(t*(11+movy)),t,t*5);
    rect(posx+(t*(6+movx)),posy+(t*(13+movy)),t,t*3);
    rect(posx+(t*(4+movx)),posy+(t*(11+movy)),t,t*5);
    rect(posx+(t*(5+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(28+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(27+movx)),posy+(t*(17+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(17+movy)),t*3,t);
    rect(posx+(t*(3+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(26+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(31+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(25+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(8+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(2+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(3+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(26+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(27+movx)),posy+(t*(24+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(24+movy)),t*3,t);
    rect(posx+(t*(27+movx)),posy+(t*(25+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(25+movy)),t*3,t);
    rect(posx+(t*(26+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(2+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(31+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(25+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(26+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(27+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(29+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(28+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(29+movy)),t*3,t);
    rect(posx+(t*(16+movx)),posy+(t*(26+movy)),t,t*3);
    rect(posx+(t*(14+movx)),posy+(t*(25+movy)),t*5,t);
    rect(posx+(t*(14+movx)),posy+(t*(21+movy)),t,t*4);
    rect(posx+(t*(18+movx)),posy+(t*(21+movy)),t,t*4);
    rect(posx+(t*(15+movx)),posy+(t*(21+movy)),t*3,t);
    rect(posx+(t*(16+movx)),posy+(t*(18+movy)),t,t*3);
    rect(posx+(t*(13+movx)),posy+(t*(17+movy)),t*8,t);
    rect(posx+(t*(12+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(15+movy)),t*12,t);
    rect(posx+(t*(11+movx)),posy+(t*(11+movy)),t,t*4);
    rect(posx+(t*(22+movx)),posy+(t*(11+movy)),t,t*4);
    rect(posx+(t*(10+movx)),posy+(t*(5+movy)),t,t*6);
    rect(posx+(t*(23+movx)),posy+(t*(5+movy)),t,t*6);
    rect(posx+(t*(11+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(22+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(3+movy)),t*4,t);
    rect(posx+(t*(24+movx)),posy+(t*(6+movy)),t*2,t*2);
    rect(posx+(t*(8+movx)),posy+(t*(6+movy)),t*2,t*2);
    rect(posx+(t*(24+movx)),posy+(t*(9+movy)),t*2,t);
    rect(posx+(t*(8+movx)),posy+(t*(9+movy)),t*2,t);
    //relleno blanco
    fill(255);
    rect(posx+(t*(12+movx)),posy+(t*(4+movy)),t*10,t*11);
    rect(posx+(t*(11+movx)),posy+(t*(5+movy)),t,t*6);
    rect(posx+(t*(22+movx)),posy+(t*(5+movy)),t,t*6);
    rect(posx+(t*(13+movx)),posy+(t*(16+movy)),t*8,t);
    rect(posx+(t*(15+movx)),posy+(t*(22+movy)),t*3,t*3);
    rect(posx+(t*(8+movx)),posy+(t*(8+movy)),t*2,t);
    rect(posx+(t*(24+movx)),posy+(t*(8+movy)),t*2,t);
    rect(posx+(t*(5+movx)),posy+(t*(12+movy)),t,t*4);
    rect(posx+(t*(28+movx)),posy+(t*(12+movy)),t,t*4);
    rect(posx+(t*(5+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(28+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(26+movy)),t,t*2);
    rect(posx+(t*(6+movx)),posy+(t*(26+movy)),t,t*2);
    rect(posx+(t*(27+movx)),posy+(t*(26+movy)),t,t*2);
    rect(posx+(t*(29+movx)),posy+(t*(26+movy)),t,t*2);
    rect(posx+(t*(3+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(7+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(26+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(30+movx)),posy+(t*(27+movy)),t,t*2);
    //relleno rojo
    fill(170,0,0);
    rect(posx+(t*(6+movx)),posy+(t*(1+movy)),t,t*11);
    rect(posx+(t*(5+movx)),posy+(t*(2+movy)),t,t*9);
    rect(posx+(t*(4+movx)),posy+(t*(3+movy)),t,t*7);
    rect(posx+(t*(3+movx)),posy+(t*(4+movy)),t,t*5);
    rect(posx+(t*(27+movx)),posy+(t*(1+movy)),t,t*11);
    rect(posx+(t*(28+movx)),posy+(t*(2+movy)),t,t*9);
    rect(posx+(t*(29+movx)),posy+(t*(3+movy)),t,t*7);
    rect(posx+(t*(30+movx)),posy+(t*(4+movy)),t,t*5);
    rect(posx+(t*(27+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(28+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(29+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(30+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(26+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(6+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(5+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(4+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(3+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(7+movx)),posy+(t*(19+movy)),t,t*4);
    //cara
    fill(0);
    rect(posx+(t*(16+movx)),posy+(t*(7+movy)),t*6,t);
    rect(posx+(t*(16+movx)),posy+(t*(2+movy)),t,t*5);
    rect(posx+(t*(21+movx)),posy+(t*(2+movy)),t,t*5);
    rect(posx+(t*(17+movx)),posy+(t*(2+movy)),t*4,t);
    fill(255);
    rect(posx+(t*(17+movx)),posy+(t*(3+movy)),t*4,t*4);
    fill(255,0,0);
    rect(posx+(t*(19+movx)),posy+(t*(4+movy)),t,t*2);
    popMatrix();
    }
    
    if(movr2x == 40){
      //Carl
      pushMatrix();
    //translate(width/2,height/2);
    scale(-1,1);
    int movx = -125;
    int movy = 40;
    noStroke();
    fill(0);
    rect(posx+(t*(1+movx)),posy+(t*(3+movy)),t*12,t);
    rect(posx+(t*(2+movx)),posy+(t*(4+movy)),t*10,t);
    rect(posx+(t*(3+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(6+movy)),t,t*3);
    rect(posx+(t*(2+movx)),posy+(t*(6+movy)),t,t*2);
    rect(posx+(t*(1+movx)),posy+(t*(8+movy)),t,t);
    //rostro
    fill(#FFE09D);
    rect(posx+(t*(4+movx)),posy+(t*(5+movy)),t*6,t*4);
    rect(posx+(t*(5+movx)),posy+(t*(9+movy)),t*4,t);
    rect(posx+(t*(6+movx)),posy+(t*(10+movy)),t*2,t);
    rect(posx+(t*(3+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(6+movy)),t,t);
    
    fill(0);
    rect(posx+(t*(5+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(8+movy)),t*2,t);
    rect(posx+(t*(5+movx)),posy+(t*(10+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(10+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(11+movy)),t*2,t*14);
    rect(posx+(t*(5+movx)),posy+(t*(14+movy)),t,t*11);
    rect(posx+(t*(8+movx)),posy+(t*(14+movy)),t,t*11);
    rect(posx+(t*(8+movx)),posy+(t*(25+movy)),t*2,t*5);
    rect(posx+(t*(4+movx)),posy+(t*(25+movy)),t*2,t*5);
    rect(posx+(t*(10+movx)),posy+(t*(28+movy)),t,t*2);
    rect(posx+(t*(3+movx)),posy+(t*(28+movy)),t,t*2);
    rect(posx+(t*(11+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(2+movx)),posy+(t*(29+movy)),t,t);
    //Capa
    fill(180,0,0);
    rect(posx+(t*(4+movx)),posy+(t*(10+movy)),t,t*15);
    rect(posx+(t*(9+movx)),posy+(t*(10+movy)),t,t*15);
    rect(posx+(t*(5+movx)),posy+(t*(11+movy)),t,t*3);
    rect(posx+(t*(8+movx)),posy+(t*(11+movy)),t,t*3);
    rect(posx+(t*(2+movx)),posy+(t*(11+movy)),t*2,t*15);
    rect(posx+(t*(10+movx)),posy+(t*(11+movy)),t*2,t*15);
    rect(posx+(t*(1+movx)),posy+(t*(12+movy)),t,t*13);
    rect(posx+(t*(12+movx)),posy+(t*(12+movy)),t,t*13);
    rect(posx+(t*(0+movx)),posy+(t*(15+movy)),t,t*7);
    rect(posx+(t*(13+movx)),posy+(t*(15+movy)),t,t*7);
    rect(posx+(t*(3+movx)),posy+(t*(0+movy)),t*8,t*2);
    fill(220,0,0);
    rect(posx+(t*(0+movx)),posy+(t*(2+movy)),t*14,t);
    popMatrix();
    }
    
    if(movr2x == 60){
      //MCI
      pushMatrix();
    //translate(width/2,height/2);
    scale(-1,1);
    int movx = -133;
    int movy = 40;
    noStroke();
    fill(0);
    rect(posx+(t*(9+movx)),posy+(t*(0+movy)),t*6,t);
    rect(posx+(t*(7+movx)),posy+(t*(1+movy)),t*2,t);
    rect(posx+(t*(15+movx)),posy+(t*(1+movy)),t*2,t);
    rect(posx+(t*(5+movx)),posy+(t*(2+movy)),t*2,t);
    rect(posx+(t*(17+movx)),posy+(t*(2+movy)),t*2,t);
    rect(posx+(t*(3+movx)),posy+(t*(3+movy)),t*2,t);
    rect(posx+(t*(19+movx)),posy+(t*(3+movy)),t*2,t);
    rect(posx+(t*(2+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(1+movx)),posy+(t*(5+movy)),t,t*2);
    rect(posx+(t*(22+movx)),posy+(t*(5+movy)),t,t*3);
    rect(posx+(t*(1+movx)),posy+(t*(5+movy)),t,t*2);
    rect(posx+(t*(22+movx)),posy+(t*(5+movy)),t,t*3);
    rect(posx+(t*(0+movx)),posy+(t*(7+movy)),t,t*12);
    rect(posx+(t*(23+movx)),posy+(t*(7+movy)),t,t*12);
    rect(posx+(t*(1+movx)),posy+(t*(19+movy)),t,t*2);
    rect(posx+(t*(22+movx)),posy+(t*(19+movy)),t,t*2);
    rect(posx+(t*(2+movx)),posy+(t*(21+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(21+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(22+movy)),t*2,t);
    rect(posx+(t*(19+movx)),posy+(t*(22+movy)),t*2,t);
    rect(posx+(t*(5+movx)),posy+(t*(23+movy)),t*2,t);
    rect(posx+(t*(17+movx)),posy+(t*(23+movy)),t*2,t);
    rect(posx+(t*(7+movx)),posy+(t*(24+movy)),t*2,t);
    rect(posx+(t*(15+movx)),posy+(t*(24+movy)),t*2,t);
    rect(posx+(t*(9+movx)),posy+(t*(25+movy)),t*6,t);
    rect(posx+(t*(8+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(9+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(14+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(28+movy)),t*4,t);
    //relleno
    fill(100);
    rect(posx+(t*(9+movx)),posy+(t*(1+movy)),t*6,t*24);
    rect(posx+(t*(7+movx)),posy+(t*(2+movy)),t*2,t*22);
    rect(posx+(t*(15+movx)),posy+(t*(2+movy)),t*2,t*22);
    rect(posx+(t*(5+movx)),posy+(t*(3+movy)),t*2,t*20);
    rect(posx+(t*(17+movx)),posy+(t*(3+movy)),t*2,t*20);
    rect(posx+(t*(3+movx)),posy+(t*(4+movy)),t*2,t*18);
    rect(posx+(t*(19+movx)),posy+(t*(4+movy)),t*2,t*18);
    rect(posx+(t*(2+movx)),posy+(t*(5+movy)),t,t*16);
    rect(posx+(t*(21+movx)),posy+(t*(5+movy)),t,t*16);
    rect(posx+(t*(1+movx)),posy+(t*(6+movy)),t,t*13);
    rect(posx+(t*(22+movx)),posy+(t*(7+movy)),t,t*12);
    //contorno ojo
    fill(0);
    rect(posx+(t*(22+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(7+movy)),t*2,t);
    rect(posx+(t*(18+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(17+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(16+movx)),posy+(t*(10+movy)),t,t*7);
    rect(posx+(t*(17+movx)),posy+(t*(17+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(19+movy)),t*2,t);
    rect(posx+(t*(21+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(22+movx)),posy+(t*(17+movy)),t,t);
    //ojo
    fill(255);
    rect(posx+(t*(19+movx)),posy+(t*(8+movy)),t*2,t*11);
    rect(posx+(t*(18+movx)),posy+(t*(9+movy)),t,t*9);
    rect(posx+(t*(17+movx)),posy+(t*(10+movy)),t,t*7);
    rect(posx+(t*(21+movx)),posy+(t*(9+movy)),t,t*9);
    rect(posx+(t*(22+movx)),posy+(t*(10+movy)),t,t*7);
    fill(#FEFF05);
    rect(posx+(t*(21+movx)),posy+(t*(12+movy)),t,t*3);
    rect(posx+(t*(20+movx)),posy+(t*(13+movy)),t,t);
    fill(#FFC505);
    rect(posx+(t*(19+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(20+movx)),posy+(t*(14+movy)),t,t);
    rect(posx+(t*(20+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(15+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(11+movy)),t,t);
    rect(posx+(t*(22+movx)),posy+(t*(12+movy)),t,t*3);
    //Nombre
    fill(0);
    rect(posx+(t*(3+movx)),posy+(t*(12+movy)),t,t*4);
    rect(posx+(t*(4+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(14+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(12+movy)),t,t*4);
    rect(posx+(t*(9+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(10+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(15+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(12+movy)),t*3,t);
    rect(posx+(t*(12+movx)),posy+(t*(15+movy)),t*3,t);
    rect(posx+(t*(13+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(12+movx)),posy+(t*(18+movy)),t*2,t);
    rect(posx+(t*(7+movx)),posy+(t*(18+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(18+movy)),t*2,t);
    //base
    fill(200);
    rect(posx+(t*(9+movx)),posy+(t*(26+movy)),t*6,t);
    rect(posx+(t*(10+movx)),posy+(t*(27+movy)),t*4,t);
    fill(50);
    rect(posx+(t*(8+movx)),posy+(t*(28+movy)),t*2,t);
    rect(posx+(t*(14+movx)),posy+(t*(28+movy)),t*2,t);
    rect(posx+(t*(8+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(25+movy)),t,t*4);
    rect(posx+(t*(16+movx)),posy+(t*(25+movy)),t,t*4);
    rect(posx+(t*(6+movx)),posy+(t*(26+movy)),t,t*3);
    rect(posx+(t*(17+movx)),posy+(t*(26+movy)),t,t*3);
    rect(posx+(t*(5+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(27+movy)),t,t);
    fill(150);
    rect(posx+(t*(6+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(17+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(29+movy)),t*12,t);
    popMatrix();
    }
    
    if(movr2x == 80){
      //ElDevorador
      pushMatrix();
    //translate(width/2,height/2);
    scale(-1,1);
    int movx = -125;
    int movy = 40;
    noStroke();
    fill(255);
    rect(posx+(t*(9+movx)),posy+(t*(5+movy)),t*3,t*11);
    rect(posx+(t*(12+movx)),posy+(t*(6+movy)),t,t*11);
    rect(posx+(t*(13+movx)),posy+(t*(7+movy)),t,t*10);
    rect(posx+(t*(14+movx)),posy+(t*(8+movy)),t,t*7);
    rect(posx+(t*(8+movx)),posy+(t*(6+movy)),t,t*9);
    rect(posx+(t*(7+movx)),posy+(t*(7+movy)),t,t*6);
    rect(posx+(t*(6+movx)),posy+(t*(8+movy)),t,t*4);
    rect(posx+(t*(10+movx)),posy+(t*(16+movy)),t*2,t);
    fill(0);
    rect(posx+(t*(9+movx)),posy+(t*(4+movy)),t*3,t);
    rect(posx+(t*(8+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(14+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(8+movy)),t,t*5);
    rect(posx+(t*(5+movx)),posy+(t*(8+movy)),t,t*4);
    rect(posx+(t*(6+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(14+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(8+movx)),posy+(t*(15+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(15+movy)),t,t);
    rect(posx+(t*(9+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(14+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(17+movy)),t*5,t);
    rect(posx+(t*(12+movx)),posy+(t*(14+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(9+movx)),posy+(t*(11+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(11+movx)),posy+(t*(10+movy)),t*2,t);
    rect(posx+(t*(13+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(7+movy)),t,t);
    fill(255,0,0);
    rect(posx+(t*(12+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(0+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(1+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(1+movx)),posy+(t*(5+movy)),t,t*2);
    rect(posx+(t*(2+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(2+movx)),posy+(t*(7+movy)),t,t*4);
    rect(posx+(t*(3+movx)),posy+(t*(3+movy)),t,t*3);
    rect(posx+(t*(3+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(11+movy)),t,t*2);
    rect(posx+(t*(4+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(9+movy)),t,t*3);
    rect(posx+(t*(4+movx)),posy+(t*(13+movy)),t*3,t);
    rect(posx+(t*(5+movx)),posy+(t*(3+movy)),t,t*2);
    rect(posx+(t*(5+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(1+movy)),t*2,t);
    rect(posx+(t*(8+movx)),posy+(t*(2+movy)),t*2,t);
    rect(posx+(t*(9+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(2+movy)),t,t*3);
    rect(posx+(t*(14+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(16+movx)),posy+(t*(5+movy)),t,t*2);
    fill(#FFC505);
    rect(posx+(t*(3+movx)),posy+(t*(9+movy)),t,t*2);
    rect(posx+(t*(4+movx)),posy+(t*(3+movy)),t,t*3);
    rect(posx+(t*(5+movx)),posy+(t*(5+movy)),t,t*2);
    rect(posx+(t*(6+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(2+movy)),t,t*2);
    rect(posx+(t*(11+movx)),posy+(t*(3+movy)),t,t);
    fill(#FEFF0A);
    rect(posx+(t*(11+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(2+movx)),posy+(t*(3+movy)),t,t*4);
    rect(posx+(t*(1+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(6+movy)),t,t*2);
    rect(posx+(t*(4+movx)),posy+(t*(7+movy)),t,t*2);
    rect(posx+(t*(6+movx)),posy+(t*(3+movy)),t*3,t*2);
    rect(posx+(t*(7+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(14+movx)),posy+(t*(6+movy)),t*2,t);
    rect(posx+(t*(15+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(12+movy)),t*2,t);
    //Cuerpo
    fill(0);
    rect(posx+(t*(5+movx)),posy+(t*(16+movy)),t*4,t);
    rect(posx+(t*(15+movx)),posy+(t*(16+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(17+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(17+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(20+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(2+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(7+movx)),posy+(t*(19+movy)),t,t*5);
    rect(posx+(t*(15+movx)),posy+(t*(19+movy)),t,t*5);
    rect(posx+(t*(3+movx)),posy+(t*(20+movy)),t*4,t);
    rect(posx+(t*(16+movx)),posy+(t*(20+movy)),t*4,t);
    rect(posx+(t*(6+movx)),posy+(t*(21+movy)),t,t*2);
    rect(posx+(t*(16+movx)),posy+(t*(21+movy)),t,t*2);
    rect(posx+(t*(3+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(17+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(24+movy)),t,t);
    rect(posx+(t*(16+movx)),posy+(t*(24+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(17+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(26+movy)),t*7,t);
    rect(posx+(t*(12+movx)),posy+(t*(26+movy)),t*7,t);
    rect(posx+(t*(11+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(2+movx)),posy+(t*(27+movy)),t*2,t);
    rect(posx+(t*(19+movx)),posy+(t*(27+movy)),t*2,t);
    rect(posx+(t*(1+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(1+movx)),posy+(t*(29+movy)),t*9,t);
    rect(posx+(t*(13+movx)),posy+(t*(29+movy)),t*9,t);
    rect(posx+(t*(13+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(9+movx)),posy+(t*(27+movy)),t,t*2);
    //Relleno
    fill(120);
    rect(posx+(t*(5+movx)),posy+(t*(17+movy)),t*5,t);
    rect(posx+(t*(15+movx)),posy+(t*(17+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(18+movy)),t*15,t);
    rect(posx+(t*(3+movx)),posy+(t*(19+movy)),t*4,t);
    rect(posx+(t*(16+movx)),posy+(t*(19+movy)),t*4,t);
    rect(posx+(t*(8+movx)),posy+(t*(19+movy)),t*7,t*3);
    fill(180);
    rect(posx+(t*(8+movx)),posy+(t*(22+movy)),t*7,t);
    fill(255);
    rect(posx+(t*(3+movx)),posy+(t*(21+movy)),t*3,t);
    rect(posx+(t*(17+movx)),posy+(t*(21+movy)),t*3,t);
    rect(posx+(t*(3+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(17+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(22+movy)),t,t);
    fill(30);
    rect(posx+(t*(8+movx)),posy+(t*(23+movy)),t*7,t);
    rect(posx+(t*(7+movx)),posy+(t*(24+movy)),t*9,t);
    rect(posx+(t*(6+movx)),posy+(t*(25+movy)),t*5,t);
    rect(posx+(t*(12+movx)),posy+(t*(25+movy)),t*5,t);
    fill(#985803);
    rect(posx+(t*(4+movx)),posy+(t*(27+movy)),t*5,t);
    rect(posx+(t*(2+movx)),posy+(t*(28+movy)),t*7,t);
    rect(posx+(t*(14+movx)),posy+(t*(27+movy)),t*5,t);
    rect(posx+(t*(14+movx)),posy+(t*(28+movy)),t*7,t);
    popMatrix();
    }
  }
  
  void HP1(){
    if(movrx == 0){
      //fantasma
      int movx = 0;
      int movy = 66;
      fill(255);
      rect(posx+(t*(3+movx)),posy+(t*(5+movy)),212,32,90,90,90,90);
      fill(200,0,0);
      rect(posx+(t*(4+movx)),posy+(t*(6+movy)),200,20,90,90,90,90);
      fill(#1CFF00);
      rect(posx+(t*(4+movx)),posy+(t*(6+movy)),HPF,20,90,90,90,90);
    }
    if(movrx == 20){
      //Maximo
      int movx = 0;
      int movy = 66;
      fill(255);
      rect(posx+(t*(3+movx)),posy+(t*(5+movy)),292,32,90,90,90,90);
      fill(200,0,0);
      rect(posx+(t*(4+movx)),posy+(t*(6+movy)),280,20,90,90,90,90);
      fill(#1CFF00);
      rect(posx+(t*(4+movx)),posy+(t*(6+movy)),HPMX,20,90,90,90,90);
    }
    if(movrx == 40){
      //Carl
      int movx = 0;
      int movy = 66;
      fill(255);
      rect(posx+(t*(3+movx)),posy+(t*(5+movy)),162,32,90,90,90,90);
      fill(200,0,0);
      rect(posx+(t*(4+movx)),posy+(t*(6+movy)),150,20,90,90,90,90);
      fill(#1CFF00);
      rect(posx+(t*(4+movx)),posy+(t*(6+movy)),HPC,20,90,90,90,90);
    }
    if(movrx == 60){
      //MCI
      int movx = 0;
      int movy = 66;
      fill(255);
      rect(posx+(t*(3+movx)),posy+(t*(5+movy)),302,32,90,90,90,90);
      fill(200,0,0);
      rect(posx+(t*(4+movx)),posy+(t*(6+movy)),290,20,90,90,90,90);
      fill(#1CFF00);
      rect(posx+(t*(4+movx)),posy+(t*(6+movy)),HPM,20,90,90,90,90);
    }
    if(movrx == 80){
      //ElDevorador
      int movx = 0;
      int movy = 66;
      fill(255);
      rect(posx+(t*(3+movx)),posy+(t*(5+movy)),262,32,90,90,90,90);
      fill(200,0,0);
      rect(posx+(t*(4+movx)),posy+(t*(6+movy)),250,20,90,90,90,90);
      fill(#1CFF00);
      rect(posx+(t*(4+movx)),posy+(t*(6+movy)),HPE,20,90,90,90,90);
    }
  }
  
  void HP2(){
    if(movr2x == 0){
      //fantasma
      pushMatrix();
      scale(-1,1);
      int movx = -135;
      int movy = 66;
      fill(255);
      rect(posx+(t*(3+movx)),posy+(t*(5+movy)),212,32,90,90,90,90);
      fill(200,0,0);
      rect(posx+(t*(4+movx)),posy+(t*(6+movy)),200,20,90,90,90,90);
      fill(#1CFF00);
      rect(posx+(t*(4+movx)),posy+(t*(6+movy)),HPF2,20,90,90,90,90);
      popMatrix();
    }
    if(movr2x == 20){
      //Maximo
      pushMatrix();
      scale(-1,1);
      int movx = -135;
      int movy = 66;
      fill(255);
      rect(posx+(t*(3+movx)),posy+(t*(5+movy)),292,32,90,90,90,90);
      fill(200,0,0);
      rect(posx+(t*(4+movx)),posy+(t*(6+movy)),280,20,90,90,90,90);
      fill(#1CFF00);
      rect(posx+(t*(4+movx)),posy+(t*(6+movy)),HPMX2,20,90,90,90,90);
      popMatrix();
    }
    if(movr2x == 40){
      //Carl
      pushMatrix();
      scale(-1,1);
      int movx = -135;
      int movy = 66;
      fill(255);
      rect(posx+(t*(3+movx)),posy+(t*(5+movy)),162,32,90,90,90,90);
      fill(200,0,0);
      rect(posx+(t*(4+movx)),posy+(t*(6+movy)),150,20,90,90,90,90);
      fill(#1CFF00);
      rect(posx+(t*(4+movx)),posy+(t*(6+movy)),HPC2,20,90,90,90,90);
      popMatrix();
    }
    if(movr2x == 60){
      //MCI
      pushMatrix();
      scale(-1,1);
      int movx = -135;
      int movy = 66;
      fill(255);
      rect(posx+(t*(3+movx)),posy+(t*(5+movy)),302,32,90,90,90,90);
      fill(200,0,0);
      rect(posx+(t*(4+movx)),posy+(t*(6+movy)),290,20,90,90,90,90);
      fill(#1CFF00);
      rect(posx+(t*(4+movx)),posy+(t*(6+movy)),HPM2,20,90,90,90,90);
      popMatrix();
    }
    if(movr2x == 80){
      //ElDevorador
      pushMatrix();
      scale(-1,1);
      int movx = -135;
      int movy = 66;
      fill(255);
      rect(posx+(t*(3+movx)),posy+(t*(5+movy)),262,32,90,90,90,90);
      fill(200,0,0);
      rect(posx+(t*(4+movx)),posy+(t*(6+movy)),250,20,90,90,90,90);
      fill(#1CFF00);
      rect(posx+(t*(4+movx)),posy+(t*(6+movy)),HPE2,20,90,90,90,90);
      popMatrix();
    }
  }
}

class seleccion1{
  
  void Fantasma(){
    int movx = 0;
    int movy = 0;
    noStroke();
    fill(255);
    rect(posx+(t*(11+movx)),posy+(t*(7+movy)),t*5,t*10);
    rect(posx+(t*(10+movx)),posy+(t*(9+movy)),t,t*8);
    rect(posx+(t*(9+movx)),posy+(t*(10+movy)),t,t*5);
    rect(posx+(t*(16+movx)),posy+(t*(9+movy)),t,t*6);
    rect(posx+(t*(17+movx)),posy+(t*(10+movy)),t,t*4);
    fill(0);
    rect(posx+(t*(10+movx)),posy+(t*(6+movy)),t*7,t);
    rect(posx+(t*(10+movx)),posy+(t*(7+movy)),t,t*2);
    rect(posx+(t*(16+movx)),posy+(t*(7+movy)),t,t*2);
    rect(posx+(t*(9+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(17+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(8+movx)),posy+(t*(9+movy)),t,t*7);
    rect(posx+(t*(18+movx)),posy+(t*(9+movy)),t,t*7);
    rect(posx+(t*(9+movx)),posy+(t*(15+movy)),t,t*3);
    rect(posx+(t*(16+movx)),posy+(t*(15+movy)),t,t*3);
    rect(posx+(t*(17+movx)),posy+(t*(14+movy)),t,t*3);
    rect(posx+(t*(10+movx)),posy+(t*(17+movy)),t*6,t);
    rect(posx+(t*(11+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(9+movx)),posy+(t*(12+movy)),t*2,t*2);
    rect(posx+(t*(14+movx)),posy+(t*(12+movy)),t*2,t*2); 
  }
  
  void Maximo(){
    pushMatrix();
    scale(2,2);
    noStroke();
    float movx = -2.3;
    int movy = 1;
    fill(0);
    rect(posx+(t*(16+movx)),posy+(t*(7+movy)),t*6,t);
    rect(posx+(t*(16+movx)),posy+(t*(2+movy)),t,t*5);
    rect(posx+(t*(21+movx)),posy+(t*(2+movy)),t,t*5);
    rect(posx+(t*(17+movx)),posy+(t*(2+movy)),t*4,t);
    fill(255);
    rect(posx+(t*(17+movx)),posy+(t*(3+movy)),t*4,t*4);
    fill(255,0,0);
    rect(posx+(t*(19+movx)),posy+(t*(4+movy)),t,t*2);
    popMatrix();
  }
  
  void Carl(){
    pushMatrix();
    scale(1.2,1.2);
    noStroke();
    float movx = 37.5;
    float movy = 3.5;
    fill(0);
    rect(posx+(t*(1+movx)),posy+(t*(3+movy)),t*12,t);
    rect(posx+(t*(2+movx)),posy+(t*(4+movy)),t*10,t);
    rect(posx+(t*(3+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(6+movy)),t,t*3);
    rect(posx+(t*(2+movx)),posy+(t*(6+movy)),t,t*2);
    rect(posx+(t*(1+movx)),posy+(t*(8+movy)),t,t);
    fill(#FFE09D);
    rect(posx+(t*(4+movx)),posy+(t*(5+movy)),t*6,t*4);
    rect(posx+(t*(5+movx)),posy+(t*(9+movy)),t*4,t);
    rect(posx+(t*(6+movx)),posy+(t*(10+movy)),t*2,t);
    rect(posx+(t*(3+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(6+movy)),t,t);
    fill(0);
    rect(posx+(t*(5+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(8+movy)),t*2,t);
    popMatrix();
  }
  
  void MCI(){
    pushMatrix();
    scale(1,1);
    float movx = 64.5;
    int movy = -3;
    noStroke();
    fill(0);
    rect(posx+(t*(3+movx)),posy+(t*(12+movy)),t,t*4);
    rect(posx+(t*(4+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(14+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(12+movy)),t,t*4);
    rect(posx+(t*(9+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(10+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(15+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(12+movy)),t*3,t);
    rect(posx+(t*(12+movx)),posy+(t*(15+movy)),t*3,t);
    rect(posx+(t*(13+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(12+movx)),posy+(t*(18+movy)),t*2,t);
    rect(posx+(t*(7+movx)),posy+(t*(18+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(18+movy)),t*2,t);
    popMatrix();
  }
  
  void ElDevorador(){
    int movx = 85;
    int movy = 3;
    noStroke();
    fill(255);
    rect(posx+(t*(9+movx)),posy+(t*(5+movy)),t*3,t*11);
    rect(posx+(t*(12+movx)),posy+(t*(6+movy)),t,t*11);
    rect(posx+(t*(13+movx)),posy+(t*(7+movy)),t,t*10);
    rect(posx+(t*(14+movx)),posy+(t*(8+movy)),t,t*7);
    rect(posx+(t*(8+movx)),posy+(t*(6+movy)),t,t*9);
    rect(posx+(t*(7+movx)),posy+(t*(7+movy)),t,t*6);
    rect(posx+(t*(6+movx)),posy+(t*(8+movy)),t,t*4);
    rect(posx+(t*(10+movx)),posy+(t*(16+movy)),t*2,t);
    fill(0);
    rect(posx+(t*(9+movx)),posy+(t*(4+movy)),t*3,t);
    rect(posx+(t*(8+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(14+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(8+movy)),t,t*5);
    rect(posx+(t*(5+movx)),posy+(t*(8+movy)),t,t*4);
    rect(posx+(t*(6+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(14+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(8+movx)),posy+(t*(15+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(15+movy)),t,t);
    rect(posx+(t*(9+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(14+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(17+movy)),t*5,t);
    rect(posx+(t*(12+movx)),posy+(t*(14+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(9+movx)),posy+(t*(11+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(11+movx)),posy+(t*(10+movy)),t*2,t);
    rect(posx+(t*(13+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(7+movy)),t,t);
    fill(255,0,0);
    rect(posx+(t*(12+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(0+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(1+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(1+movx)),posy+(t*(5+movy)),t,t*2);
    rect(posx+(t*(2+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(2+movx)),posy+(t*(7+movy)),t,t*4);
    rect(posx+(t*(3+movx)),posy+(t*(3+movy)),t,t*3);
    rect(posx+(t*(3+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(11+movy)),t,t*2);
    rect(posx+(t*(4+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(9+movy)),t,t*3);
    rect(posx+(t*(4+movx)),posy+(t*(13+movy)),t*3,t);
    rect(posx+(t*(5+movx)),posy+(t*(3+movy)),t,t*2);
    rect(posx+(t*(5+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(1+movy)),t*2,t);
    rect(posx+(t*(8+movx)),posy+(t*(2+movy)),t*2,t);
    rect(posx+(t*(9+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(2+movy)),t,t*3);
    rect(posx+(t*(14+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(16+movx)),posy+(t*(5+movy)),t,t*2);
    fill(#FFC505);
    rect(posx+(t*(3+movx)),posy+(t*(9+movy)),t,t*2);
    rect(posx+(t*(4+movx)),posy+(t*(3+movy)),t,t*3);
    rect(posx+(t*(5+movx)),posy+(t*(5+movy)),t,t*2);
    rect(posx+(t*(6+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(2+movy)),t,t*2);
    rect(posx+(t*(11+movx)),posy+(t*(3+movy)),t,t);
    fill(#FEFF0A);
    rect(posx+(t*(11+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(2+movx)),posy+(t*(3+movy)),t,t*4);
    rect(posx+(t*(1+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(6+movy)),t,t*2);
    rect(posx+(t*(4+movx)),posy+(t*(7+movy)),t,t*2);
    rect(posx+(t*(6+movx)),posy+(t*(3+movy)),t*3,t*2);
    rect(posx+(t*(7+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(14+movx)),posy+(t*(6+movy)),t*2,t);
    rect(posx+(t*(15+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(12+movy)),t*2,t);
  }
  
}

class seleccion2{
  void Fantasma(){
    int movx = 0;
    int movy = 53;
    noStroke();
    fill(255);
    rect(posx+(t*(11+movx)),posy+(t*(7+movy)),t*5,t*10);
    rect(posx+(t*(10+movx)),posy+(t*(9+movy)),t,t*8);
    rect(posx+(t*(9+movx)),posy+(t*(10+movy)),t,t*5);
    rect(posx+(t*(16+movx)),posy+(t*(9+movy)),t,t*6);
    rect(posx+(t*(17+movx)),posy+(t*(10+movy)),t,t*4);
    fill(0);
    rect(posx+(t*(10+movx)),posy+(t*(6+movy)),t*7,t);
    rect(posx+(t*(10+movx)),posy+(t*(7+movy)),t,t*2);
    rect(posx+(t*(16+movx)),posy+(t*(7+movy)),t,t*2);
    rect(posx+(t*(9+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(17+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(8+movx)),posy+(t*(9+movy)),t,t*7);
    rect(posx+(t*(18+movx)),posy+(t*(9+movy)),t,t*7);
    rect(posx+(t*(9+movx)),posy+(t*(15+movy)),t,t*3);
    rect(posx+(t*(16+movx)),posy+(t*(15+movy)),t,t*3);
    rect(posx+(t*(17+movx)),posy+(t*(14+movy)),t,t*3);
    rect(posx+(t*(10+movx)),posy+(t*(17+movy)),t*6,t);
    rect(posx+(t*(11+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(9+movx)),posy+(t*(12+movy)),t*2,t*2);
    rect(posx+(t*(14+movx)),posy+(t*(12+movy)),t*2,t*2); 
  }
  
  void Maximo(){
    pushMatrix();
    scale(2,2);
    noStroke();
    float movx = -2.3;
    float movy = 27.5;
    fill(0);
    rect(posx+(t*(16+movx)),posy+(t*(7+movy)),t*6,t);
    rect(posx+(t*(16+movx)),posy+(t*(2+movy)),t,t*5);
    rect(posx+(t*(21+movx)),posy+(t*(2+movy)),t,t*5);
    rect(posx+(t*(17+movx)),posy+(t*(2+movy)),t*4,t);
    fill(255);
    rect(posx+(t*(17+movx)),posy+(t*(3+movy)),t*4,t*4);
    fill(255,0,0);
    rect(posx+(t*(19+movx)),posy+(t*(4+movy)),t,t*2);
    popMatrix();
  }
  
  void Carl(){
    pushMatrix();
    scale(1.2,1.2);
    noStroke();
    float movx = 37.5;
    int movy = 48;
    fill(0);
    rect(posx+(t*(1+movx)),posy+(t*(3+movy)),t*12,t);
    rect(posx+(t*(2+movx)),posy+(t*(4+movy)),t*10,t);
    rect(posx+(t*(3+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(6+movy)),t,t*3);
    rect(posx+(t*(2+movx)),posy+(t*(6+movy)),t,t*2);
    rect(posx+(t*(1+movx)),posy+(t*(8+movy)),t,t);
    fill(#FFE09D);
    rect(posx+(t*(4+movx)),posy+(t*(5+movy)),t*6,t*4);
    rect(posx+(t*(5+movx)),posy+(t*(9+movy)),t*4,t);
    rect(posx+(t*(6+movx)),posy+(t*(10+movy)),t*2,t);
    rect(posx+(t*(3+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(6+movy)),t,t);
    fill(0);
    rect(posx+(t*(5+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(8+movy)),t*2,t);
    popMatrix();
  }
  
  void MCI(){
    pushMatrix();
    scale(1,1);
    float movx = 64.5;
    int movy = 50;
    noStroke();
    fill(0);
    rect(posx+(t*(3+movx)),posy+(t*(12+movy)),t,t*4);
    rect(posx+(t*(4+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(14+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(12+movy)),t,t*4);
    rect(posx+(t*(9+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(10+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(15+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(12+movy)),t*3,t);
    rect(posx+(t*(12+movx)),posy+(t*(15+movy)),t*3,t);
    rect(posx+(t*(13+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(12+movx)),posy+(t*(18+movy)),t*2,t);
    rect(posx+(t*(7+movx)),posy+(t*(18+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(18+movy)),t*2,t);
    popMatrix();
  }
  
  void ElDevorador(){
    int movx = 85;
    int movy = 56;
    noStroke();
    fill(255);
    rect(posx+(t*(9+movx)),posy+(t*(5+movy)),t*3,t*11);
    rect(posx+(t*(12+movx)),posy+(t*(6+movy)),t,t*11);
    rect(posx+(t*(13+movx)),posy+(t*(7+movy)),t,t*10);
    rect(posx+(t*(14+movx)),posy+(t*(8+movy)),t,t*7);
    rect(posx+(t*(8+movx)),posy+(t*(6+movy)),t,t*9);
    rect(posx+(t*(7+movx)),posy+(t*(7+movy)),t,t*6);
    rect(posx+(t*(6+movx)),posy+(t*(8+movy)),t,t*4);
    rect(posx+(t*(10+movx)),posy+(t*(16+movy)),t*2,t);
    fill(0);
    rect(posx+(t*(9+movx)),posy+(t*(4+movy)),t*3,t);
    rect(posx+(t*(8+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(14+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(8+movy)),t,t*5);
    rect(posx+(t*(5+movx)),posy+(t*(8+movy)),t,t*4);
    rect(posx+(t*(6+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(14+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(8+movx)),posy+(t*(15+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(15+movy)),t,t);
    rect(posx+(t*(9+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(14+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(17+movy)),t*5,t);
    rect(posx+(t*(12+movx)),posy+(t*(14+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(9+movx)),posy+(t*(11+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(11+movx)),posy+(t*(10+movy)),t*2,t);
    rect(posx+(t*(13+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(7+movy)),t,t);
    fill(255,0,0);
    rect(posx+(t*(12+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(0+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(1+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(1+movx)),posy+(t*(5+movy)),t,t*2);
    rect(posx+(t*(2+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(2+movx)),posy+(t*(7+movy)),t,t*4);
    rect(posx+(t*(3+movx)),posy+(t*(3+movy)),t,t*3);
    rect(posx+(t*(3+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(11+movy)),t,t*2);
    rect(posx+(t*(4+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(9+movy)),t,t*3);
    rect(posx+(t*(4+movx)),posy+(t*(13+movy)),t*3,t);
    rect(posx+(t*(5+movx)),posy+(t*(3+movy)),t,t*2);
    rect(posx+(t*(5+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(1+movy)),t*2,t);
    rect(posx+(t*(8+movx)),posy+(t*(2+movy)),t*2,t);
    rect(posx+(t*(9+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(2+movy)),t,t*3);
    rect(posx+(t*(14+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(16+movx)),posy+(t*(5+movy)),t,t*2);
    fill(#FFC505);
    rect(posx+(t*(3+movx)),posy+(t*(9+movy)),t,t*2);
    rect(posx+(t*(4+movx)),posy+(t*(3+movy)),t,t*3);
    rect(posx+(t*(5+movx)),posy+(t*(5+movy)),t,t*2);
    rect(posx+(t*(6+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(2+movy)),t,t*2);
    rect(posx+(t*(11+movx)),posy+(t*(3+movy)),t,t);
    fill(#FEFF0A);
    rect(posx+(t*(11+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(2+movx)),posy+(t*(3+movy)),t,t*4);
    rect(posx+(t*(1+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(6+movy)),t,t*2);
    rect(posx+(t*(4+movx)),posy+(t*(7+movy)),t,t*2);
    rect(posx+(t*(6+movx)),posy+(t*(3+movy)),t*3,t*2);
    rect(posx+(t*(7+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(14+movx)),posy+(t*(6+movy)),t*2,t);
    rect(posx+(t*(15+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(12+movy)),t*2,t);
  }
  
}

class miniatura{
  void miniaturap1(){
    if(miniatura1 == 1){
      pushMatrix();
    //translate(width/2,height/2);
    scale(0.7,0.7);
    noStroke();
    int movx = 160;
    int movy = 40;
    fill(255);
    rect(posx+(t*(8+movx)),posy+(t*(6+movy)),t*11,t*12);
    fill(#A500E3);//morado
    rect(posx+(t*(11+movx)),posy+(t*(0+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(1+movy)),t*3,t*3);
    rect(posx+(t*(19+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(2+movy)),t*6,t*2);
    rect(posx+(t*(13+movx)),posy+(t*(3+movy)),t*2,t*3);
    rect(posx+(t*(15+movx)),posy+(t*(4+movy)),t*5,t*2);
    rect(posx+(t*(11+movx)),posy+(t*(4+movy)),t*2,t*2);
    rect(posx+(t*(6+movx)),posy+(t*(5+movy)),t*6,t);
    rect(posx+(t*(5+movx)),posy+(t*(4+movy)),t*4,t);
    rect(posx+(t*(6+movx)),posy+(t*(3+movy)),t*2,t);
    rect(posx+(t*(7+movx)),posy+(t*(6+movy)),t*3,t*2);
    rect(posx+(t*(4+movx)),posy+(t*(7+movy)),t*5,t*2);
    rect(posx+(t*(3+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(9+movy)),t*4,t*4);
    rect(posx+(t*(3+movx)),posy+(t*(11+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(13+movy)),t*3,t);
    rect(posx+(t*(5+movx)),posy+(t*(13+movy)),t*3,t);
    rect(posx+(t*(6+movx)),posy+(t*(14+movy)),t*2,t*6);
    rect(posx+(t*(5+movx)),posy+(t*(15+movy)),t,t*4);
    rect(posx+(t*(4+movx)),posy+(t*(17+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(18+movy)),t*15,t*3);
    rect(posx+(t*(8+movx)),posy+(t*(21+movy)),t*14,t*4);
    rect(posx+(t*(7+movx)),posy+(t*(23+movy)),t*3,t*3);
    rect(posx+(t*(6+movx)),posy+(t*(24+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(25+movy)),t*4,t*4);
    rect(posx+(t*(9+movx)),posy+(t*(27+movy)),t*2,t*3);
    rect(posx+(t*(8+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(25+movy)),t,t*3);
    rect(posx+(t*(16+movx)),posy+(t*(25+movy)),t*6,t*2);
    rect(posx+(t*(17+movx)),posy+(t*(27+movy)),t*7,t);
    rect(posx+(t*(22+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(20+movx)),posy+(t*(28+movy)),t*5,t);
    rect(posx+(t*(18+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(29+movy)),t*2,t);
    rect(posx+(t*(22+movx)),posy+(t*(19+movy)),t,t*3);
    rect(posx+(t*(23+movx)),posy+(t*(20+movy)),t,t);
    rect(posx+(t*(22+movx)),posy+(t*(11+movy)),t*2,t*5);
    rect(posx+(t*(24+movx)),posy+(t*(11+movy)),t,t*4);
    rect(posx+(t*(25+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(23+movx)),posy+(t*(10+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(12+movy)),t*3,t*5);
    rect(posx+(t*(21+movx)),posy+(t*(7+movy)),t,t*3);
    rect(posx+(t*(19+movx)),posy+(t*(6+movy)),t*2,t*6);
    rect(posx+(t*(17+movx)),posy+(t*(6+movy)),t*2,t*3);
    rect(posx+(t*(17+movx)),posy+(t*(16+movy)),t*4,t*2);
    rect(posx+(t*(8+movx)),posy+(t*(16+movy)),t,t*2);
    fill(0,0,110);
    rect(posx+(t*(10+movx)),posy+(t*(20+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(22+movy)),t,t*4);
    rect(posx+(t*(9+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(20+movx)),posy+(t*(19+movy)),t*2,t);
    rect(posx+(t*(16+movx)),posy+(t*(20+movy)),t*3,t*2);
    rect(posx+(t*(12+movx)),posy+(t*(26+movy)),t*2,t);
    rect(posx+(t*(14+movx)),posy+(t*(4+movy)),t*2,t*2);
    rect(posx+(t*(5+movx)),posy+(t*(8+movy)),t*2,t*2);
    rect(posx+(t*(18+movx)),posy+(t*(6+movy)),t*2,t*2);
    rect(posx+(t*(20+movx)),posy+(t*(21+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(20+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(25+movy)),t*2,t);
    rect(posx+(t*(12+movx)),posy+(t*(21+movy)),t*2,t*2);
    rect(posx+(t*(19+movx)),posy+(t*(24+movy)),t*2,t*2);
    rect(posx+(t*(19+movx)),posy+(t*(12+movy)),t*2,t*2);
    //Cabeza
    fill(0);
    rect(posx+(t*(10+movx)),posy+(t*(6+movy)),t*7,t);
    rect(posx+(t*(10+movx)),posy+(t*(7+movy)),t,t*2);
    rect(posx+(t*(16+movx)),posy+(t*(7+movy)),t,t*2);
    rect(posx+(t*(9+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(17+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(8+movx)),posy+(t*(9+movy)),t,t*7);
    rect(posx+(t*(18+movx)),posy+(t*(9+movy)),t,t*7);
    rect(posx+(t*(9+movx)),posy+(t*(15+movy)),t,t*3);
    rect(posx+(t*(16+movx)),posy+(t*(15+movy)),t,t*3);
    rect(posx+(t*(17+movx)),posy+(t*(14+movy)),t,t*3);
    rect(posx+(t*(10+movx)),posy+(t*(17+movy)),t*6,t);
    rect(posx+(t*(11+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(9+movx)),posy+(t*(12+movy)),t*2,t*2);
    rect(posx+(t*(14+movx)),posy+(t*(12+movy)),t*2,t*2);
    //Mano derecha
    fill(255);
    rect(posx+(t*(2+movx)),posy+(t*(20+movy)),t*2,t);
    rect(posx+(t*(3+movx)),posy+(t*(20+movy)),t,t*3);
    rect(posx+(t*(2+movx)),posy+(t*(22+movy)),t,t);
    fill(0);
    rect(posx+(t*(1+movx)),posy+(t*(20+movy)),t,t);
    rect(posx+(t*(2+movx)),posy+(t*(19+movy)),t*2,t);
    rect(posx+(t*(4+movx)),posy+(t*(20+movy)),t,t*3);
    rect(posx+(t*(2+movx)),posy+(t*(23+movy)),t*2,t);
    rect(posx+(t*(1+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(2+movx)),posy+(t*(21+movy)),t,t);
    //Mano izquierda
    fill(255);
    rect(posx+(t*(26+movx)),posy+(t*(17+movy)),t*2,t);
    rect(posx+(t*(27+movx)),posy+(t*(17+movy)),t,t*3);
    rect(posx+(t*(26+movx)),posy+(t*(19+movy)),t,t);
    fill(0);
    rect(posx+(t*(25+movx)),posy+(t*(17+movy)),t,t);
    rect(posx+(t*(26+movx)),posy+(t*(16+movy)),t*2,t);
    rect(posx+(t*(28+movx)),posy+(t*(17+movy)),t,t*3);
    rect(posx+(t*(26+movx)),posy+(t*(20+movy)),t*2,t);
    rect(posx+(t*(25+movx)),posy+(t*(19+movy)),t,t);
    rect(posx+(t*(26+movx)),posy+(t*(18+movy)),t,t);
    popMatrix();
    }
    if(miniatura2 == 1){
      pushMatrix();
    //translate(width/2,height/2);
    scale(-0.7,0.7);
    noStroke();
    int movx = -190;
    int movy = 40;
    fill(0);
    rect(posx+(t*(6+movx)),posy+(t*(0+movy)),t*2,t);
    rect(posx+(t*(13+movx)),posy+(t*(0+movy)),t,t);
    rect(posx+(t*(26+movx)),posy+(t*(0+movy)),t*2,t);
    rect(posx+(t*(14+movx)),posy+(t*(1+movy)),t,t*2);
    rect(posx+(t*(7+movx)),posy+(t*(1+movy)),t,t*12);
    rect(posx+(t*(26+movx)),posy+(t*(1+movy)),t,t*12);
    rect(posx+(t*(5+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(28+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(29+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(31+movx)),posy+(t*(4+movy)),t,t*5);
    rect(posx+(t*(2+movx)),posy+(t*(4+movy)),t,t*5);
    rect(posx+(t*(3+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(10+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(11+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(29+movx)),posy+(t*(10+movy)),t,t);
    rect(posx+(t*(28+movx)),posy+(t*(11+movy)),t,t);
    rect(posx+(t*(27+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(27+movx)),posy+(t*(13+movy)),t,t*3);
    rect(posx+(t*(29+movx)),posy+(t*(11+movy)),t,t*5);
    rect(posx+(t*(6+movx)),posy+(t*(13+movy)),t,t*3);
    rect(posx+(t*(4+movx)),posy+(t*(11+movy)),t,t*5);
    rect(posx+(t*(5+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(28+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(27+movx)),posy+(t*(17+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(17+movy)),t*3,t);
    rect(posx+(t*(3+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(26+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(31+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(25+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(8+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(2+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(3+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(26+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(27+movx)),posy+(t*(24+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(24+movy)),t*3,t);
    rect(posx+(t*(27+movx)),posy+(t*(25+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(25+movy)),t*3,t);
    rect(posx+(t*(26+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(2+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(31+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(25+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(26+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(27+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(29+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(28+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(29+movy)),t*3,t);
    rect(posx+(t*(16+movx)),posy+(t*(26+movy)),t,t*3);
    rect(posx+(t*(14+movx)),posy+(t*(25+movy)),t*5,t);
    rect(posx+(t*(14+movx)),posy+(t*(21+movy)),t,t*4);
    rect(posx+(t*(18+movx)),posy+(t*(21+movy)),t,t*4);
    rect(posx+(t*(15+movx)),posy+(t*(21+movy)),t*3,t);
    rect(posx+(t*(16+movx)),posy+(t*(18+movy)),t,t*3);
    rect(posx+(t*(13+movx)),posy+(t*(17+movy)),t*8,t);
    rect(posx+(t*(12+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(15+movy)),t*12,t);
    rect(posx+(t*(11+movx)),posy+(t*(11+movy)),t,t*4);
    rect(posx+(t*(22+movx)),posy+(t*(11+movy)),t,t*4);
    rect(posx+(t*(10+movx)),posy+(t*(5+movy)),t,t*6);
    rect(posx+(t*(23+movx)),posy+(t*(5+movy)),t,t*6);
    rect(posx+(t*(11+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(22+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(3+movy)),t*4,t);
    rect(posx+(t*(24+movx)),posy+(t*(6+movy)),t*2,t*2);
    rect(posx+(t*(8+movx)),posy+(t*(6+movy)),t*2,t*2);
    rect(posx+(t*(24+movx)),posy+(t*(9+movy)),t*2,t);
    rect(posx+(t*(8+movx)),posy+(t*(9+movy)),t*2,t);
    //relleno blanco
    fill(255);
    rect(posx+(t*(12+movx)),posy+(t*(4+movy)),t*10,t*11);
    rect(posx+(t*(11+movx)),posy+(t*(5+movy)),t,t*6);
    rect(posx+(t*(22+movx)),posy+(t*(5+movy)),t,t*6);
    rect(posx+(t*(13+movx)),posy+(t*(16+movy)),t*8,t);
    rect(posx+(t*(15+movx)),posy+(t*(22+movy)),t*3,t*3);
    rect(posx+(t*(8+movx)),posy+(t*(8+movy)),t*2,t);
    rect(posx+(t*(24+movx)),posy+(t*(8+movy)),t*2,t);
    rect(posx+(t*(5+movx)),posy+(t*(12+movy)),t,t*4);
    rect(posx+(t*(28+movx)),posy+(t*(12+movy)),t,t*4);
    rect(posx+(t*(5+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(28+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(26+movy)),t,t*2);
    rect(posx+(t*(6+movx)),posy+(t*(26+movy)),t,t*2);
    rect(posx+(t*(27+movx)),posy+(t*(26+movy)),t,t*2);
    rect(posx+(t*(29+movx)),posy+(t*(26+movy)),t,t*2);
    rect(posx+(t*(3+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(7+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(26+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(30+movx)),posy+(t*(27+movy)),t,t*2);
    //relleno rojo
    fill(170,0,0);
    rect(posx+(t*(6+movx)),posy+(t*(1+movy)),t,t*11);
    rect(posx+(t*(5+movx)),posy+(t*(2+movy)),t,t*9);
    rect(posx+(t*(4+movx)),posy+(t*(3+movy)),t,t*7);
    rect(posx+(t*(3+movx)),posy+(t*(4+movy)),t,t*5);
    rect(posx+(t*(27+movx)),posy+(t*(1+movy)),t,t*11);
    rect(posx+(t*(28+movx)),posy+(t*(2+movy)),t,t*9);
    rect(posx+(t*(29+movx)),posy+(t*(3+movy)),t,t*7);
    rect(posx+(t*(30+movx)),posy+(t*(4+movy)),t,t*5);
    rect(posx+(t*(27+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(28+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(29+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(30+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(26+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(6+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(5+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(4+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(3+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(7+movx)),posy+(t*(19+movy)),t,t*4);
    //cara
    fill(0);
    rect(posx+(t*(16+movx)),posy+(t*(7+movy)),t*6,t);
    rect(posx+(t*(16+movx)),posy+(t*(2+movy)),t,t*5);
    rect(posx+(t*(21+movx)),posy+(t*(2+movy)),t,t*5);
    rect(posx+(t*(17+movx)),posy+(t*(2+movy)),t*4,t);
    fill(255);
    rect(posx+(t*(17+movx)),posy+(t*(3+movy)),t*4,t*4);
    fill(255,0,0);
    rect(posx+(t*(19+movx)),posy+(t*(4+movy)),t,t*2);
    popMatrix();
    }
    
    if(miniatura3 == 1){
      pushMatrix();
    //translate(width/2,height/2);
    scale(-0.7,0.7);
    int movx = -180;
    int movy = 40;
    noStroke();
    fill(0);
    rect(posx+(t*(1+movx)),posy+(t*(3+movy)),t*12,t);
    rect(posx+(t*(2+movx)),posy+(t*(4+movy)),t*10,t);
    rect(posx+(t*(3+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(6+movy)),t,t*3);
    rect(posx+(t*(2+movx)),posy+(t*(6+movy)),t,t*2);
    rect(posx+(t*(1+movx)),posy+(t*(8+movy)),t,t);
    //rostro
    fill(#FFE09D);
    rect(posx+(t*(4+movx)),posy+(t*(5+movy)),t*6,t*4);
    rect(posx+(t*(5+movx)),posy+(t*(9+movy)),t*4,t);
    rect(posx+(t*(6+movx)),posy+(t*(10+movy)),t*2,t);
    rect(posx+(t*(3+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(6+movy)),t,t);
    
    fill(0);
    rect(posx+(t*(5+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(8+movy)),t*2,t);
    rect(posx+(t*(5+movx)),posy+(t*(10+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(10+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(11+movy)),t*2,t*14);
    rect(posx+(t*(5+movx)),posy+(t*(14+movy)),t,t*11);
    rect(posx+(t*(8+movx)),posy+(t*(14+movy)),t,t*11);
    rect(posx+(t*(8+movx)),posy+(t*(25+movy)),t*2,t*5);
    rect(posx+(t*(4+movx)),posy+(t*(25+movy)),t*2,t*5);
    rect(posx+(t*(10+movx)),posy+(t*(28+movy)),t,t*2);
    rect(posx+(t*(3+movx)),posy+(t*(28+movy)),t,t*2);
    rect(posx+(t*(11+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(2+movx)),posy+(t*(29+movy)),t,t);
    //Capa
    fill(180,0,0);
    rect(posx+(t*(4+movx)),posy+(t*(10+movy)),t,t*15);
    rect(posx+(t*(9+movx)),posy+(t*(10+movy)),t,t*15);
    rect(posx+(t*(5+movx)),posy+(t*(11+movy)),t,t*3);
    rect(posx+(t*(8+movx)),posy+(t*(11+movy)),t,t*3);
    rect(posx+(t*(2+movx)),posy+(t*(11+movy)),t*2,t*15);
    rect(posx+(t*(10+movx)),posy+(t*(11+movy)),t*2,t*15);
    rect(posx+(t*(1+movx)),posy+(t*(12+movy)),t,t*13);
    rect(posx+(t*(12+movx)),posy+(t*(12+movy)),t,t*13);
    rect(posx+(t*(0+movx)),posy+(t*(15+movy)),t,t*7);
    rect(posx+(t*(13+movx)),posy+(t*(15+movy)),t,t*7);
    rect(posx+(t*(3+movx)),posy+(t*(0+movy)),t*8,t*2);
    fill(220,0,0);
    rect(posx+(t*(0+movx)),posy+(t*(2+movy)),t*14,t);
    popMatrix();
    }
    if(miniatura4 == 1){
      pushMatrix();
    //translate(width/2,height/2);
    scale(-0.7,0.7);
    int movx = -183;
    int movy = 40;
    noStroke();
    fill(0);
    rect(posx+(t*(9+movx)),posy+(t*(0+movy)),t*6,t);
    rect(posx+(t*(7+movx)),posy+(t*(1+movy)),t*2,t);
    rect(posx+(t*(15+movx)),posy+(t*(1+movy)),t*2,t);
    rect(posx+(t*(5+movx)),posy+(t*(2+movy)),t*2,t);
    rect(posx+(t*(17+movx)),posy+(t*(2+movy)),t*2,t);
    rect(posx+(t*(3+movx)),posy+(t*(3+movy)),t*2,t);
    rect(posx+(t*(19+movx)),posy+(t*(3+movy)),t*2,t);
    rect(posx+(t*(2+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(1+movx)),posy+(t*(5+movy)),t,t*2);
    rect(posx+(t*(22+movx)),posy+(t*(5+movy)),t,t*3);
    rect(posx+(t*(1+movx)),posy+(t*(5+movy)),t,t*2);
    rect(posx+(t*(22+movx)),posy+(t*(5+movy)),t,t*3);
    rect(posx+(t*(0+movx)),posy+(t*(7+movy)),t,t*12);
    rect(posx+(t*(23+movx)),posy+(t*(7+movy)),t,t*12);
    rect(posx+(t*(1+movx)),posy+(t*(19+movy)),t,t*2);
    rect(posx+(t*(22+movx)),posy+(t*(19+movy)),t,t*2);
    rect(posx+(t*(2+movx)),posy+(t*(21+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(21+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(22+movy)),t*2,t);
    rect(posx+(t*(19+movx)),posy+(t*(22+movy)),t*2,t);
    rect(posx+(t*(5+movx)),posy+(t*(23+movy)),t*2,t);
    rect(posx+(t*(17+movx)),posy+(t*(23+movy)),t*2,t);
    rect(posx+(t*(7+movx)),posy+(t*(24+movy)),t*2,t);
    rect(posx+(t*(15+movx)),posy+(t*(24+movy)),t*2,t);
    rect(posx+(t*(9+movx)),posy+(t*(25+movy)),t*6,t);
    rect(posx+(t*(8+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(9+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(14+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(28+movy)),t*4,t);
    //relleno
    fill(100);
    rect(posx+(t*(9+movx)),posy+(t*(1+movy)),t*6,t*24);
    rect(posx+(t*(7+movx)),posy+(t*(2+movy)),t*2,t*22);
    rect(posx+(t*(15+movx)),posy+(t*(2+movy)),t*2,t*22);
    rect(posx+(t*(5+movx)),posy+(t*(3+movy)),t*2,t*20);
    rect(posx+(t*(17+movx)),posy+(t*(3+movy)),t*2,t*20);
    rect(posx+(t*(3+movx)),posy+(t*(4+movy)),t*2,t*18);
    rect(posx+(t*(19+movx)),posy+(t*(4+movy)),t*2,t*18);
    rect(posx+(t*(2+movx)),posy+(t*(5+movy)),t,t*16);
    rect(posx+(t*(21+movx)),posy+(t*(5+movy)),t,t*16);
    rect(posx+(t*(1+movx)),posy+(t*(6+movy)),t,t*13);
    rect(posx+(t*(22+movx)),posy+(t*(7+movy)),t,t*12);
    //contorno ojo
    fill(0);
    rect(posx+(t*(22+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(7+movy)),t*2,t);
    rect(posx+(t*(18+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(17+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(16+movx)),posy+(t*(10+movy)),t,t*7);
    rect(posx+(t*(17+movx)),posy+(t*(17+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(19+movy)),t*2,t);
    rect(posx+(t*(21+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(22+movx)),posy+(t*(17+movy)),t,t);
    //ojo
    fill(255);
    rect(posx+(t*(19+movx)),posy+(t*(8+movy)),t*2,t*11);
    rect(posx+(t*(18+movx)),posy+(t*(9+movy)),t,t*9);
    rect(posx+(t*(17+movx)),posy+(t*(10+movy)),t,t*7);
    rect(posx+(t*(21+movx)),posy+(t*(9+movy)),t,t*9);
    rect(posx+(t*(22+movx)),posy+(t*(10+movy)),t,t*7);
    fill(#FEFF05);
    rect(posx+(t*(21+movx)),posy+(t*(12+movy)),t,t*3);
    rect(posx+(t*(20+movx)),posy+(t*(13+movy)),t,t);
    fill(#FFC505);
    rect(posx+(t*(19+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(20+movx)),posy+(t*(14+movy)),t,t);
    rect(posx+(t*(20+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(15+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(11+movy)),t,t);
    rect(posx+(t*(22+movx)),posy+(t*(12+movy)),t,t*3);
    //Nombre
    fill(0);
    rect(posx+(t*(3+movx)),posy+(t*(12+movy)),t,t*4);
    rect(posx+(t*(4+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(14+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(12+movy)),t,t*4);
    rect(posx+(t*(9+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(10+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(15+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(12+movy)),t*3,t);
    rect(posx+(t*(12+movx)),posy+(t*(15+movy)),t*3,t);
    rect(posx+(t*(13+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(12+movx)),posy+(t*(18+movy)),t*2,t);
    rect(posx+(t*(7+movx)),posy+(t*(18+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(18+movy)),t*2,t);
    //base
    fill(200);
    rect(posx+(t*(9+movx)),posy+(t*(26+movy)),t*6,t);
    rect(posx+(t*(10+movx)),posy+(t*(27+movy)),t*4,t);
    fill(50);
    rect(posx+(t*(8+movx)),posy+(t*(28+movy)),t*2,t);
    rect(posx+(t*(14+movx)),posy+(t*(28+movy)),t*2,t);
    rect(posx+(t*(8+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(25+movy)),t,t*4);
    rect(posx+(t*(16+movx)),posy+(t*(25+movy)),t,t*4);
    rect(posx+(t*(6+movx)),posy+(t*(26+movy)),t,t*3);
    rect(posx+(t*(17+movx)),posy+(t*(26+movy)),t,t*3);
    rect(posx+(t*(5+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(27+movy)),t,t);
    fill(150);
    rect(posx+(t*(6+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(17+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(29+movy)),t*12,t);
    popMatrix();
    }
    if(miniatura5 == 1){
      pushMatrix();
    //translate(width/2,height/2);
    scale(-0.7,0.7);
    int movx = -185;
    int movy = 40;
    noStroke();
    fill(255);
    rect(posx+(t*(9+movx)),posy+(t*(5+movy)),t*3,t*11);
    rect(posx+(t*(12+movx)),posy+(t*(6+movy)),t,t*11);
    rect(posx+(t*(13+movx)),posy+(t*(7+movy)),t,t*10);
    rect(posx+(t*(14+movx)),posy+(t*(8+movy)),t,t*7);
    rect(posx+(t*(8+movx)),posy+(t*(6+movy)),t,t*9);
    rect(posx+(t*(7+movx)),posy+(t*(7+movy)),t,t*6);
    rect(posx+(t*(6+movx)),posy+(t*(8+movy)),t,t*4);
    rect(posx+(t*(10+movx)),posy+(t*(16+movy)),t*2,t);
    fill(0);
    rect(posx+(t*(9+movx)),posy+(t*(4+movy)),t*3,t);
    rect(posx+(t*(8+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(14+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(8+movy)),t,t*5);
    rect(posx+(t*(5+movx)),posy+(t*(8+movy)),t,t*4);
    rect(posx+(t*(6+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(14+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(8+movx)),posy+(t*(15+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(15+movy)),t,t);
    rect(posx+(t*(9+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(14+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(17+movy)),t*5,t);
    rect(posx+(t*(12+movx)),posy+(t*(14+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(9+movx)),posy+(t*(11+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(11+movx)),posy+(t*(10+movy)),t*2,t);
    rect(posx+(t*(13+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(7+movy)),t,t);
    fill(255,0,0);
    rect(posx+(t*(12+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(0+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(1+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(1+movx)),posy+(t*(5+movy)),t,t*2);
    rect(posx+(t*(2+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(2+movx)),posy+(t*(7+movy)),t,t*4);
    rect(posx+(t*(3+movx)),posy+(t*(3+movy)),t,t*3);
    rect(posx+(t*(3+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(11+movy)),t,t*2);
    rect(posx+(t*(4+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(9+movy)),t,t*3);
    rect(posx+(t*(4+movx)),posy+(t*(13+movy)),t*3,t);
    rect(posx+(t*(5+movx)),posy+(t*(3+movy)),t,t*2);
    rect(posx+(t*(5+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(1+movy)),t*2,t);
    rect(posx+(t*(8+movx)),posy+(t*(2+movy)),t*2,t);
    rect(posx+(t*(9+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(2+movy)),t,t*3);
    rect(posx+(t*(14+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(16+movx)),posy+(t*(5+movy)),t,t*2);
    fill(#FFC505);
    rect(posx+(t*(3+movx)),posy+(t*(9+movy)),t,t*2);
    rect(posx+(t*(4+movx)),posy+(t*(3+movy)),t,t*3);
    rect(posx+(t*(5+movx)),posy+(t*(5+movy)),t,t*2);
    rect(posx+(t*(6+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(2+movy)),t,t*2);
    rect(posx+(t*(11+movx)),posy+(t*(3+movy)),t,t);
    fill(#FEFF0A);
    rect(posx+(t*(11+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(2+movx)),posy+(t*(3+movy)),t,t*4);
    rect(posx+(t*(1+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(6+movy)),t,t*2);
    rect(posx+(t*(4+movx)),posy+(t*(7+movy)),t,t*2);
    rect(posx+(t*(6+movx)),posy+(t*(3+movy)),t*3,t*2);
    rect(posx+(t*(7+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(14+movx)),posy+(t*(6+movy)),t*2,t);
    rect(posx+(t*(15+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(12+movy)),t*2,t);
    //Cuerpo
    fill(0);
    rect(posx+(t*(5+movx)),posy+(t*(16+movy)),t*4,t);
    rect(posx+(t*(15+movx)),posy+(t*(16+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(17+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(17+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(20+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(2+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(7+movx)),posy+(t*(19+movy)),t,t*5);
    rect(posx+(t*(15+movx)),posy+(t*(19+movy)),t,t*5);
    rect(posx+(t*(3+movx)),posy+(t*(20+movy)),t*4,t);
    rect(posx+(t*(16+movx)),posy+(t*(20+movy)),t*4,t);
    rect(posx+(t*(6+movx)),posy+(t*(21+movy)),t,t*2);
    rect(posx+(t*(16+movx)),posy+(t*(21+movy)),t,t*2);
    rect(posx+(t*(3+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(17+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(24+movy)),t,t);
    rect(posx+(t*(16+movx)),posy+(t*(24+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(17+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(26+movy)),t*7,t);
    rect(posx+(t*(12+movx)),posy+(t*(26+movy)),t*7,t);
    rect(posx+(t*(11+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(2+movx)),posy+(t*(27+movy)),t*2,t);
    rect(posx+(t*(19+movx)),posy+(t*(27+movy)),t*2,t);
    rect(posx+(t*(1+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(1+movx)),posy+(t*(29+movy)),t*9,t);
    rect(posx+(t*(13+movx)),posy+(t*(29+movy)),t*9,t);
    rect(posx+(t*(13+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(9+movx)),posy+(t*(27+movy)),t,t*2);
    //Relleno
    fill(120);
    rect(posx+(t*(5+movx)),posy+(t*(17+movy)),t*5,t);
    rect(posx+(t*(15+movx)),posy+(t*(17+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(18+movy)),t*15,t);
    rect(posx+(t*(3+movx)),posy+(t*(19+movy)),t*4,t);
    rect(posx+(t*(16+movx)),posy+(t*(19+movy)),t*4,t);
    rect(posx+(t*(8+movx)),posy+(t*(19+movy)),t*7,t*3);
    fill(180);
    rect(posx+(t*(8+movx)),posy+(t*(22+movy)),t*7,t);
    fill(255);
    rect(posx+(t*(3+movx)),posy+(t*(21+movy)),t*3,t);
    rect(posx+(t*(17+movx)),posy+(t*(21+movy)),t*3,t);
    rect(posx+(t*(3+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(17+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(22+movy)),t,t);
    fill(30);
    rect(posx+(t*(8+movx)),posy+(t*(23+movy)),t*7,t);
    rect(posx+(t*(7+movx)),posy+(t*(24+movy)),t*9,t);
    rect(posx+(t*(6+movx)),posy+(t*(25+movy)),t*5,t);
    rect(posx+(t*(12+movx)),posy+(t*(25+movy)),t*5,t);
    fill(#985803);
    rect(posx+(t*(4+movx)),posy+(t*(27+movy)),t*5,t);
    rect(posx+(t*(2+movx)),posy+(t*(28+movy)),t*7,t);
    rect(posx+(t*(14+movx)),posy+(t*(27+movy)),t*5,t);
    rect(posx+(t*(14+movx)),posy+(t*(28+movy)),t*7,t);
    popMatrix();
    }
  }
  
  void miniaturap2(){
    if(miniatura6 == 1){
      pushMatrix();
    //translate(width/2,height/2);
    scale(0.7,0.7);
    noStroke();
    int movx = 160;
    int movy = 110;
    fill(255);
    rect(posx+(t*(8+movx)),posy+(t*(6+movy)),t*11,t*12);
    fill(#A500E3);//morado
    rect(posx+(t*(11+movx)),posy+(t*(0+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(1+movy)),t*3,t*3);
    rect(posx+(t*(19+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(2+movy)),t*6,t*2);
    rect(posx+(t*(13+movx)),posy+(t*(3+movy)),t*2,t*3);
    rect(posx+(t*(15+movx)),posy+(t*(4+movy)),t*5,t*2);
    rect(posx+(t*(11+movx)),posy+(t*(4+movy)),t*2,t*2);
    rect(posx+(t*(6+movx)),posy+(t*(5+movy)),t*6,t);
    rect(posx+(t*(5+movx)),posy+(t*(4+movy)),t*4,t);
    rect(posx+(t*(6+movx)),posy+(t*(3+movy)),t*2,t);
    rect(posx+(t*(7+movx)),posy+(t*(6+movy)),t*3,t*2);
    rect(posx+(t*(4+movx)),posy+(t*(7+movy)),t*5,t*2);
    rect(posx+(t*(3+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(9+movy)),t*4,t*4);
    rect(posx+(t*(3+movx)),posy+(t*(11+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(13+movy)),t*3,t);
    rect(posx+(t*(5+movx)),posy+(t*(13+movy)),t*3,t);
    rect(posx+(t*(6+movx)),posy+(t*(14+movy)),t*2,t*6);
    rect(posx+(t*(5+movx)),posy+(t*(15+movy)),t,t*4);
    rect(posx+(t*(4+movx)),posy+(t*(17+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(18+movy)),t*15,t*3);
    rect(posx+(t*(8+movx)),posy+(t*(21+movy)),t*14,t*4);
    rect(posx+(t*(7+movx)),posy+(t*(23+movy)),t*3,t*3);
    rect(posx+(t*(6+movx)),posy+(t*(24+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(25+movy)),t*4,t*4);
    rect(posx+(t*(9+movx)),posy+(t*(27+movy)),t*2,t*3);
    rect(posx+(t*(8+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(25+movy)),t,t*3);
    rect(posx+(t*(16+movx)),posy+(t*(25+movy)),t*6,t*2);
    rect(posx+(t*(17+movx)),posy+(t*(27+movy)),t*7,t);
    rect(posx+(t*(22+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(20+movx)),posy+(t*(28+movy)),t*5,t);
    rect(posx+(t*(18+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(29+movy)),t*2,t);
    rect(posx+(t*(22+movx)),posy+(t*(19+movy)),t,t*3);
    rect(posx+(t*(23+movx)),posy+(t*(20+movy)),t,t);
    rect(posx+(t*(22+movx)),posy+(t*(11+movy)),t*2,t*5);
    rect(posx+(t*(24+movx)),posy+(t*(11+movy)),t,t*4);
    rect(posx+(t*(25+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(23+movx)),posy+(t*(10+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(12+movy)),t*3,t*5);
    rect(posx+(t*(21+movx)),posy+(t*(7+movy)),t,t*3);
    rect(posx+(t*(19+movx)),posy+(t*(6+movy)),t*2,t*6);
    rect(posx+(t*(17+movx)),posy+(t*(6+movy)),t*2,t*3);
    rect(posx+(t*(17+movx)),posy+(t*(16+movy)),t*4,t*2);
    rect(posx+(t*(8+movx)),posy+(t*(16+movy)),t,t*2);
    fill(0,0,110);
    rect(posx+(t*(10+movx)),posy+(t*(20+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(22+movy)),t,t*4);
    rect(posx+(t*(9+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(20+movx)),posy+(t*(19+movy)),t*2,t);
    rect(posx+(t*(16+movx)),posy+(t*(20+movy)),t*3,t*2);
    rect(posx+(t*(12+movx)),posy+(t*(26+movy)),t*2,t);
    rect(posx+(t*(14+movx)),posy+(t*(4+movy)),t*2,t*2);
    rect(posx+(t*(5+movx)),posy+(t*(8+movy)),t*2,t*2);
    rect(posx+(t*(18+movx)),posy+(t*(6+movy)),t*2,t*2);
    rect(posx+(t*(20+movx)),posy+(t*(21+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(20+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(25+movy)),t*2,t);
    rect(posx+(t*(12+movx)),posy+(t*(21+movy)),t*2,t*2);
    rect(posx+(t*(19+movx)),posy+(t*(24+movy)),t*2,t*2);
    rect(posx+(t*(19+movx)),posy+(t*(12+movy)),t*2,t*2);
    //Cabeza
    fill(0);
    rect(posx+(t*(10+movx)),posy+(t*(6+movy)),t*7,t);
    rect(posx+(t*(10+movx)),posy+(t*(7+movy)),t,t*2);
    rect(posx+(t*(16+movx)),posy+(t*(7+movy)),t,t*2);
    rect(posx+(t*(9+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(17+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(8+movx)),posy+(t*(9+movy)),t,t*7);
    rect(posx+(t*(18+movx)),posy+(t*(9+movy)),t,t*7);
    rect(posx+(t*(9+movx)),posy+(t*(15+movy)),t,t*3);
    rect(posx+(t*(16+movx)),posy+(t*(15+movy)),t,t*3);
    rect(posx+(t*(17+movx)),posy+(t*(14+movy)),t,t*3);
    rect(posx+(t*(10+movx)),posy+(t*(17+movy)),t*6,t);
    rect(posx+(t*(11+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(9+movx)),posy+(t*(12+movy)),t*2,t*2);
    rect(posx+(t*(14+movx)),posy+(t*(12+movy)),t*2,t*2);
    //Mano derecha
    fill(255);
    rect(posx+(t*(2+movx)),posy+(t*(20+movy)),t*2,t);
    rect(posx+(t*(3+movx)),posy+(t*(20+movy)),t,t*3);
    rect(posx+(t*(2+movx)),posy+(t*(22+movy)),t,t);
    fill(0);
    rect(posx+(t*(1+movx)),posy+(t*(20+movy)),t,t);
    rect(posx+(t*(2+movx)),posy+(t*(19+movy)),t*2,t);
    rect(posx+(t*(4+movx)),posy+(t*(20+movy)),t,t*3);
    rect(posx+(t*(2+movx)),posy+(t*(23+movy)),t*2,t);
    rect(posx+(t*(1+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(2+movx)),posy+(t*(21+movy)),t,t);
    //Mano izquierda
    fill(255);
    rect(posx+(t*(26+movx)),posy+(t*(17+movy)),t*2,t);
    rect(posx+(t*(27+movx)),posy+(t*(17+movy)),t,t*3);
    rect(posx+(t*(26+movx)),posy+(t*(19+movy)),t,t);
    fill(0);
    rect(posx+(t*(25+movx)),posy+(t*(17+movy)),t,t);
    rect(posx+(t*(26+movx)),posy+(t*(16+movy)),t*2,t);
    rect(posx+(t*(28+movx)),posy+(t*(17+movy)),t,t*3);
    rect(posx+(t*(26+movx)),posy+(t*(20+movy)),t*2,t);
    rect(posx+(t*(25+movx)),posy+(t*(19+movy)),t,t);
    rect(posx+(t*(26+movx)),posy+(t*(18+movy)),t,t);
    popMatrix();
    }
    if(miniatura7 == 1){
      pushMatrix();
    //translate(width/2,height/2);
    scale(-0.7,0.7);
    noStroke();
    int movx = -190;
    int movy = 110;
    fill(0);
    rect(posx+(t*(6+movx)),posy+(t*(0+movy)),t*2,t);
    rect(posx+(t*(13+movx)),posy+(t*(0+movy)),t,t);
    rect(posx+(t*(26+movx)),posy+(t*(0+movy)),t*2,t);
    rect(posx+(t*(14+movx)),posy+(t*(1+movy)),t,t*2);
    rect(posx+(t*(7+movx)),posy+(t*(1+movy)),t,t*12);
    rect(posx+(t*(26+movx)),posy+(t*(1+movy)),t,t*12);
    rect(posx+(t*(5+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(28+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(29+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(31+movx)),posy+(t*(4+movy)),t,t*5);
    rect(posx+(t*(2+movx)),posy+(t*(4+movy)),t,t*5);
    rect(posx+(t*(3+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(10+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(11+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(29+movx)),posy+(t*(10+movy)),t,t);
    rect(posx+(t*(28+movx)),posy+(t*(11+movy)),t,t);
    rect(posx+(t*(27+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(27+movx)),posy+(t*(13+movy)),t,t*3);
    rect(posx+(t*(29+movx)),posy+(t*(11+movy)),t,t*5);
    rect(posx+(t*(6+movx)),posy+(t*(13+movy)),t,t*3);
    rect(posx+(t*(4+movx)),posy+(t*(11+movy)),t,t*5);
    rect(posx+(t*(5+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(28+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(27+movx)),posy+(t*(17+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(17+movy)),t*3,t);
    rect(posx+(t*(3+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(26+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(31+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(25+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(8+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(2+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(3+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(26+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(27+movx)),posy+(t*(24+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(24+movy)),t*3,t);
    rect(posx+(t*(27+movx)),posy+(t*(25+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(25+movy)),t*3,t);
    rect(posx+(t*(26+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(2+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(31+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(25+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(26+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(30+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(27+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(29+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(28+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(29+movy)),t*3,t);
    rect(posx+(t*(16+movx)),posy+(t*(26+movy)),t,t*3);
    rect(posx+(t*(14+movx)),posy+(t*(25+movy)),t*5,t);
    rect(posx+(t*(14+movx)),posy+(t*(21+movy)),t,t*4);
    rect(posx+(t*(18+movx)),posy+(t*(21+movy)),t,t*4);
    rect(posx+(t*(15+movx)),posy+(t*(21+movy)),t*3,t);
    rect(posx+(t*(16+movx)),posy+(t*(18+movy)),t,t*3);
    rect(posx+(t*(13+movx)),posy+(t*(17+movy)),t*8,t);
    rect(posx+(t*(12+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(15+movy)),t*12,t);
    rect(posx+(t*(11+movx)),posy+(t*(11+movy)),t,t*4);
    rect(posx+(t*(22+movx)),posy+(t*(11+movy)),t,t*4);
    rect(posx+(t*(10+movx)),posy+(t*(5+movy)),t,t*6);
    rect(posx+(t*(23+movx)),posy+(t*(5+movy)),t,t*6);
    rect(posx+(t*(11+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(22+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(3+movy)),t*4,t);
    rect(posx+(t*(24+movx)),posy+(t*(6+movy)),t*2,t*2);
    rect(posx+(t*(8+movx)),posy+(t*(6+movy)),t*2,t*2);
    rect(posx+(t*(24+movx)),posy+(t*(9+movy)),t*2,t);
    rect(posx+(t*(8+movx)),posy+(t*(9+movy)),t*2,t);
    //relleno blanco
    fill(255);
    rect(posx+(t*(12+movx)),posy+(t*(4+movy)),t*10,t*11);
    rect(posx+(t*(11+movx)),posy+(t*(5+movy)),t,t*6);
    rect(posx+(t*(22+movx)),posy+(t*(5+movy)),t,t*6);
    rect(posx+(t*(13+movx)),posy+(t*(16+movy)),t*8,t);
    rect(posx+(t*(15+movx)),posy+(t*(22+movy)),t*3,t*3);
    rect(posx+(t*(8+movx)),posy+(t*(8+movy)),t*2,t);
    rect(posx+(t*(24+movx)),posy+(t*(8+movy)),t*2,t);
    rect(posx+(t*(5+movx)),posy+(t*(12+movy)),t,t*4);
    rect(posx+(t*(28+movx)),posy+(t*(12+movy)),t,t*4);
    rect(posx+(t*(5+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(28+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(26+movy)),t,t*2);
    rect(posx+(t*(6+movx)),posy+(t*(26+movy)),t,t*2);
    rect(posx+(t*(27+movx)),posy+(t*(26+movy)),t,t*2);
    rect(posx+(t*(29+movx)),posy+(t*(26+movy)),t,t*2);
    rect(posx+(t*(3+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(7+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(26+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(30+movx)),posy+(t*(27+movy)),t,t*2);
    //relleno rojo
    fill(170,0,0);
    rect(posx+(t*(6+movx)),posy+(t*(1+movy)),t,t*11);
    rect(posx+(t*(5+movx)),posy+(t*(2+movy)),t,t*9);
    rect(posx+(t*(4+movx)),posy+(t*(3+movy)),t,t*7);
    rect(posx+(t*(3+movx)),posy+(t*(4+movy)),t,t*5);
    rect(posx+(t*(27+movx)),posy+(t*(1+movy)),t,t*11);
    rect(posx+(t*(28+movx)),posy+(t*(2+movy)),t,t*9);
    rect(posx+(t*(29+movx)),posy+(t*(3+movy)),t,t*7);
    rect(posx+(t*(30+movx)),posy+(t*(4+movy)),t,t*5);
    rect(posx+(t*(27+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(28+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(29+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(30+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(26+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(6+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(5+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(4+movx)),posy+(t*(18+movy)),t,t*6);
    rect(posx+(t*(3+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(7+movx)),posy+(t*(19+movy)),t,t*4);
    //cara
    fill(0);
    rect(posx+(t*(16+movx)),posy+(t*(7+movy)),t*6,t);
    rect(posx+(t*(16+movx)),posy+(t*(2+movy)),t,t*5);
    rect(posx+(t*(21+movx)),posy+(t*(2+movy)),t,t*5);
    rect(posx+(t*(17+movx)),posy+(t*(2+movy)),t*4,t);
    fill(255);
    rect(posx+(t*(17+movx)),posy+(t*(3+movy)),t*4,t*4);
    fill(255,0,0);
    rect(posx+(t*(19+movx)),posy+(t*(4+movy)),t,t*2);
    popMatrix();
    }
    
    if(miniatura8 == 1){
      pushMatrix();
    //translate(width/2,height/2);
    scale(-0.7,0.7);
    int movx = -180;
    int movy = 110;
    noStroke();
    fill(0);
    rect(posx+(t*(1+movx)),posy+(t*(3+movy)),t*12,t);
    rect(posx+(t*(2+movx)),posy+(t*(4+movy)),t*10,t);
    rect(posx+(t*(3+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(6+movy)),t,t*3);
    rect(posx+(t*(2+movx)),posy+(t*(6+movy)),t,t*2);
    rect(posx+(t*(1+movx)),posy+(t*(8+movy)),t,t);
    //rostro
    fill(#FFE09D);
    rect(posx+(t*(4+movx)),posy+(t*(5+movy)),t*6,t*4);
    rect(posx+(t*(5+movx)),posy+(t*(9+movy)),t*4,t);
    rect(posx+(t*(6+movx)),posy+(t*(10+movy)),t*2,t);
    rect(posx+(t*(3+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(6+movy)),t,t);
    
    fill(0);
    rect(posx+(t*(5+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(8+movy)),t*2,t);
    rect(posx+(t*(5+movx)),posy+(t*(10+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(10+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(11+movy)),t*2,t*14);
    rect(posx+(t*(5+movx)),posy+(t*(14+movy)),t,t*11);
    rect(posx+(t*(8+movx)),posy+(t*(14+movy)),t,t*11);
    rect(posx+(t*(8+movx)),posy+(t*(25+movy)),t*2,t*5);
    rect(posx+(t*(4+movx)),posy+(t*(25+movy)),t*2,t*5);
    rect(posx+(t*(10+movx)),posy+(t*(28+movy)),t,t*2);
    rect(posx+(t*(3+movx)),posy+(t*(28+movy)),t,t*2);
    rect(posx+(t*(11+movx)),posy+(t*(29+movy)),t,t);
    rect(posx+(t*(2+movx)),posy+(t*(29+movy)),t,t);
    //Capa
    fill(180,0,0);
    rect(posx+(t*(4+movx)),posy+(t*(10+movy)),t,t*15);
    rect(posx+(t*(9+movx)),posy+(t*(10+movy)),t,t*15);
    rect(posx+(t*(5+movx)),posy+(t*(11+movy)),t,t*3);
    rect(posx+(t*(8+movx)),posy+(t*(11+movy)),t,t*3);
    rect(posx+(t*(2+movx)),posy+(t*(11+movy)),t*2,t*15);
    rect(posx+(t*(10+movx)),posy+(t*(11+movy)),t*2,t*15);
    rect(posx+(t*(1+movx)),posy+(t*(12+movy)),t,t*13);
    rect(posx+(t*(12+movx)),posy+(t*(12+movy)),t,t*13);
    rect(posx+(t*(0+movx)),posy+(t*(15+movy)),t,t*7);
    rect(posx+(t*(13+movx)),posy+(t*(15+movy)),t,t*7);
    rect(posx+(t*(3+movx)),posy+(t*(0+movy)),t*8,t*2);
    fill(220,0,0);
    rect(posx+(t*(0+movx)),posy+(t*(2+movy)),t*14,t);
    popMatrix();
    }
    if(miniatura9 == 1){
      pushMatrix();
    //translate(width/2,height/2);
    scale(-0.7,0.7);
    int movx = -183;
    int movy = 110;
    noStroke();
    fill(0);
    rect(posx+(t*(9+movx)),posy+(t*(0+movy)),t*6,t);
    rect(posx+(t*(7+movx)),posy+(t*(1+movy)),t*2,t);
    rect(posx+(t*(15+movx)),posy+(t*(1+movy)),t*2,t);
    rect(posx+(t*(5+movx)),posy+(t*(2+movy)),t*2,t);
    rect(posx+(t*(17+movx)),posy+(t*(2+movy)),t*2,t);
    rect(posx+(t*(3+movx)),posy+(t*(3+movy)),t*2,t);
    rect(posx+(t*(19+movx)),posy+(t*(3+movy)),t*2,t);
    rect(posx+(t*(2+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(1+movx)),posy+(t*(5+movy)),t,t*2);
    rect(posx+(t*(22+movx)),posy+(t*(5+movy)),t,t*3);
    rect(posx+(t*(1+movx)),posy+(t*(5+movy)),t,t*2);
    rect(posx+(t*(22+movx)),posy+(t*(5+movy)),t,t*3);
    rect(posx+(t*(0+movx)),posy+(t*(7+movy)),t,t*12);
    rect(posx+(t*(23+movx)),posy+(t*(7+movy)),t,t*12);
    rect(posx+(t*(1+movx)),posy+(t*(19+movy)),t,t*2);
    rect(posx+(t*(22+movx)),posy+(t*(19+movy)),t,t*2);
    rect(posx+(t*(2+movx)),posy+(t*(21+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(21+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(22+movy)),t*2,t);
    rect(posx+(t*(19+movx)),posy+(t*(22+movy)),t*2,t);
    rect(posx+(t*(5+movx)),posy+(t*(23+movy)),t*2,t);
    rect(posx+(t*(17+movx)),posy+(t*(23+movy)),t*2,t);
    rect(posx+(t*(7+movx)),posy+(t*(24+movy)),t*2,t);
    rect(posx+(t*(15+movx)),posy+(t*(24+movy)),t*2,t);
    rect(posx+(t*(9+movx)),posy+(t*(25+movy)),t*6,t);
    rect(posx+(t*(8+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(9+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(14+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(28+movy)),t*4,t);
    //relleno
    fill(100);
    rect(posx+(t*(9+movx)),posy+(t*(1+movy)),t*6,t*24);
    rect(posx+(t*(7+movx)),posy+(t*(2+movy)),t*2,t*22);
    rect(posx+(t*(15+movx)),posy+(t*(2+movy)),t*2,t*22);
    rect(posx+(t*(5+movx)),posy+(t*(3+movy)),t*2,t*20);
    rect(posx+(t*(17+movx)),posy+(t*(3+movy)),t*2,t*20);
    rect(posx+(t*(3+movx)),posy+(t*(4+movy)),t*2,t*18);
    rect(posx+(t*(19+movx)),posy+(t*(4+movy)),t*2,t*18);
    rect(posx+(t*(2+movx)),posy+(t*(5+movy)),t,t*16);
    rect(posx+(t*(21+movx)),posy+(t*(5+movy)),t,t*16);
    rect(posx+(t*(1+movx)),posy+(t*(6+movy)),t,t*13);
    rect(posx+(t*(22+movx)),posy+(t*(7+movy)),t,t*12);
    //contorno ojo
    fill(0);
    rect(posx+(t*(22+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(7+movy)),t*2,t);
    rect(posx+(t*(18+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(17+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(16+movx)),posy+(t*(10+movy)),t,t*7);
    rect(posx+(t*(17+movx)),posy+(t*(17+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(19+movy)),t*2,t);
    rect(posx+(t*(21+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(22+movx)),posy+(t*(17+movy)),t,t);
    //ojo
    fill(255);
    rect(posx+(t*(19+movx)),posy+(t*(8+movy)),t*2,t*11);
    rect(posx+(t*(18+movx)),posy+(t*(9+movy)),t,t*9);
    rect(posx+(t*(17+movx)),posy+(t*(10+movy)),t,t*7);
    rect(posx+(t*(21+movx)),posy+(t*(9+movy)),t,t*9);
    rect(posx+(t*(22+movx)),posy+(t*(10+movy)),t,t*7);
    fill(#FEFF05);
    rect(posx+(t*(21+movx)),posy+(t*(12+movy)),t,t*3);
    rect(posx+(t*(20+movx)),posy+(t*(13+movy)),t,t);
    fill(#FFC505);
    rect(posx+(t*(19+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(20+movx)),posy+(t*(14+movy)),t,t);
    rect(posx+(t*(20+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(15+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(11+movy)),t,t);
    rect(posx+(t*(22+movx)),posy+(t*(12+movy)),t,t*3);
    //Nombre
    fill(0);
    rect(posx+(t*(3+movx)),posy+(t*(12+movy)),t,t*4);
    rect(posx+(t*(4+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(14+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(12+movy)),t,t*4);
    rect(posx+(t*(9+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(10+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(15+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(12+movy)),t*3,t);
    rect(posx+(t*(12+movx)),posy+(t*(15+movy)),t*3,t);
    rect(posx+(t*(13+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(12+movx)),posy+(t*(18+movy)),t*2,t);
    rect(posx+(t*(7+movx)),posy+(t*(18+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(18+movy)),t*2,t);
    //base
    fill(200);
    rect(posx+(t*(9+movx)),posy+(t*(26+movy)),t*6,t);
    rect(posx+(t*(10+movx)),posy+(t*(27+movy)),t*4,t);
    fill(50);
    rect(posx+(t*(8+movx)),posy+(t*(28+movy)),t*2,t);
    rect(posx+(t*(14+movx)),posy+(t*(28+movy)),t*2,t);
    rect(posx+(t*(8+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(25+movy)),t,t*4);
    rect(posx+(t*(16+movx)),posy+(t*(25+movy)),t,t*4);
    rect(posx+(t*(6+movx)),posy+(t*(26+movy)),t,t*3);
    rect(posx+(t*(17+movx)),posy+(t*(26+movy)),t,t*3);
    rect(posx+(t*(5+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(27+movy)),t,t);
    fill(150);
    rect(posx+(t*(6+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(17+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(26+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(27+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(29+movy)),t*12,t);
    popMatrix();
    }
    if(miniatura10 == 1){
      pushMatrix();
    //translate(width/2,height/2);
    scale(-0.7,0.7);
    int movx = -185;
    int movy = 110;
    noStroke();
    fill(255);
    rect(posx+(t*(9+movx)),posy+(t*(5+movy)),t*3,t*11);
    rect(posx+(t*(12+movx)),posy+(t*(6+movy)),t,t*11);
    rect(posx+(t*(13+movx)),posy+(t*(7+movy)),t,t*10);
    rect(posx+(t*(14+movx)),posy+(t*(8+movy)),t,t*7);
    rect(posx+(t*(8+movx)),posy+(t*(6+movy)),t,t*9);
    rect(posx+(t*(7+movx)),posy+(t*(7+movy)),t,t*6);
    rect(posx+(t*(6+movx)),posy+(t*(8+movy)),t,t*4);
    rect(posx+(t*(10+movx)),posy+(t*(16+movy)),t*2,t);
    fill(0);
    rect(posx+(t*(9+movx)),posy+(t*(4+movy)),t*3,t);
    rect(posx+(t*(8+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(14+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(8+movy)),t,t*5);
    rect(posx+(t*(5+movx)),posy+(t*(8+movy)),t,t*4);
    rect(posx+(t*(6+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(14+movx)),posy+(t*(13+movy)),t,t*2);
    rect(posx+(t*(8+movx)),posy+(t*(15+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(15+movy)),t,t);
    rect(posx+(t*(9+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(14+movx)),posy+(t*(16+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(17+movy)),t*5,t);
    rect(posx+(t*(12+movx)),posy+(t*(14+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(13+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(9+movx)),posy+(t*(11+movy)),t,t);
    rect(posx+(t*(8+movx)),posy+(t*(12+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(11+movx)),posy+(t*(10+movy)),t*2,t);
    rect(posx+(t*(13+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(7+movy)),t,t);
    fill(255,0,0);
    rect(posx+(t*(12+movx)),posy+(t*(9+movy)),t,t);
    rect(posx+(t*(0+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(1+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(1+movx)),posy+(t*(5+movy)),t,t*2);
    rect(posx+(t*(2+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(2+movx)),posy+(t*(7+movy)),t,t*4);
    rect(posx+(t*(3+movx)),posy+(t*(3+movy)),t,t*3);
    rect(posx+(t*(3+movx)),posy+(t*(8+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(11+movy)),t,t*2);
    rect(posx+(t*(4+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(9+movy)),t,t*3);
    rect(posx+(t*(4+movx)),posy+(t*(13+movy)),t*3,t);
    rect(posx+(t*(5+movx)),posy+(t*(3+movy)),t,t*2);
    rect(posx+(t*(5+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(1+movy)),t*2,t);
    rect(posx+(t*(8+movx)),posy+(t*(2+movy)),t*2,t);
    rect(posx+(t*(9+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(11+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(1+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(3+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(2+movy)),t,t*3);
    rect(posx+(t*(14+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(15+movx)),posy+(t*(7+movy)),t,t);
    rect(posx+(t*(16+movx)),posy+(t*(5+movy)),t,t*2);
    fill(#FFC505);
    rect(posx+(t*(3+movx)),posy+(t*(9+movy)),t,t*2);
    rect(posx+(t*(4+movx)),posy+(t*(3+movy)),t,t*3);
    rect(posx+(t*(5+movx)),posy+(t*(5+movy)),t,t*2);
    rect(posx+(t*(6+movx)),posy+(t*(6+movy)),t,t);
    rect(posx+(t*(10+movx)),posy+(t*(2+movy)),t,t*2);
    rect(posx+(t*(11+movx)),posy+(t*(3+movy)),t,t);
    fill(#FEFF0A);
    rect(posx+(t*(11+movx)),posy+(t*(8+movy)),t,t*2);
    rect(posx+(t*(2+movx)),posy+(t*(3+movy)),t,t*4);
    rect(posx+(t*(1+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(6+movy)),t,t*2);
    rect(posx+(t*(4+movx)),posy+(t*(7+movy)),t,t*2);
    rect(posx+(t*(6+movx)),posy+(t*(3+movy)),t*3,t*2);
    rect(posx+(t*(7+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(7+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(2+movy)),t,t);
    rect(posx+(t*(12+movx)),posy+(t*(4+movy)),t,t);
    rect(posx+(t*(13+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(14+movx)),posy+(t*(6+movy)),t*2,t);
    rect(posx+(t*(15+movx)),posy+(t*(5+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(12+movy)),t*2,t);
    //Cuerpo
    fill(0);
    rect(posx+(t*(5+movx)),posy+(t*(16+movy)),t*4,t);
    rect(posx+(t*(15+movx)),posy+(t*(16+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(17+movy)),t,t);
    rect(posx+(t*(3+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(17+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(18+movy)),t,t);
    rect(posx+(t*(20+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(2+movx)),posy+(t*(19+movy)),t,t*4);
    rect(posx+(t*(7+movx)),posy+(t*(19+movy)),t,t*5);
    rect(posx+(t*(15+movx)),posy+(t*(19+movy)),t,t*5);
    rect(posx+(t*(3+movx)),posy+(t*(20+movy)),t*4,t);
    rect(posx+(t*(16+movx)),posy+(t*(20+movy)),t*4,t);
    rect(posx+(t*(6+movx)),posy+(t*(21+movy)),t,t*2);
    rect(posx+(t*(16+movx)),posy+(t*(21+movy)),t,t*2);
    rect(posx+(t*(3+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(17+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(18+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(23+movy)),t,t);
    rect(posx+(t*(6+movx)),posy+(t*(24+movy)),t,t);
    rect(posx+(t*(16+movx)),posy+(t*(24+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(17+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(4+movx)),posy+(t*(26+movy)),t*7,t);
    rect(posx+(t*(12+movx)),posy+(t*(26+movy)),t*7,t);
    rect(posx+(t*(11+movx)),posy+(t*(25+movy)),t,t);
    rect(posx+(t*(2+movx)),posy+(t*(27+movy)),t*2,t);
    rect(posx+(t*(19+movx)),posy+(t*(27+movy)),t*2,t);
    rect(posx+(t*(1+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(21+movx)),posy+(t*(28+movy)),t,t);
    rect(posx+(t*(1+movx)),posy+(t*(29+movy)),t*9,t);
    rect(posx+(t*(13+movx)),posy+(t*(29+movy)),t*9,t);
    rect(posx+(t*(13+movx)),posy+(t*(27+movy)),t,t*2);
    rect(posx+(t*(9+movx)),posy+(t*(27+movy)),t,t*2);
    //Relleno
    fill(120);
    rect(posx+(t*(5+movx)),posy+(t*(17+movy)),t*5,t);
    rect(posx+(t*(15+movx)),posy+(t*(17+movy)),t*3,t);
    rect(posx+(t*(4+movx)),posy+(t*(18+movy)),t*15,t);
    rect(posx+(t*(3+movx)),posy+(t*(19+movy)),t*4,t);
    rect(posx+(t*(16+movx)),posy+(t*(19+movy)),t*4,t);
    rect(posx+(t*(8+movx)),posy+(t*(19+movy)),t*7,t*3);
    fill(180);
    rect(posx+(t*(8+movx)),posy+(t*(22+movy)),t*7,t);
    fill(255);
    rect(posx+(t*(3+movx)),posy+(t*(21+movy)),t*3,t);
    rect(posx+(t*(17+movx)),posy+(t*(21+movy)),t*3,t);
    rect(posx+(t*(3+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(5+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(17+movx)),posy+(t*(22+movy)),t,t);
    rect(posx+(t*(19+movx)),posy+(t*(22+movy)),t,t);
    fill(30);
    rect(posx+(t*(8+movx)),posy+(t*(23+movy)),t*7,t);
    rect(posx+(t*(7+movx)),posy+(t*(24+movy)),t*9,t);
    rect(posx+(t*(6+movx)),posy+(t*(25+movy)),t*5,t);
    rect(posx+(t*(12+movx)),posy+(t*(25+movy)),t*5,t);
    fill(#985803);
    rect(posx+(t*(4+movx)),posy+(t*(27+movy)),t*5,t);
    rect(posx+(t*(2+movx)),posy+(t*(28+movy)),t*7,t);
    rect(posx+(t*(14+movx)),posy+(t*(27+movy)),t*5,t);
    rect(posx+(t*(14+movx)),posy+(t*(28+movy)),t*7,t);
    popMatrix();
    }
  }
}

class selccionpersonajes{
  void pantalla2(){
      fill(100,0,0);
      rect(0,0,width,height/2);
      fill(100,0,100);
      rect(0,height/2,width,height);
      fill(200);
      rect(posx+(t*(6+movrx)),posy+(t*5),t*15,t*15);
      fill(200);
      rect(posx+(t*(6+movr2x)),posy+(t*58),t*15,t*15);
      //mover seleccion P1
      if(movrx < 0){
        movrx = 80;
      }else
      if(movrx > 80){
        movrx = 0;
      }
      //MOVER SELECCION P2
      if(movr2x < 0){
        movr2x = 80;
      }else
      if(movr2x > 80){
        movr2x = 0;
      }
      //aparicion de miniaturas
      if(movrx == 0){
        miniatura1 = 1;
        fill(255);
        textAlign(CENTER);
        text("Fantasma era un humano pero tras\nsu muerte su alma no logro pasar\nal mundo de los muertos y es\nconsiderado un demonio",t*50,t*25);
      }else
      if(movrx != 0){
        miniatura1 = 0;
      }
      if(movrx == 20){
        miniatura2 = 1;
        fill(255);
        textAlign(CENTER);
        text("Maximo es un conquistador de\nmundos creado por una raza\nalienigena llamada Maximus",t*50,t*25);
      }else
      if(movrx != 20){
        miniatura2 = 0;
      }
      if(movrx == 40){
        miniatura3 = 1;
        fill(255);
        textAlign(CENTER);
        text("Carl es un humano modificado\npara cazar demonios",t*50,t*25);
      }else
      if(movrx != 40){
        miniatura3 = 0;
      }
      if(movrx == 60){
        miniatura4 = 1;
        fill(255);
        textAlign(CENTER);
        text("M.C.I es una inteligencia artificial\ncreada por los Crol diseñada\npara la exploracion y el convate",t*50,t*25);
      }else
      if(movrx != 60){
        miniatura4 = 0;
      }
      if(movrx == 80){
        miniatura5 = 1;
        fill(255);
        textAlign(CENTER);
        text("El devorador es un demonio de alto\nrango que vive en la tierra",t*50,t*25);
      }else
      if(movrx != 80){
        miniatura5 = 0;
      }
      //mover seleccion P2
      if(movr2x == 0){
        miniatura6 = 1;
        textAlign(CENTER);
        text("Fantasma era un humano pero tras\nsu muerte su alma no logro pasar\nal mundo de los muertos y es\nconsiderado un demonio",t*50,t*80);
      }else
      if(movr2x != 0){
        miniatura6 = 0;
      }
      if(movr2x == 20){
        miniatura7 = 1;
        fill(255);
        textAlign(CENTER);
        text("Maximo es un conquistador de\nmundos creado por una raza\nalienigena llamada Maximus",t*50,t*80);
      }else
      if(movr2x != 20){
        miniatura7 = 0;
      }
      if(movr2x == 40){
        miniatura8 = 1;
        fill(255);
        textAlign(CENTER);
        text("Carl es un humano modificado\npara cazar demonios",t*50,t*80);
      }else
      if(movr2x != 40){
        miniatura8 = 0;
      }
      if(movr2x == 60){
        miniatura9 = 1;
        fill(255);
        textAlign(CENTER);
        text("M.C.I es una inteligencia artificial\ncreada por los Crol diseñada\npara la exploracion y el convate",t*50,t*80);
      }else
      if(movr2x != 60){
        miniatura9 = 0;
      }
      if(movr2x == 80){
        miniatura10 = 1;
        fill(255);
        textAlign(CENTER);
        text("El devorador es un demonio de alto\nrango que vive en la tierra",t*50,t*80);
      }else
      if(movr2x != 80){
        miniatura10 = 0;
      }
      //iconos de personajes
      icono.miniaturap1();
      icono.miniaturap2();
      P3.Fantasma();
      P3.Maximo();
      P3.Carl();
      P3.MCI();
      P3.ElDevorador();
      P4.Fantasma();
      P4.Maximo();
      P4.Carl();
      P4.MCI();
      P4.ElDevorador();
  }
  
  void pantallaPelea(){
    P1.jugadores1();
    P1.jugadores2();
    P1.HP1();
    P1.HP2();
    a.ataques1();
    a.ataques2();
    vida.mostrar();
  }
}

class turnos{
  void ataques1(){
    if(pantalla == 2){
      if(jugador == 1){
        fill(255);
        text("turno de:\nP2",(width/2),(height/2));
        if(movr2x == 0){
          if(HPF2 <= 180){
            switch(key){
              case '6':
              HPF2 = HPF2 + int(random(0,20));
              jugador -= 1;
              turnos += 1;
              break;
            }
          }
          fill(255);
          textSize(40);
          text("4: Golpe\nFntasma",(width/2)-300,(height/2)+250);
          text("5: Espectro",(width/2),(height/2)+250);
          text("6: Curacion\nDemencial",(width/2)+300,(height/2)+250);
          switch(key){
            case '4':
            HPF = HPF - int(random(5,20));
            HPMX = HPMX - int(random(5,20));
            HPC = HPC - int(random(5,20));
            HPM = HPM - int(random(5,20));
            HPE = HPE - int(random(5,20));
            jugador -= 1;
            turnos += 1;
            break;
            case '5':
            HPF = HPF - int(random(0,40));
            HPMX = HPMX - int(random(0,40));
            HPC = HPC - int(random(0,40));
            HPM = HPM - int(random(0,40));
            HPE = HPE - int(random(0,40));
            jugador -= 1;
            turnos += 1;
            break;
          }
          if(HPF2 <= 0){
          pantalla = 3;
        }
        }else
        if(movr2x == 20){
          if(HPMX2 <= 260){
            switch(key){
              case '6':
              HPMX2 = HPMX2 + int(random(0,20));
              jugador -= 1;
              turnos += 1;
              break;
            }
          }
          fill(255);
          textSize(40);
          text("q: Laser",(width/2)-300,(height/2)+250);
          text("w: Plasma",(width/2),(height/2)+250);
          text("e: Reparacion",(width/2)+300,(height/2)+250);
          switch(key){
            case '4':
            HPF = HPF - int(random(5,20));
            HPMX = HPMX - int(random(5,20));
            HPC = HPC - int(random(5,20));
            HPM = HPM - int(random(5,20));
            HPE = HPE - int(random(5,20));
            jugador -= 1;
            turnos += 1;
            break;
            case '5':
            HPF = HPF - int(random(0,40));
            HPMX = HPMX - int(random(0,40));
            HPC = HPC - int(random(0,40));
            HPM = HPM - int(random(0,40));
            HPE = HPE - int(random(0,40));
            jugador -= 1;
            turnos += 1;
            break;
          }
          if(HPMX2 <= 0){
          pantalla = 3;
        }
        }else
        if(movr2x == 40){
          if(HPC2 <= 140){
            switch(key){
              case '6':
              HPC2 = HPC2 + int(random(5,30));
              jugador -= 1;
              turnos += 1;
              break;
            }
          }
          fill(255);
          textSize(40);
          text("q: Puñetaso",(width/2)-300,(height/2)+250);
          text("w: Patada",(width/2),(height/2)+250);
          text("e: Agua\nSanadora",(width/2)+300,(height/2)+250);
          switch(key){
            case '4':
            HPF = HPF - int(random(10,30));
            HPMX = HPMX - int(random(10,30));
            HPC = HPC - int(random(10,30));
            HPM = HPM - int(random(10,30));
            HPE = HPE - int(random(10,30));
            jugador -= 1;
            turnos += 1;
            break;
            case '5':
            HPF = HPF - int(random(10,40));
            HPMX = HPMX - int(random(10,40));
            HPC = HPC - int(random(10,40));
            HPM = HPM - int(random(10,40));
            HPE = HPE - int(random(10,40));
            jugador -= 1;
            turnos += 1;
            break;
          }
          if(HPC2 <= 0){
          pantalla = 3;
        }
        }else
        if(movr2x == 60){
          if(HPM2 <= 270){
            switch(key){
              case '6':
              HPM2 = HPM2 + int(random(0,20));
              jugador -= 1;
              turnos += 1;
              break;
            }
          }
          fill(255);
          textSize(40);
          text("q: Destello",(width/2)-300,(height/2)+250);
          text("w: Plasma\nDestructor",(width/2),(height/2)+250);
          text("e: Reparacion",(width/2)+300,(height/2)+250);
          switch(key){
            case '4':
            HPF = HPF - int(random(5,20));
            HPMX = HPMX - int(random(5,20));
            HPC = HPC - int(random(5,20));
            HPM = HPM - int(random(5,20));
            HPE = HPE - int(random(5,20));
            jugador -= 1;
            turnos += 1;
            break;
            case '5':
            HPF = HPF - int(random(0,40));
            HPMX = HPMX - int(random(0,40));
            HPC = HPC - int(random(0,40));
            HPM = HPM - int(random(0,40));
            HPE = HPE - int(random(0,40));
            jugador -= 1;
            turnos += 1;
            break;
          }
          if(HPM2 <= 0){
          pantalla = 3;
        }
        }else
        if(movr2x == 80){
          if(HPE2 <= 230){
            switch(key){
              case '6':
              HPE2 = HPE2 + int(random(0,20));
              jugador -= 1;
              turnos += 1;
              break;
            }
          }
          fill(255);
          textSize(40);
          text("q: Fuego",(width/2)-300,(height/2)+250);
          text("w: Castigo",(width/2),(height/2)+250);
          text("e: Flamas\ndel Infierno",(width/2)+300,(height/2)+250);
          switch(key){
            case '4':
            HPF = HPF - int(random(5,20));
            HPMX = HPMX - int(random(5,20));
            HPC = HPC - int(random(5,20));
            HPM = HPM - int(random(5,20));
            HPE = HPE - int(random(5,20));
            jugador -= 1;
            turnos += 1;
            break;
            case '5':
            HPF = HPF - int(random(0,40));
            HPMX = HPMX - int(random(0,40));
            HPC = HPC - int(random(0,40));
            HPM = HPM - int(random(0,40));
            HPE = HPE - int(random(0,40));
            jugador -= 1;
            turnos += 1;
            break;
          }
           if(HPE2 <= 0){
          pantalla = 3;
        }
        }
      }
    }
  }
  void ataques2(){
    if(pantalla == 2){
      if(jugador == 0){
        fill(255);
        text("turno de:\nP1",(width/2),(height/2));
        if(movrx == 0){
          if(HPF <= 180){
            switch(key){
              case 'e':
              HPF = HPF + int(random(0,20));
              jugador += 1;
              turnos += 1;
              break;
            }
          }
          fill(255);
          textSize(40);
          text("q: Golpe\nFntasma",(width/2)-300,(height/2)+250);
          text("w: Espectro",(width/2),(height/2)+250);
          text("e: Curacion\nDemencial",(width/2)+300,(height/2)+250);
          switch(key){
            case 'q':
            HPF2 = HPF2 - int(random(5,20));
            HPMX2 = HPMX2 - int(random(5,20));
            HPC2 = HPC2 - int(random(5,20));
            HPM2 = HPM2 - int(random(5,20));
            HPE2 = HPE2 - int(random(5,20));
            jugador += 1;
            turnos += 1;
            break;
            case 'w':
            HPF2 = HPF2 - int(random(0,40));
            HPMX2 = HPMX2 - int(random(0,40));
            HPC2 = HPC2 - int(random(0,40));
            HPM2 = HPM2 - int(random(0,40));
            HPE2 = HPE2 - int(random(0,40));
            jugador += 1;
            turnos += 1;
            break;
          }
          if(HPF <= 0){
          pantalla = 3;
        }
        }else
        if(movrx == 20){
          if(HPMX <= 260){
            switch(key){
              case 'e':
              HPMX = HPMX + int(random(0,20));
              jugador += 1;
              turnos += 1;
              break;
            }
          }
          fill(255);
          textSize(40);
          text("q: Laser",(width/2)-300,(height/2)+250);
          text("w: Plasma",(width/2),(height/2)+250);
          text("e: Reparacion",(width/2)+300,(height/2)+250);
          switch(key){
            case 'q':
            HPF2 = HPF2 - int(random(5,20));
            HPMX2 = HPMX2 - int(random(5,20));
            HPC2 = HPC2 - int(random(5,20));
            HPM2 = HPM2 - int(random(5,20));
            HPE2 = HPE2 - int(random(5,20));
            jugador += 1;
            turnos += 1;
            break;
            case 'w':
            HPF2 = HPF2 - int(random(10,40));
            HPMX2 = HPMX2 - int(random(0,40));
            HPC2 = HPC2 - int(random(0,40));
            HPM2 = HPM2 - int(random(0,40));
            HPE2 = HPE2 - int(random(0,40));
            jugador += 1;
            turnos += 1;
            break;
          }
          if(HPMX <= 0){
          pantalla = 3;
        }
        }else
        if(movrx == 40){
          if(HPC <= 140){
            switch(key){
              case 'e':
              HPC = HPC + int(random(5,30));
              jugador += 1;
              turnos += 1;
              break;
            }
          }
          fill(255);
          textSize(40);
          text("q: Puñetaso",(width/2)-300,(height/2)+250);
          text("w: Patada",(width/2),(height/2)+250);
          text("e: Agua\nSanadora",(width/2)+300,(height/2)+250);
          switch(key){
            case 'q':
            HPF2 = HPF2 - int(random(10,30));
            HPMX2 = HPMX2 - int(random(10,30));
            HPC2 = HPC2 -int(random(10,30));
            HPM2 = HPM2 - int(random(10,30));
            HPE2 = HPE2 - int(random(10,30));
            jugador += 1;
            turnos += 1;
            break;
            case 'w':
            HPF2 = HPF2 - int(random(10,40));
            HPMX2 = HPMX2 - int(random(10,40));
            HPC2 = HPC2 - int(random(10,40));
            HPM2 = HPM2 - int(random(10,40));
            HPE2 = HPE2 - int(random(10,40));
            jugador += 1;
            turnos += 1;
            break;
          }
          if(HPC <= 0){
          pantalla = 3;
        }
        }else
        if(movrx == 60){
          if(HPM <= 270){
            switch(key){
              case 'e':
              HPM = HPM + int(random(0,20));
              jugador += 1;
              turnos += 1;
              break;
            }
          }
          fill(255);
          textSize(40);
          text("q: Destello",(width/2)-300,(height/2)+250);
          text("w: Plasma\nDestructor",(width/2),(height/2)+250);
          text("e: Reparacion",(width/2)+300,(height/2)+250);
          switch(key){
            case 'q':
            HPF2 = HPF2 - int(random(5,20));
            HPMX2 = HPMX2 - int(random(5,20));
            HPC2 = HPC2 - int(random(5,20));
            HPM2 = HPM2 - int(random(5,20));
            HPE2 = HPE2 - int(random(5,20));
            jugador += 1;
            turnos += 1;
            break;
            case 'w':
            HPF2 = HPF2 - int(random(0,40));
            HPMX2 = HPMX2 - int(random(0,40));
            HPC2 = HPC2 - int(random(0,40));
            HPM2 = HPM2 - int(random(0,40));
            HPE2 = HPE2 - int(random(0,40));
            jugador += 1;
            turnos += 1;
            break;
          }
          if(HPM <= 0){
          pantalla = 3;
        }
        }else
        if(movrx == 80){
          if(HPE <= 230){
            switch(key){
              case 'e':
              HPE = HPE + int(random(0,20));
              jugador += 1;
              turnos += 1;
              break;
            }
          }
          fill(255);
          textSize(40);
          text("q: Fuego",(width/2)-300,(height/2)+250);
          text("w: Castigo",(width/2),(height/2)+250);
          text("e: Flamas\ndel Infierno",(width/2)+300,(height/2)+250);
          switch(key){
            case 'q':
            HPF2 = HPF2 - int(random(5,20));
            HPMX2 = HPMX2 - int(random(5,20));
            HPC2 = HPC2 - int(random(5,20));
            HPM2 = HPM2 - int(random(5,20));
            HPE2 = HPE2 - int(random(5,20));
            jugador += 1;
            turnos += 1;
            break;
            case 'w':
            HPF2 = HPF2 - int(random(0,40));
            HPMX2 = HPMX2 - int(random(0,40));
            HPC2 = HPC2 - int(random(0,40));
            HPM2 = HPM2 - int(random(0,40));
            HPE2 = HPE2 - int(random(0,40));
            jugador += 1;
            turnos += 1;
            break;
          }
          if(HPE <= 0){
          pantalla = 3;
        }
        }
      }
    }
  }
}

class jugadorvida{
  void mostrar(){
    if(jugador == 0 || jugador == 1){
      fill(255);
      text("Turno\nnumero:\n"+ turnos,(width/2),(height/2)+130);
    }
    
        if(movrx == 0){
          fill(255);
          text("P1",(width/2)-350,(height/2)+190);
          text("HP: "+HPF,(width/2)-200,(height/2)+190);
        }
        if(movrx == 20){
          fill(255);
          text("P1",(width/2)-350,(height/2)+190);
          text("HP: "+HPMX,(width/2)-200,(height/2)+190);
        }
        if(movrx == 40){
          fill(255);
          text("P1",(width/2)-350,(height/2)+190);
          text("HP: "+HPC,(width/2)-200,(height/2)+190);
        }
        if(movrx == 60){
          fill(255);
          text("P1",(width/2)-350,(height/2)+190);
          text("HP: "+HPM,(width/2)-200,(height/2)+190);
        }
        if(movrx == 80){
          fill(255);
          text("P1",(width/2)-350,(height/2)+190);
          text("HP: "+HPE,(width/2)-200,(height/2)+190);
        }
        if(movr2x == 0){
          fill(255);
          text("P2",(width/2)+350,(height/2)+190);
          text("HP: "+HPF2,(width/2)+200,(height/2)+190);
        }
        if(movr2x == 20){
          fill(255);
          text("P2",(width/2)+350,(height/2)+190);
          text("HP: "+HPMX2,(width/2)+200,(height/2)+190);
        }
        if(movr2x == 40){
          fill(255);
          text("P2",(width/2)+350,(height/2)+190);
          text("HP: "+HPC2,(width/2)+200,(height/2)+190);
        }
        if(movr2x == 60){
          fill(255);
          text("P2",(width/2)+350,(height/2)+190);
          text("HP: "+HPM2,(width/2)+200,(height/2)+190);
        }
        if(movr2x == 80){
          fill(255);
         text("P2",(width/2)+350,(height/2)+190);
          text("HP: "+HPE2,(width/2)+200,(height/2)+190);
        }
  }
}

class pantallafinal{
  void ganador(){
    if(jugador == 1){
      delta+=0.002;
      for(int i= 0; i<800; i+=6){
        for(int j = 0; j<600; j+=6){
         noStroke();
         fill(noise(i*0.01+delta,j*0.01,delta)*255,100);
         rect(i,j,6,6);
        }
      }
      fill(255);
      textSize(50);
      text("FELICIDADES EL GANADOR ES:\nP1",width/2,height/2);
    }
    if(jugador == 0){
      delta+=0.002;
      for(int i= 0; i<800; i+=6){
        for(int j = 0; j<600; j+=6){
         noStroke();
         fill(noise(i*0.01+delta,j*0.01,delta)*255,100);
         rect(i,j,6,6);
        }
      }
      fill(255);
      textSize(50);
      text("FELICIDADES EL GANADOR ES:\nP2",width/2,height/2);
    }
  }
}

class botones{
  void cambios(){
    if(pantalla == 0){
      switch(key){
        case 'i':
        pantalla = 4;
        break;
        case 'h':
        pantalla = 5;
        break;
      }
    }
    if(pantalla < 2){
      switch(key){
      case ENTER:
      pantalla += 1;
      break;
      }
    }
      
  if(pantalla == 1){
      switch(keyCode){
        case LEFT:
        movr2x  -= 20;
        break;
        case RIGHT:
        movr2x += 20;
        break;
      }
    }
    if(pantalla == 1){
      switch(key){
        case 'a':
        movrx -= 20;
        break;
        case 'd':
        movrx += 20;
        break;
      }
    }
    if(pantalla >= 3){
      switch(key){
        case ' ':
        pantalla = 0;
        movrx = 0;
        movr2x = 0;
        HPF = 200;
        HPMX = 280;
        HPC = 150;
        HPM = 290;
        HPE = 250;
        HPF2 = 200;
        HPMX2 = 280;
        HPC2 = 150;
        HPM2 = 290;
        HPE2 = 250;
        jugador = 0;
        turnos = 1;
        break;
      }
    }
    if(pantalla == 2){
      switch(key){
        case 'J':
        pantalla = 6;
        break;
      }
    }
  }
}

class peleajefe{
  void pelea(){
    oficial.display();
    delta+=0.002;
      for(int i= 0; i<800; i+=6){
        for(int j = 0; j<600; j+=6){
         noStroke();
         fill(noise(i*0.01+delta,j*0.01,delta)*255,100);
         rect(i,j,6,6);
        }
      }
    fill(random(0,255),random(0,255),random(0,255));
    for(int i=0;i<(turnos*20);i++){
      rect(random(width),random(height),t,t);
    }
    for(int i=0;i<200;i++){
      fill(random(50,220));
      rect(random(300,500),random(100,300),random(t,t*5),random(t,t*5));
    }
    
      int movx = 0;
      int movy = 0;
      fill(255);
      rect(posx+(t),posy+(t*(2+movy)),762,32,90,90,90,90);
      fill(200,0,0);
      rect(posx+(t*(2+movx)),posy+(t*(3+movy)),750,20,90,90,90,90);
      fill(#1CFF00);
      rect(posx+(t*(2+movx)),posy+(t*(3+movy)),vidajefe,20,90,90,90,90);
      fill(255);
      text("BOSS",posx+(t*8),posy+(t*(15+movy)));
    P1.jugadores1();
    P1.jugadores2();
    P1.HP1();
    P1.HP2();
    j.ataques1();
    j.ataques2();
    vida.mostrar();
    j.ataquesjefe();
  }
  
  void ataques2(){
    if(pantalla == 6){
      if(jugador == 0){
        fill(255);
        text("turno de:\nP1",(width/2),(height/2)+80);
        if(movrx == 0){
          if(HPF <= 180){
            switch(key){
              case 'e':
              HPF = HPF + int(random(0,20));
              jugador += 1;
              turnos += 1;
              break;
            }
          }
          fill(255);
          textSize(40);
          text("q: Golpe\nFntasma",(width/2)-300,(height/2)+250);
          text("w: Espectro",(width/2),(height/2)+250);
          text("e: Curacion\nDemencial",(width/2)+300,(height/2)+250);
          switch(key){
            case 'q':
            vidajefe = vidajefe - int(random(5,20));
            jugador += 1;
            turnos += 1;
            break;
            case 'w':
            vidajefe = vidajefe - int(random(0,40));
            jugador += 1;
            turnos += 1;
            break;
          }
          if(HPF <= 0){
          pantalla = 7;
        }
        }else
        if(movrx == 20){
          if(HPMX <= 260){
            switch(key){
              case 'e':
              HPMX = HPMX + int(random(0,20));
              jugador += 1;
              turnos += 1;
              break;
            }
          }
          fill(255);
          textSize(40);
          text("q: Laser",(width/2)-300,(height/2)+250);
          text("w: Plasma",(width/2),(height/2)+250);
          text("e: Reparacion",(width/2)+300,(height/2)+250);
          switch(key){
            case 'q':
            vidajefe = vidajefe - int(random(5,20));
            jugador += 1;
            turnos += 1;
            break;
            case 'w':
            vidajefe = vidajefe - int(random(0,40));
            jugador += 1;
            turnos += 1;
            break;
          }
          if(HPMX <= 0){
          pantalla = 7;
        }
        }else
        if(movrx == 40){
          if(HPC <= 140){
            switch(key){
              case 'e':
              HPC = HPC + int(random(5,30));
              jugador += 1;
              turnos += 1;
              break;
            }
          }
          fill(255);
          textSize(40);
          text("q: Puñetaso",(width/2)-300,(height/2)+250);
          text("w: Patada",(width/2),(height/2)+250);
          text("e: Agua\nSanadora",(width/2)+300,(height/2)+250);
          switch(key){
            case 'q':
            vidajefe = vidajefe - int(random(5,20));
            jugador += 1;
            turnos += 1;
            break;
            case 'w':
            vidajefe = vidajefe - int(random(0,40));
            jugador += 1;
            turnos += 1;
            break;
          }
          if(HPC <= 0){
          pantalla = 7;
        }
        }else
        if(movrx == 60){
          if(HPM <= 270){
            switch(key){
              case 'e':
              HPM = HPM + int(random(0,20));
              jugador += 1;
              turnos += 1;
              break;
            }
          }
          fill(255);
          textSize(40);
          text("q: Destello",(width/2)-300,(height/2)+250);
          text("w: Plasma\nDestructor",(width/2),(height/2)+250);
          text("e: Reparacion",(width/2)+300,(height/2)+250);
          switch(key){
            case 'q':
            vidajefe = vidajefe - int(random(5,20));
            jugador += 1;
            turnos += 1;
            break;
            case 'w':
            vidajefe = vidajefe - int(random(0,40));
            jugador += 1;
            turnos += 1;
            break;
          }
          if(HPM <= 0){
          pantalla = 7;
        }
        }else
        if(movrx == 80){
          if(HPE <= 230){
            switch(key){
              case 'e':
              HPE = HPE + int(random(0,20));
              jugador += 1;
              turnos += 1;
              break;
            }
          }
          fill(255);
          textSize(40);
          text("q: Fuego",(width/2)-300,(height/2)+250);
          text("w: Castigo",(width/2),(height/2)+250);
          text("e: Flamas\ndel Infierno",(width/2)+300,(height/2)+250);
          switch(key){
            case 'q':
            vidajefe = vidajefe - int(random(5,20));
            jugador += 1;
            turnos += 1;
            break;
            case 'w':
            vidajefe = vidajefe - int(random(0,40));
            jugador += 1;
            turnos += 1;
            break;
          }
          if(HPE <= 0){
          pantalla = 7;
        }
        }
      }
    }
  }
  
  void ataques1(){
    if(pantalla == 6){
      if(jugador == 1){
        fill(255);
        text("turno de:\nP2",(width/2),(height/2)+80);
        if(movr2x == 0){
          if(HPF2 <= 180){
            switch(key){
              case '6':
              HPF2 = HPF2 + int(random(0,20));
              jugador += 1;
              turnos += 1;
              break;
            }
          }
          fill(255);
          textSize(40);
          text("4: Golpe\nFntasma",(width/2)-300,(height/2)+250);
          text("5: Espectro",(width/2),(height/2)+250);
          text("6: Curacion\nDemencial",(width/2)+300,(height/2)+250);
          switch(key){
            case '4':
            vidajefe = vidajefe - int(random(5,20));
            jugador += 1;
            turnos += 1;
            break;
            case '5':
            vidajefe = vidajefe - int(random(0,40));
            jugador += 1;
            turnos += 1;
            break;
          }
          if(HPF2 <= 0){
          pantalla = 7;
        }
        }else
        if(movr2x == 20){
          if(HPMX2 <= 260){
            switch(key){
              case '6':
              HPMX2 = HPMX2 + int(random(0,20));
              jugador += 1;
              turnos += 1;
              break;
            }
          }
          fill(255);
          textSize(40);
          text("q: Laser",(width/2)-300,(height/2)+250);
          text("w: Plasma",(width/2),(height/2)+250);
          text("e: Reparacion",(width/2)+300,(height/2)+250);
          switch(key){
            case '4':
            vidajefe = vidajefe - int(random(5,20));
            jugador += 1;
            turnos += 1;
            break;
            case '5':
            vidajefe = vidajefe - int(random(0,40));
            jugador += 1;
            turnos += 1;
            break;
          }
          if(HPMX2 <= 0){
          pantalla = 7;
        }
        }else
        if(movr2x == 40){
          if(HPC2 <= 140){
            switch(key){
              case '6':
              HPC2 = HPC2 + int(random(5,30));
              jugador += 1;
              turnos += 1;
              break;
            }
          }
          fill(255);
          textSize(40);
          text("q: Puñetaso",(width/2)-300,(height/2)+250);
          text("w: Patada",(width/2),(height/2)+250);
          text("e: Agua\nSanadora",(width/2)+300,(height/2)+250);
          switch(key){
            case '4':
            vidajefe = vidajefe - int(random(5,20));
            jugador += 1;
            turnos += 1;
            break;
            case '5':
            vidajefe = vidajefe - int(random(0,40));
            jugador += 1;
            turnos += 1;
            break;
          }
          if(HPC2 <= 0){
          pantalla = 7;
        }
        }else
        if(movr2x == 60){
          if(HPM2 <= 270){
            switch(key){
              case '6':
              HPM2 = HPM2 + int(random(0,20));
              jugador += 1;
              turnos += 1;
              break;
            }
          }
          fill(255);
          textSize(40);
          text("q: Destello",(width/2)-300,(height/2)+250);
          text("w: Plasma\nDestructor",(width/2),(height/2)+250);
          text("e: Reparacion",(width/2)+300,(height/2)+250);
          switch(key){
            case '4':
            vidajefe = vidajefe - int(random(5,20));
            jugador += 1;
            turnos += 1;
            break;
            case '5':
            vidajefe = vidajefe - int(random(0,40));
            jugador += 1;
            turnos += 1;
            break;
          }
          if(HPM2 <= 0){
          pantalla = 7;
        }
        }else
        if(movr2x == 80){
          if(HPE2 <= 230){
            switch(key){
              case '6':
              HPE2 = HPE2 + int(random(0,20));
              jugador += 1;
              turnos += 1;
              break;
            }
          }
          fill(255);
          textSize(40);
          text("q: Fuego",(width/2)-300,(height/2)+250);
          text("w: Castigo",(width/2),(height/2)+250);
          text("e: Flamas\ndel Infierno",(width/2)+300,(height/2)+250);
          switch(key){
            case '4':
            vidajefe = vidajefe - int(random(5,20));
            jugador += 1;
            turnos += 1;
            break;
            case '5':
            vidajefe = vidajefe - int(random(0,40));
            jugador += 1;
            turnos += 1;
            break;
          }
           if(HPE2 <= 0){
          pantalla = 7;
        }
        }
      }
    }
  }
  void ataquesjefe(){
    if(pantalla == 6){
      if(jugador == 2){
        HPF = HPF - int(random(30,50));
        HPMX = HPMX - int(random(30,50));
        HPC = HPC - int(random(30,50));
        HPM = HPM - int(random(30,50));
        HPE = HPE - int(random(30,50));
        HPF2 = HPF2 - int(random(30,50));
        HPMX2 = HPMX2 - int(random(30,50));
        HPC2 = HPC2 - int(random(30,50));
        HPM2 = HPM2 - int(random(30,50));
        HPE2 = HPE2 - int(random(30,50));
        jugador = 0;
      }
    }
  }
}

class pantallas{
  void display(){
    if(pantalla == 0){
      player2.play();
      player.pause();
      delta+=0.002;
      background(0);
      for(int i= 0; i<800; i+=6){
        for(int j = 0; j<600; j+=6){
         noStroke();
         fill(noise(i*0.01+delta,j*0.01,delta)*255,100);
         rect(i,j,6,6);
        }
      }
      
      fill(255);
      textSize(100);
      textAlign(CENTER);
      text("ERROR",width/2,(height/2)-80);
      textSize(40);
      text("Preciona ENTER para JUGAR",width/2,(height/2)+100);
      text("Preciona h para ver HISTORIA",width/2,(height/2)+160);
      text("Preciona i para ver instrucciones",width/2,(height/2)+220);
      noFill();
      stroke(200,0,0);
      rect((width/2)-300,(height/2)+50,600,200);
      
    }
    if(pantalla == 1){
      select.pantalla2();
    }
    if(pantalla == 2){
      oficial.display();
      select.pantallaPelea();
      player.play();
      player2.pause();
    }
    if(pantalla == 3){
      oficial.display();
      v.ganador();
      player.pause();
    }
    if(pantalla == 4){
      //instrucciones
      int pos = 30;
      delta+=0.002;
      background(0);
      for(int i= 0; i<800; i+=6){
        for(int j = 0; j<600; j+=6){
         noStroke();
         fill(noise(i*0.01+delta,j*0.01,delta)*255,100);
         rect(i,j,6,6);
        }
      }
      fill(255);
      text("P1:\n*Presiona las teclas q, w y e para atacar.\n*Presiona las teclas a y d para seleccionar a\ntu personaje.",width/2,(height/2)-250+pos);
      text("P2:\n*Presiona las teclas 4, 5 y 6 para atacar.\n*Presiona las teclas LEFT y RIGHT para\nseleccionar a tu personaje.",width/2,(height/2)-120+pos);
      text("GENERAL:\n*Utilisa la tecla SPACE para regresar al\ninicion en caso de estar en historia,\ninstrucciones o estar en la\npantalla de conclucion",width/2,(height/2)+10+pos);
      text("*Presiona ENTER para cambiar entrar al \njuego y para seleccionar personaje",width/2,(height/2)+160+pos);
    }
    if(pantalla == 5){
      //historia
      int pos = 200;
      delta+=0.002;
      background(0);
      for(int i= 0; i<800; i+=6){
        for(int j = 0; j<600; j+=6){
         noStroke();
         fill(noise(i*0.01+delta,j*0.01,delta)*255,100);
         rect(i,j,6,6);
        }
      }
      fill(255);
      textSize(30);
      textAlign(CENTER);
      text("Carl,Fantasma y El devorador son de la dimension A mientras",width/2,(height/2)-250+pos);
      text("que Maximo y M.C.I son de la dimension B. Ambas dimensiones ",width/2,(height/2)-220+pos);
      text("estan colisionande ocasionando el encuentro de ellos en un ",width/2,(height/2)-190+pos);
      text("bosque desolado.\nNo existira un jefe verdad...",width/2,(height/2)-160+pos);
    }
    if(pantalla == 6){
      //pelea contra el jefe
      j.pelea();
    }
    if(pantalla == 7){
      //conclucion de la pelea con el jefe
      oficial.display();
    delta+=0.002;
      for(int i= 0; i<800; i+=6){
        for(int j = 0; j<600; j+=6){
         noStroke();
         fill(noise(i*0.01+delta,j*0.01,delta)*255,100);
         rect(i,j,6,6);
        }
      }
    fill(random(0,255),random(0,255),random(0,255));
    for(int i=0;i<(turnos*20);i++){
      rect(random(width),random(height),t,t);
    }
    fill(255);
    text("LO DESTRUIRE TODO",width/2,height/2);
    }
  }
}

Maya una;
Fondo oficial;
PersonajesP1 P1;
seleccion1 P3;
seleccion2 P4;
selccionpersonajes select;
pantallas pantallajuego;
miniatura icono;
turnos a;
botones c;
pantallafinal v;
Minim minim;
AudioPlayer player;
AudioPlayer player2;
jugadorvida vida;
peleajefe j;


void setup(){
  size(800,600);
  una = new Maya();
  oficial = new Fondo();
  P1 = new PersonajesP1();
  P3 = new seleccion1();
  P4 = new seleccion2();
  //pantallanueva = new cambio();
  select = new selccionpersonajes();
  pantallajuego = new pantallas();
  icono = new miniatura();
  a = new turnos();
  c = new botones();
  v = new pantallafinal();
  bits = loadFont("8-Bit-Madness-48.vlw");
  textFont(bits);
  minim = new Minim(this);
  player = minim.loadFile("Falling In Reverse - Popular Monster.WAV");
  player2 = minim.loadFile("Rammstein - Deutschland.WAV");
  vida = new jugadorvida();
  j = new peleajefe();
}

void draw(){
  pantallajuego.display();
}

void keyPressed(){
  c.cambios();
  a.ataques1();
  a.ataques2();
}
