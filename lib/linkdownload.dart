import 'package:flutter/material.dart';


// https://cloud.tsinghua.edu.cn/d/a78bffdbc2e9453cbc9b/
class LinkDownload extends StatefulWidget {
  const LinkDownload({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<LinkDownload> createState() => _LinkDownload();
}



class _LinkDownload extends State<LinkDownload> {
  String currentLink = '';
  final linkController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('download from cloud.tsinghua.edu.cn shared links'),
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  currentLink,
                  style: theme.textTheme.displayMedium,
                ),

                TextField(
                  controller: linkController,
                  decoration: InputDecoration(
                    hintText: 'Enter the share link here',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      // clear button
                      icon: Icon(Icons.clear),
                      onPressed: () => linkController.clear(),
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        currentLink = linkController.text;
                      });
                    },
                    child: Text('parse link')),
              ],
            ),
          ),
        ));
  }
}
