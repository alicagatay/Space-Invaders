/** 
 Bullet Objesi: Bullet Objesi, oyuncunun Enemy objelerini vurmak için kullanacağı mermileri oluşturan kod parçasıdır.
 */



/** 
 Bullet objesini oluştururken, önceden oluşturduğumuz Rectangle objesinin özelliklerini almasını
 istediğimiz için extends komutu ile Rectangle objesinin özelliklerini Bullet objesine inherit ediyoruz.
 */
class Bullet extends Rectangle {
  float speed;
  
  
  /** 
  Bullet objesi, bütün özelliklerini Rectangle objesinden aldığından dolayı Bullet objesinin özelliklerini
  ve function'larını belirlemeden önce bir tane Bullet objesi tanımlamamız, ve bu objeye özelliklerini
  tanımlamamız gerekiyor.
  */
  Bullet(float x, float y, float w, float r) {
    super(x, y, w, w, r);
  }
  /** 
   Bullet objesinin oluşum kodu
   */
  void show() {
    fill(0);
    rect(x, y, w, w, r);
  }
  /** 
   Bullet objesinin ilerlemesini sağlayan kod 
   */
  void move() {
    if (keyCode == 32) {
      y += speed;
    } else {
      bullet.x = mouseX + 20;
    }
    /** 
     Bullet objesinin tavana çarpıp çarpmadığını belirleyen kod
     */
    if (y < 0) {
      speed = 0;
      y = tank.y-10;
      keyCode = 0;
    } else if (y > 0) {
      speed = -25;
    }
  }
}