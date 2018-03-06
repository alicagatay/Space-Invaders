/** 
Blok Objesi: Blok Objesi, oyunumuzdaki enemy'lerin sağ sola 
giderken kenar sonlarını detect etmesini sağlayan objedir. 
*/


/** 
Blok objesini oluştururken, önceden oluşturduğumuz Rectangle objesinin özelliklerini almasını
istediğimiz için extends komutu ile Rectangle objesinin özelliklerini Blok objesine inherit ediyoruz.
*/
class Blok extends Rectangle {
  //Blok objesinin hızı
  float speed = 1;
  
  /** 
  Blok objesi, bütün özelliklerini Rectangle objesinden aldığından dolayı Blok objesinin özelliklerini
  ve function'larını belirlemeden önce bir tane Blok objesi tanımlamamız, ve bu objeye özelliklerini
  tanımlamamız gerekiyor.
  */
  Blok(float x, float y, float w, float h, float r) {
    //Blok objesinin özelliklerini, Rectangle objesine göre tanımlama
    super(x, y, w, h, r);
  }
  
  //Blok objesinin ortaya çıkma kodu
  void show() {
    fill(250, 250, 250);
    rect(x, y, w, h, r);
  }

  //Blok objesinin ilerleme kodu
  void update() {
    x = x + speed;
    if (x > 426) {
      y = y + grid*2;
      speed *= -1.2;
    } else if (x < 0 ) {
      y = y + grid*2;
      speed *= -1.2;
    }
  }
}