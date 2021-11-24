import 'package:flutter/material.dart';
import 'package:flutter_clopg/register/register_model.dart';
import 'package:provider/provider.dart';

import '../app.dart';

class RegisterPage extends StatefulWidget {
@override
_RegisterPageState createState() => _RegisterPageState();

}

class _RegisterPageState extends State<RegisterPage> {
bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RegisterModel>(
      create: (_) => RegisterModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Resister'),
          centerTitle: true,
          elevation: 10,
        ),
        body: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _registerField(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _registerField(){
    return ChangeNotifierProvider<RegisterModel>(
      create: (_) => RegisterModel(),
      child: Consumer<RegisterModel>(builder: (context, model, child){
        return Container(
          margin: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 50),
                child: Text(
                  'Welcome to CLoPG !',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(196, 135, 198, .3),
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      )
                    ]
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(
                              color: Colors.grey.shade200
                          ))
                      ),
                      child: TextField(
                        controller: model.titleController,
                        decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            )
                        ),
                        onChanged: (text) {
                          model.setEmail(text);
                        },
                      ),
                    ),
                    Container(
                      child: TextField(
                        controller: model.authorController,
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: IconButton(
                            // 文字の表示・非表示でアイコンを変える
                            icon: Icon(_isObscure ? Icons.visibility_off : Icons.visibility),
                            // アイコンがタップされたら現在と反対の状態をセットする
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          ),
                        ),
                        onChanged: (text) {
                          model.setPassword(text);
                        },
                      ),
                    )
                  ]
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  model.startLoading();

                  // 追加の処理
                  try {
                    await model.signUp();
                    // Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => App(),
                        fullscreenDialog: true,
                      ),
                    );
                  } catch (e) {
                    final snackBar = SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(e.toString()),
                    );
                    ScaffoldMessenger.of(context)
                        .showSnackBar(snackBar);
                  } finally {
                    model.endLoading();
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                  onPrimary: Colors.black,
                ),
                child: Text('                     登録する                      '),
              ),
              if (model.isLoading)
                Container(
                  color: Colors.black54,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
            ],
          ),
        );
      }),
    );
  }
}