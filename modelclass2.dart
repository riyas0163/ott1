class Model
{
  String? image ;
  String? text ;

  Model(this.image,this.text);

}

List grid= dataModel.map((e) => Model(e["image"], e["text"])).toList();

var dataModel = [
  {"image":"assets1/gd1.jpg","text":"Monitors"},
  {"image":"assets1/gn2.jpg","text":"Storage Devices"},
  {"image":"assets1/gn3.jpg","text":"Printers"},
  {"image":"assets1/gn4.jpg","text":"Wifi Routers"},
  {"image":"assets1/gn5.jpg","text":"Soundbars"},

];