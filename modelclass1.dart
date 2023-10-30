class Model
{
  String? image ;
  String? text ;

  Model(this.image,this.text);

}

List toy= dataModel.map((e) => Model(e["image"], e["text"])).toList();

var dataModel = [
  {"image":"assets1/am1.jpg","text":"mobiles"},
  {"image":"assets1/lp.jpg","text":"laptop"},

];