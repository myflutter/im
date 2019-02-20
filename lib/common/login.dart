import 'package:flutter/material.dart';

class  MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => new _MessagePageState();
  
}

class _MessagePageState extends State<MessagePage> {
  // 全局key来获取form表单组件
  GlobalKey<FormState> loginKey =new GlobalKey<FormState>();
  String userName;
  String password;
  void login() {
    // 读取当前的Form状态
    var loginForm=loginKey.currentState;
    if(loginForm.validate()) {
      loginForm.save();
      print('save success');
    }
  }
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          padding: EdgeInsets.all(16.0),
          child: new Form(
            key: loginKey,
            child: new Column(
              children: <Widget>[
                new  TextFormField(
                  decoration: new InputDecoration(
                    labelText: '请输入用户名',
                    prefixIcon: Icon(Icons.person)
                  ),
                  onSaved: (value) {
                    userName=value;
                  },
                  onFieldSubmitted: (value){
                    print('username submited');
                  },
                ),
                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: '请输入密码',
                    prefixIcon: Icon(Icons.lock)
                  ),
                  obscureText: true,
                  validator: (value) {
                    return value.length<6?"密码长度不够6位":null;
                  },
                  onSaved: (value){
                    password=value;
                  },
                )
              ],
            ),
          ),
        ),
        new SizedBox(
          width: 320.0,
          height: 42.0,
          child: new RaisedButton(
            onPressed: login,
            child: new Text('登录',style:TextStyle(fontSize:18.0) ),
          ),
        )
      ],
    );
  }
}