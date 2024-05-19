// // Copyright 2024 Google LLC
// //
// // Licensed under the Apache License, Version 2.0 (the "License");
// // you may not use this file except in compliance with the License.
// // You may obtain a copy of the License at
// //
// //     http://www.apache.org/licenses/LICENSE-2.0
// //
// // Unless required by applicable law or agreed to in writing, software
// // distributed under the License is distributed on an "AS IS" BASIS,
// // WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// // See the License for the specific language governing permissions and
// // limitations under the License.

// import 'package:chat/data/data_source/static/prompts.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_markdown/flutter_markdown.dart';
// import 'package:google_generative_ai/google_generative_ai.dart';

// class ChatScreen extends StatefulWidget {
//   const ChatScreen({super.key, required this.title});

//   final String title;

//   @override
//   State<ChatScreen> createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: const ChatWidget(),
//     );
//   }
// }

// class ChatWidget extends StatefulWidget {
//   const ChatWidget({super.key});

//   @override
//   State<ChatWidget> createState() => _ChatWidgetState();
// }

// class _ChatWidgetState extends State<ChatWidget> {
//   late final GenerativeModel _model;
//   late final ChatSession _chat;
//   final ScrollController _scrollController = ScrollController();
//   final TextEditingController _textController = TextEditingController();
//   final FocusNode _textFieldFocus = FocusNode();
//   bool _loading = false;
//   static const _apiKey = String.fromEnvironment('API_KEY');
//   List<Map> data = [];
//   final parts = [
//     Content.text(dataai),
//     Content.model(
//         [TextPart(" أهلا زائرنا العزيز أنا موظف خدمة العملاء الخاص بمدرسة قطر الإبتدائية كيف أستطيع مساعدتك أنا مخصص فقط للرد على الأسئلة المتعلقة بمدرسة قطر الإبتدائية من البيانات المتاحة لي فقط")]),
//     Content.text(' كم طول ملعب كرة القدم'),
//     Content.model([TextPart(" أعتذر منك زائرنا العزيز لكن لا تتوفر لدي معلومات داخل البيانات المقدمة إلي بخصوص طول ملعب كرة القدم")]),
//     Content.text(" ماهي الحصة الخامسة للصف الخامس"),
//     Content.model([TextPart("زائرنا العزيز يمكنك  الإطلاع على جميع جداول الحصص لجميع الفصول من الرابط التالي  (http://bit.ly/schedule_2024_qatar) ")]),
//     Content.text(' هل تقدم المدرسة وجبات للطلاب'),
//     Content.model([TextPart(" لا يوجد داخل البيانات المرفوعة إلي أي معلومات حول تقديم الوجبات للطلاب يمكنك التواصل مع إدارة المدرسة بخصوص هذا الموضوع")]),
//     Content.text(' هل لديكم موقع الكتروني'),
//     Content.model([TextPart(" لم أجد داخل المعلومات التي لدي معلومات حول موقع الكتروني خاص بالمدرسة")]),
//     Content.text('ماهو أسرع الحيوانات للعالم '),
//     Content.model([TextPart("عذرا زائرنا العزيز أنا مخصص فقط للرد على الأسئله المتعلقة بمدرية قطر الإبتدائية")]),
//   ];

//   @override
//   void initState() {
//     super.initState();
   
   
//   }

//   void _scrollDown() {
//     WidgetsBinding.instance.addPostFrameCallback(
//       (_) => _scrollController.animateTo(
//         _scrollController.position.maxScrollExtent,
//         duration: const Duration(
//           milliseconds: 750,
//         ),
//         curve: Curves.easeOutCirc,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     var textFieldDecoration = InputDecoration(
//       contentPadding: const EdgeInsets.all(15),
//       hintText: 'Enter a prompt...',
//       border: OutlineInputBorder(
//         borderRadius: const BorderRadius.all(
//           Radius.circular(14),
//         ),
//         borderSide: BorderSide(
//           color: Theme.of(context).colorScheme.secondary,
//         ),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: const BorderRadius.all(
//           Radius.circular(14),
//         ),
//         borderSide: BorderSide(
//           color: Theme.of(context).colorScheme.secondary,
//         ),
//       ),
//     );

//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(
//             child: _apiKey.isNotEmpty
//                 ? ListView.builder(
//                     controller: _scrollController,
//                     itemBuilder: (context, idx) {
//                       var content = _chat.history.toList()[idx +16];
//                       var text = content.parts
//                           .whereType<TextPart>()
//                           .map<String>((e) => e.text)
//                           .join('');
//                       return MessageWidget(
//                         text: text,
//                         isFromUser: content.role == 'user',
//                       );
//                     },
//                     itemCount: _chat.history.length -16,
//                   )
//                 : ListView(
//                     children: const [
//                       Text('No API key found. Please provide an API Key.'),
//                     ],
//                   ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(
//               vertical: 25,
//               horizontal: 15,
//             ),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     autofocus: true,
//                     focusNode: _textFieldFocus,
//                     decoration: textFieldDecoration,
//                     controller: _textController,
//                     onSubmitted: (String value) {
//                       _sendChatMessage(value);
//                     },
//                   ),
//                 ),
//                 const SizedBox.square(
//                   dimension: 15,
//                 ),
//                 if (!_loading)
//                   IconButton(
//                     onPressed: () async {
//                       _sendChatMessage(_textController.text);
//                     },
//                     icon: Icon(
//                       Icons.send,
//                       color: Theme.of(context).colorScheme.primary,
//                     ),
//                   )
//                 else
//                   const CircularProgressIndicator(),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Future<void> _sendChatMessage(String message) async {
//     setState(() {
//       _loading = true;
//     });
   
//     try {
//       var response = await _chat.sendMessage(Content.text(message));
//       var text = response.text;
//       print(response.text) ;

//       if (text == null) {
//         _showError('No response from API.');
//         return;
//       } else {
//         setState(() {
//           _loading = false;
//           _scrollDown();
//         });
//       }
//     } catch (e) {
    
//       _showError(e.toString());
//       setState(() {
//         _loading = false;
//       });
//     } finally {
//       _textController.clear();
//       setState(() {
//         _loading = false;
//       });
//       _textFieldFocus.requestFocus();
//     }
//   }

//   void _showError(String message) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text('Something went wrong'),
//           content: SingleChildScrollView(
//             child: SelectableText(message),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('OK'),
//             )
//           ],
//         );
//       },
//     );
//   }
// }

// class MessageWidget extends StatelessWidget {
//   final String text;
//   final bool isFromUser;

//   const MessageWidget({
//     super.key,
//     required this.text,
//     required this.isFromUser,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: isFromUser ? MainAxisAlignment.end : MainAxisAlignment.start,
//       children: [
//         Flexible(
//           child: Container(
//             constraints: const BoxConstraints(maxWidth: 600),
//             decoration: BoxDecoration(
//               color: isFromUser ? Theme.of(context).colorScheme.primaryContainer : Theme.of(context).colorScheme.surfaceVariant,
//               borderRadius: BorderRadius.circular(18),
//             ),
//             padding: const EdgeInsets.symmetric(
//               vertical: 15,
//               horizontal: 20,
//             ),
//             margin: const EdgeInsets.only(bottom: 8),
//             child: MarkdownBody(
//               selectable: true,
//               data: text,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
