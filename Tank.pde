/**
Tank Objesi: Tank Objesi, oyunumuzda bizim kontrol ettiğimiz objedir. 
Yani oyundaki ana karakter Tank objesidir.
*/



/** 
Tank objesini oluştururken, önceden oluşturduğumuz Rectangle objesinin özelliklerini almasını
istediğimiz için extends komutu ile Rectangle objesinin özelliklerini Tank objesine inherit ediyoruz.
*/
class Tank extends Rectangle {

  /** 
  Tank objesi, bütün özelliklerini Rectangle objesinden aldığından dolayı Tank objesinin özelliklerini
  ve function'larını belirlemeden önce bir tane Tank objesi tanımlamamız, ve bu objeye özelliklerini
  tanımlamamız gerekiyor.
  */
  Tank(float x, float y, float w, float h, float r) {
    super(x, y, w, h, r);
  }
  /** 
  Tank objesinin ortaya çıkma ve hareket etme kodu
  */
  void show() {
    fill(0);
    rect(x, y, w, h, r);
    x = mouseX;
  }
}