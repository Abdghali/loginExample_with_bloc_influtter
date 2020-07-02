
import 'dart:async';
class Validator{

  final validateEmail = StreamTransformer<String,String>.fromHandlers(
      handleData: (email,sink){
        if(email.contains('@') && email.contains('.')){
          sink.add(email);
        }else{
          sink.addError("Enter valid email ");
        }
      }
  );

  final validatePassword = StreamTransformer<String,String>.fromHandlers(
      handleData: (password,sink){
        if(password.length > 6 && password.length <10 ){
          sink.add(password);
        }else{
          sink.addError("Enter valid password length");
        }
      }
  );




}