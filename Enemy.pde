/**
Enemy Objesi: Enemy objesi, oyunumuzdaki düşman tanklara verilen isimdir.
Enemy objeleri oyun boyunca sağ ve sol yönlerinde ilerlerler ve Blok objesi doğrultusunda
aşağı inerler. 
*/


/** 
 Enemy objesini oluştururken, önceden oluşturduğumuz Rectangle objesinin özelliklerini almasını
 istediğimiz için extends komutu ile Rectangle objesinin özelliklerini Enemy objesine inherit ediyoruz.
 */
class Enemy extends Rectangle {
  //Enemy objesinin hızı
  float speed = 1;


/** 
  Enemy objesi, bütün özelliklerini Rectangle objesinden aldığından dolayı Enemy objesinin özelliklerini
  ve function'larını belirlemeden önce bir tane Enemy objesi tanımlamamız, ve bu objeye özelliklerini
  tanımlamamız gerekiyor.
  */
  Enemy(float x, float y, float w, float h, float r) {
    super(x, y, w, h, r);
  }
  /** 
  İlk sıranın ilerleme kodu
  */
  void update1() {
    x = x + speed; 
    if (blok.x > 426) {
      y = y + grid*2;
      speed *= -1.2;
    } else if (blok.x < 0 ) {
      y = y + grid*2;
      speed *= -1.2;
    }
  }

  /** 
  İkinci sıranın ilerleme kodu
  */
  void update2() {
    x = x + speed;
    if (blok.x > 426) {
      y = y + grid*2;
      speed *= -1.2;
    } else if (blok.x < 0 ) {
      y = y + grid*2;
      speed *= -1.2;
    }
  }

  /** 
  Üçüncü sıranın ilerleme kodu
  */
  void update3() {
    x = x + speed;
    if (blok.x > 426) {
      y = y + grid*2;
      speed *= -1.2;
    } else if (blok.x < 0 ) {
      y = y + grid*2;
      speed *= -1.2;
    }
  }
  /** 
  Dördüncü sıranın ilerleme kodu
  */
  void update4() {
    x = x + speed;
    if (blok.x > 426) {
      y = y + grid*2;
      speed *= -1.2;
    } else if (blok.x < 0 ) {
      y = y + grid*2;
      speed *= -1.2;
    }
  }
  /** 
  Enemy objesinin oluşum kodu
  */ 
  void show() {
    fill(165, 0, 0);
    rect(x, y, w, h, r);
  }
  /** 
  Enemy objesinin yok olma kodu
  */
  void hide() {
    fill(255);
    speed = 0;
    x = 50;
    y = width;
    bullet.speed = 0;
    bullet.y = height-grid-10;
    keyCode = 0;
  }
}