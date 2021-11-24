import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clopg/register/register_page.dart';
import 'package:provider/provider.dart';
import '../app.dart';
import '../game_list.dart';
import 'login_model.dart';
import '../my_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginModel>(
      create: (_) => LoginModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          centerTitle: true,
          elevation: 10,
        ),
        body: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _loginField(),
              ],
            ),
        ),
      ),
    );
  }

  Widget _loginField() {
    return ChangeNotifierProvider<LoginModel>(
        create: (_) => LoginModel(),
        child: Consumer<LoginModel>(builder: (context, model, child){
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
                  margin: EdgeInsets.only(bottom: 30),
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
                          // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                          decoration: InputDecoration(
                              hintText: 'Email',
                              // border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              )
                          ),
                          onChanged: (text) {
                            model.setEmail(text);
                          },
                        )
                      ),
                      Container(
                        child: TextField(
                          controller: model.authorController,
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            // border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            suffixIcon: IconButton(
                              // 文字の表示・非表示でアイコンを変える
                              icon: Icon(_isObscure
                                  ? Icons.visibility_off
                                  : Icons.visibility),
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
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    model.startLoading();
                    // 追加の処理
                    try {
                      await model.login();
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
                    primary: Colors.orange,
                    onPrimary: Colors.black,
                  ),
                  child: Text('                     ログイン                      '),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Text(
                    'アカウントをお持ちでない場合'
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    // 画面遷移
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    onPrimary: Colors.black,
                  ),
                  child: Text('登録はこちら'),
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
