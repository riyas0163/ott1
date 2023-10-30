class Model
{
  String? image ;
  String? text ;

  Model(this.image,this.text);

}

List m4 = dataModel.map((e) => Model(e["image"], e["text"])).toList();

var dataModel = [
  {"image":"assets1/b1.jpg","text":""},
  {"image":"assets1/b2.jpg","text":""},
  {"image":"assets1/b3.jpg","text":""},
  {"image":"assets1/b4.jpg","text":""},
  {"image":"assets1/b5.jpg","text":""},
  {"image":"assets1/b6.jpg","text":""},
  {"image":"assets1/s7.jpg","text":""},

];