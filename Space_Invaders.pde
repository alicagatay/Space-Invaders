/**
 Oyunu yazdığımız süre boyunca kullanıcağımız objelerin tanımları
 */
Tank tank;
Enemy[] enemy1;
Enemy[] enemy2;
Enemy[] enemy3;
Enemy[] enemy4;
Bullet bullet;
Blok blok;

/**
 Oyunumuzu yazarken genel olarak bütün obje class'larında kullanıcağımız variable'lar.
 */
//Oyunumuzu her bir grid'inin büyüklüğü
float grid = 25;
//Puan verilerinin saklandığı variable
int puan = 0;


void setup() {
  /** 
   Oyunun büyüklüğü
   */
  size(875, 800);


  /** 
   enemy1'ın oluşma kodu
   */
  enemy1 = new Enemy[5];
  for (int i = 0; i < 5; i++) {
    float x = i*100;
    enemy1[i] = new Enemy(x, 150, grid*2, grid, 5);
  }
  /** 
   enemy2'nin oluşum kodu
   */
  enemy2 = new Enemy[5];
  for (int i = 0; i < 5; i++) {
    float x = i*100;
    enemy2[i] = new Enemy(x, 100, grid*2, grid, 5);
  }

  /** 
   enemy3'ün oluşum kodu
   */
  enemy3 = new Enemy[5];
  for (int i = 0; i < 5; i++) {
    float x = i*100;
    enemy3[i] = new Enemy(x, 50, grid*2, grid, 5);
  }

  /** 
   enemy4'ün oluşum kodu
   */
  enemy4 = new Enemy[5];
  for (int i = 0; i < 5; i++) {
    float x = i*100;
    enemy4[i] = new Enemy(x, 0, grid*2, grid, 5);
  }
  /** 
   tank'ın oluşum kodu
   */
  tank = new Tank(width/2-grid/2, height-grid, grid*2, grid, 5);
  /** 
   bullet1'in oluşum kodu
   */
  bullet = new Bullet(mouseX+20, height-grid-10, 10, 3);
  /** 
   bloğun oluşum kodu
   */
  blok = new Blok(0, -grid, enemy1[4].x - enemy1[0].x+50, grid, 5);
}


void draw() {
  //arkaplan rengi
  background(250, 250, 250);
  //objelerin kenar çizgilerini kaldırma
  noStroke();
  /**
   objelere tanımlanan function'ların çalıştırılması
   */
  tank.show();
  bullet.show();
  bullet.move();
  hit1();
  hit2();
  hit3();
  hit4();
  blok.show();
  blok.update();
  //puanlama sisteminin konsola yazılması
    println("Point: " + puan);
}

/** 
 4.sırada bulunan enemy objelerinin yok olması
 */
void hit4() {
  for (Enemy enemy : enemy4) {

    //enemy objesinin ilerlemesi
    enemy.update4();


    /**
     enemy objesinin bullet objesi ile çarpıştırılmasının belirlenmesi
     */
    if ( bullet.intersects(enemy)) {
      enemy.hide();
      puan += 40;
    } else {
      enemy.show();
      puan += 0;
    }
  }
}


/** 
 3.sırada bulunan enemy objelerinin yok olması
 */
void hit3() {
  for (Enemy enemy : enemy3) {


    //enemy objesinin ilerlemesi
    enemy.update3();


    /**
     enemy objesinin bullet objesi ile çarpıştırılmasının belirlenmesi
     */
    if ( bullet.intersects(enemy)) {
      enemy.hide();
      puan +=30;
    } else {
      enemy.show();
      puan+=0;
    }
  }
}



/** 
 2.sırada bulunan enemy objelerinin yok olması
 */
void hit2() {
  for (Enemy enemy : enemy2) {


    //enemy objesinin ilerlemesi
    enemy.update2();


    /**
     enemy objesinin bullet objesi ile çarpıştırılmasının belirlenmesi
     */
    if ( bullet.intersects(enemy)) {
      enemy.hide();
      puan += 20;
    } else {
      enemy.show();
      puan += 0;
    }
  }
}


/** 
 1.sırada bulunan enemy objelerinin yok olması
 */
void hit1() {
  for (Enemy enemy : enemy1) {


    //enemy objesinin ilerlemesi
    enemy.update1();


    /**
     enemy objesinin bullet objesi ile çarpıştırılmasının belirlenmesi
     */
    if ( bullet.intersects(enemy)) {
      enemy.hide();
      puan += 10;
    } else {
      enemy.show();
      puan += 0;
    }
  }
}