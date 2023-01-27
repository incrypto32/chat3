import 'package:flutter/material.dart';

class Chat3 extends StatelessWidget {
  const Chat3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: const Center(
        child: Text(
          "Chat3 is here",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class MyAppBar extends AppBar {
  MyAppBar({super.key})
      : super(
            title: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 246, 255),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Search message...",
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                // const CircleAvatar(
                //   backgroundImage: NetworkImage(
                //       "https://images.unsplash.com/photo-1616166330003-8e1f2e1b0b0a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                // ),
              ],
            ),
            titleTextStyle: const TextStyle(
              color: Colors.black,
            ),
            bottomOpacity: 0,
            elevation: 0,
            backgroundColor: Colors.white);
}
