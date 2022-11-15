import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transcribe/main.dart';
import 'package:transcribe/presentation/widgets/song_chip.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final style = Transcribe.getStyle();
    return Scaffold(
      backgroundColor: style.primaryColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Transcribe",
              style: style.fontStyle,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 200.0, vertical: 25),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 20,
                      color: Colors.grey,
                      offset: Offset(10, 10),
                    ),
                  ],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: style.primaryColor,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: DropdownButton(
                                    alignment: Alignment.centerLeft,
                                    items: const [
                                      DropdownMenuItem(
                                        child: Text("Spotify"),
                                        value: 1,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("Apple Music"),
                                        value: 2,
                                      ),
                                    ],
                                    onChanged: (value) {},
                                  )),
                              ListView.builder(
                                padding: const EdgeInsets.all(20),
                                shrinkWrap: true,
                                itemCount: 2,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          (index + 1).toString(),
                                        ),
                                        Expanded(child: SongChip()),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    FloatingActionButton(
                      child: Icon(Icons.swap_horiz_sharp, size: 36),
                      backgroundColor: style.secondaryColor,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
