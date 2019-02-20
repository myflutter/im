import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './contact_sider_list.dart';
import './contact_item.dart';
import './contact_header.dart';
import './contact_vo.dart';

class  Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => new _ContactsState();
  
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    // 主体实现
    return ContactSiderList(
      // 好友列表数据
      items: contactData,
      // 好友列表头构造器
      headerBuilder: (BuildContext context, int index){
        return Container(
          child: ContactHeader(),
        );
      },
      // 好友列表项构造器
      itemBuilder: (BuildContext context int index){
        return Container(
          color: Colors.white,
          alignment: Alignment.centerLeft,
          child: ContactItem(titleName: contactData[index].name,imageName:contactData[index].avatarUrl),
        );
      },
      // 字母构造器
      sectionBuilder: (BuildContext context, int index) {
        return Container(
          height: 32.0,
          padding: EdgeInsets.only(left: 14.0),
          color: Colors.grey[300],
          alignment: Alignment.centerLeft,
          child: Text(
            contactData[index].seationKey,
            style:TextStyle(fontSize:14.0,color:Color(0xff909090))
          ),
        );
      },
    );
  }
}