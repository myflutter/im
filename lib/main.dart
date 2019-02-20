// 入口程序
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'loading.dart';
import 'app.dart';
import 'search.dart';

void main() => runApp(MyApp());
// 自定义主题，绿色小清新风格
final ThemeData mDefaultTheme = new ThemeData(
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Color(0xFFEBEBEB),
    cardColor: Colors.green);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '聊天室',
        theme: mDefaultTheme,
        routes: <String, WidgetBuilder> {
          "app": (BuildContext context) => new App(),
          "search": (BuildContext context) => new Search(),
          "/friends": (_)=> new WebviewScaffold(
            // webview 插件
            url: "https:// flutter.io",
            appBar: new AppBar(
              title: new Text('flutter 官网'),
            ),
          )
        },
        home: new LoadingPage()
    );
  }
}
