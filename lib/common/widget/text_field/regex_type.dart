
enum InputRegex {

  NONE("",""),
  EMAIL("asd","Invalid Email"),
  USERNAME("","Invalid Username")
  ;



  final String pattern , message;
  const InputRegex(this.pattern,this.message);
}