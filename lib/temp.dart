class Temp {

  final List users = List.generate(15, (index){
    return "person $index";
  });

  final List messages = List.generate(15, (index){
    return "message from person $index";
  });
}
