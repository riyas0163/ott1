class Model
{
  String? image ;
  String? text ;

  Model(this.image,this.text);

}

List m4 = dataModel.map((e) => Model(e["image"], e["text"])).toList();

var dataModel = [
  {"image":"assets/s1.jpg","text":""},
  {"image":"assets/s2.jpg","text":""},
  {"image":"assets/s3.jpg","text":""},
  {"image":"assets/s4.jpg","text":""},
  {"image":"assets/s5.jpg","text":""},
  {"image":"assets/s6.jpg","text":""},
  {"image":"assets/s7.jpg","text":""},

];