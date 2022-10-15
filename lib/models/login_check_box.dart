// class LoginPage extends StatelessWidget {
//   const LoginPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//           child: SingleChildScrollView(
//             child: Center(
//               child: Column(
//                 children: [
//                   Image.asset('assets/images/main_logo.png'),
//                   const TextField(
//                     decoration: InputDecoration(
//                       labelText: 'Email*',
//                       labelStyle: TextStyle(
//                         color: Colors.black,
//                       ),
//                       enabledBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(
//                           width: 1,
//                           color: Color.fromRGBO(220, 220, 220, 1),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const TextField(
//                     decoration: InputDecoration(
//                       labelText: 'Password',
//                       labelStyle: TextStyle(
//                         color: Colors.black,
//                       ),
//                       enabledBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(
//                           width: 1,
//                           color: Color.fromRGBO(220, 220, 220, 1),
//                         ),
//                       ),
//                     ),
//                   ),
//                   CheckboxListTile(
//                     title: Text("title text"),
//                     value: checked,
//                     onChanged: (checked) {
//                       if(checked){
//                         return !cheked;
//                       });
//                     }, //  <-- leading Checkbox
//                   ),
//                 ],
//               ),
//             ),
//           )),
//     );
//   }
// }