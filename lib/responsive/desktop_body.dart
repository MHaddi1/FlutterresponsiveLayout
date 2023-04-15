import 'package:flutter/material.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Text("DESKTOP"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AspectRatio(
                        aspectRatio: 16 / 6,
                        child: Container(
                          
                          color: Colors.deepPurple[400],
                        ),
                      ),
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: 8,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 200,
                                  color: Colors.deepPurple[300],
                                ),
                              );
                            }))
                  ],
                ),
              ),
              Expanded(
                
                child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height *0.35,
                           
                          
                         
                          color: Colors.deepPurple[500],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
