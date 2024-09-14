// import 'package:flutter/material.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   final TextEditingController _firstNumTEController = TextEditingController();
//   final TextEditingController _secondNumTEController = TextEditingController();
//   final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
//
//   //key identyfy korer jonno final use
//
//   double _result = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Calculator'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Form(
//           key: _formkey,
//           child: Column(
//             children: [
//               TextFormField(
//                 controller: _firstNumTEController,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   hintText: 'First number',
//                   labelText: 'First Number',
//                 ),
//                 validator: (String? value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Enter a value';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(
//                 height: 16,
//               ),
//               TextFormField(
//                 controller: _secondNumTEController,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   hintText: 'Sceond number',
//                   labelText: 'Sceond Number',
//                 ),
//
//                 validator: (String? value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Enterr a value';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(
//                 height: 16,
//               ),
//               _buildButtonBar(),
//               const SizedBox(
//                 height: 24,
//               ),
//               Text(
//                 'Result : ${_result.toStringAsFixed(2)}',
//                 style: const TextStyle(fontSize: 18),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildButtonBar() {
//     return ButtonBar(
//       // mainAxisAlignment: MainAxisAlignment.center,
//       //Row na diya buttonBar use kora jay
//       alignment: MainAxisAlignment.center,
//       children: [
//         IconButton(onPressed: _onTabAddButton, icon: const Icon(Icons.add)),
//         IconButton(
//             onPressed: _onTabsubtractButton, icon: const Icon(Icons.remove)),
//         TextButton(
//             onPressed: _onTabDivideButton,
//             child: const Text(
//               '/',
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 24,
//               ),
//             )),
//         TextButton(
//             onPressed: _onTabMultiplyButton,
//             child: const Text(
//               '*',
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 24,
//               ),
//             )),
//       ],
//     );
//   }
//
//   void _onTabAddButton() {
//     if (_formkey.currentState!.validate()) {
//       double firstNum = double.tryParse(_firstNumTEController.text) ?? 0;
//       double secondNum = double.tryParse(_secondNumTEController.text) ?? 0;
//       _result = firstNum + secondNum;
//       setState(() {});
//     }
//   }
//
//   void _onTabsubtractButton() {
//     if (_formkey.currentState!.validate() == false) {
//       return;
//     }
//     double firstNum = double.tryParse(_firstNumTEController.text) ?? 0;
//     double secondNum = double.tryParse(_secondNumTEController.text) ?? 0;
//     _result = firstNum - secondNum;
//     setState(() {});
//   }
//
//   void _onTabDivideButton() {
//     if (_formkey.currentState!.validate() == false){
//       return;
//   }
//     double firstNum = double.tryParse(_firstNumTEController.text) ?? 0;
//     double secondNum = double.tryParse(_secondNumTEController.text) ?? 0;
//     _result = firstNum / secondNum;
//     setState(() {});
//   }
//
//
//   void _onTabMultiplyButton() {
//     if(_formkey.currentState!.validate() == false){
//       return;
//     }
//     double firstNum = double.tryParse(_firstNumTEController.text) ?? 0;
//     double secondNum = double.tryParse(_secondNumTEController.text) ?? 0;
//     _result = firstNum * secondNum;
//     setState(() {});
//   }
//
//   bool _valiDateTextFixeds() {
//     if (_firstNumTEController.text.isEmpty) {
//       return false;
//     }
//
//     if (_secondNumTEController.text.isEmpty) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     _firstNumTEController.dispose();
//     _secondNumTEController.dispose();
//     super.dispose();
//   }
//
//
// }
