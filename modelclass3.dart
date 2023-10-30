class Model
{
  String? image ;
  String? text ;

  Model(this.image,this.text);

}

List smart = dataModel.map((e) => Model(e["image"], e["text"])).toList();

var dataModel = [
  {"image":"assets/rn1.jpg","text":"Oneplus"},
  {"image":"assets/rn2.jpg","text":"narzo"},
  {"image":"assets/rn3.jpg","text":"Samsung"},
  {"image":"assets/rn4.jpg","text":"Mi"},
  {"image":"assets/rn5.jpg","text":"Motorola"},
  {"image":"assets/rn6.jpg","text":"vivo"},
  {"image":"assets/rn7.jpg","text":"Oppo"},

];