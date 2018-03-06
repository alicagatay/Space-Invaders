/** 
Rectangle objesi, oyunumuzun en önemli parçasıdır. Bu obje, oyunumuzda bulunan diğer objelerin extend ettiği,
yani özelliklerini aldığı ana objedir. Bu yüzden bu alanda bulunan bütün özellikler, Rectangle class'ını
extend eden objelere otomatik olarak aktarılmıştır.
*/


class Rectangle {
  /** 
  Rectangle objesinde kullanıcağımız variable'lar
  */
  float x;
  float y;
  float w;
  float h;
  float r;

  /** 
  Bu kod parçasında ana objemiz olan Rectangle objemize değerlerini verip oluşturuyoruz ve sonrada yukarıda
  oluşturduğumuz variable'lar ile Rectangle objemizde tanımladığımız özelliklere değer veriyoruz.
  */
  Rectangle(float x, float y, float w, float h, float r) {
    this.x = x;
    this.w = w;
    this.y = y;
    this.h = h;
    this.r = r;
  }
  /** 
  Bu bölümde oyunumuzun en önemli fonksiyonu olan çarpma fonksiyonunu oluşturuyoruz.
  Çarpma fonksiyonunu oluşturabilmek içinde boolean function'u dediğimiz bir fonksiyon yaratıyoruz. 
  */
  boolean intersects(Rectangle other) {
    float left = x;
    float right = x + w;
    float top = y;
    float bottom = y + h;


    float oleft = other.x;
    float oright = other.x + other.w;
    float otop = other.y;
    float obottom = other.y + other.h;



    /** 
    Bu bölümde ise çarpma fonksiyonunun çalışıp çalışmadığını test ediyoruz. 
    */
    return !(left > oright || 
      right < oleft ||
      top > obottom ||
      bottom < otop);
  }
}