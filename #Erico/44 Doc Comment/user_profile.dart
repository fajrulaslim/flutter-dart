import 'package:flutter/material.dart';

/// Class UserProfile digunakan untuk menampilkan profile user ke layar dengan indah
class UserProfile extends StatelessWidget {
  /// field ini digunakan untuk menyimpan nama user
  final String name;
  final String role;
  final String photoURL;

  /// * **name** berisi nama user, *nilai defaultnya* adalah `no name`
  /// 
  /// * [role] berisi peran dari user, nilai defaultnya adalah `no role`
  /// 
  /// * [photoURL] berisi link foto user, nilai defaultnya adalah `null`
  /// 
  /// Contoh:
  /// ```
  /// final UserProfile profile = UserProfile(
  /// name: "Nama User",
  /// role: "Peran User",
  /// photoURL: "https://cdn4.iconfinder.com/data/icons/web-ui-color/128/Account-512.png",
  /// );
  /// ```
  UserProfile({this.name = "No Name", this.role="No Role", this.photoURL});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image(
          image: NetworkImage(
            (photoURL != null) ? photoURL : "https://cdn4.iconfinder.com/data/icons/web-ui-color/128/Account-512.png"
          ),
          fit: BoxFit.cover,
          width: 200,
          height: 200,
        ),
        SizedBox(height: 10,),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(height: 5,),
        Text(
          "[ $role ]",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        )
      ],
    );
  }
}