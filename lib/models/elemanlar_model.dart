class ElemanlarModel {
  final String title;
  // eğer bilgileri alıp başka bir sayfada değiştirmeyceksek final yaparız
  // eğer değişim olacaksa const yazarız
  final String subtitle;

  ElemanlarModel(this.title, this.subtitle);
  // dışarıdan erişmek için bu kısmı yazdık
}


// elemanlardan birinin örneği:


//   {
//     "title": "Küçük",
//     "subtitle": "Küçük bir açıklama"
//   }