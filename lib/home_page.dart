// import 'package:aa/login_page.dart';
// import 'package:aa/routes.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() =>
//       _MyWidgetState();
// }

// class _MyWidgetState extends State<HomePage> {
//  void  onSumbit (){
//   setState(() {
//     ScaffoldMessenger.of(context).clearSnackBars();
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         showCloseIcon: true,
//         content: Row(
//           children: [
//             Icon(Icons.warning,
//             color: Colors.white,
//         ),
//             SizedBox(
//               width: 30,
//             ),
//             Text("YOur nofticon here"),
//           ],
//       ),
        
//         ),
//     );
//   });
//  }
// void onPress (){
//   setState(() {
//     ScaffoldMessenger.of(context).clearSnackBars();
//     ScaffoldMessenger.of(context).showSnackBar(
//     SnackBar(
//         showCloseIcon: true,
//         backgroundColor: Color.fromARGB(255, 88, 83, 7),
//         content: Text ("Your notifcation here"
      
//         ),
        
//         action: SnackBarAction(label: "Close", 
//         textColor: Color.fromARGB(255, 248, 0, 0),
        
//          onPressed: () => ScaffoldMessenger.of(context).clearSnackBars),
        
//       ),
//     );
//   });
// }
// void onWarning (){
//   setState(() {
//     ScaffoldMessenger.of(context).clearSnackBars();
//     ScaffoldMessenger.of(context).showSnackBar(
//     SnackBar(
//         showCloseIcon: true,
//         backgroundColor: Color.fromARGB(255, 136, 4, 37),
//         content: Text("Your notifcation here"
        
//         ),
        
//         action: SnackBarAction(label: "Close", 
//         textColor: Color.fromARGB(255, 231, 231, 231),
        
//          onPressed: () => ScaffoldMessenger.of(context).clearSnackBars),
        
//       ),
//     );
//   });
// }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueAccent,
//         centerTitle: true,
//         title: Text(
//           "Home Page",
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: onSumbit,
//               child: Text("First snack bar"),
            
//             ),
//             ElevatedButton(onPressed: onPress,
//              child: Text("Second snack bar"),
//              ),
//             ElevatedButton(onPressed: onWarning,
//              child: Text("Thrid snack bar"),
//              ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:aa/tile_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
void onTapTile(String title) {
  Navigator.push(
    context, 
    MaterialPageRoute(builder: (_) => TilePage(title)),
    );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          "home page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
      child: ListView.builder(itemBuilder: (context, index) => ListTile(
        title: Text("$index"),
        leading: Icon(Icons.facebook),
        trailing: Icon(Icons.chevron_right),
        subtitle: Text("$index"),
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        dense: true,
        horizontalTitleGap: 50,
        onTap: () => onTapTile("$index"),
),
      ),
      ),
    );
  }
}