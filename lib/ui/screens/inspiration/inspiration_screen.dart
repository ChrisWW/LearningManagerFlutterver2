import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/cubit/inspiration_cubit.dart';
import 'package:screenshot/screenshot.dart';

class InspirationScreen extends StatefulWidget {
  const InspirationScreen({Key? key}) : super(key: key);

  @override
  _InspirationScreenState createState() => _InspirationScreenState();
}

class _InspirationScreenState extends State<InspirationScreen> {
  // TODO
  final grey = Colors.blueGrey[800];
  late ScreenshotController screenshotController;

  @override
  void initState() {
    super.initState();
    screenshotController = ScreenshotController();
    BlocProvider.of<InspirationCubit>(context).getInspiration();
  }

  // if it is offline, show a fixed Quote

  // When copy button clicked, copy the quote to clipboard

  // When share button clicked, share a text and screenshot of the quote

  // get image of the quote author, using Wikipedia Api

  // Main build function
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InspirationCubit, InspirationState>(
      builder: (context, state) {
        if (state is InProgressInspirationState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ShowInspirationState) {
          return Scaffold(
            backgroundColor: grey,
            body: Screenshot<dynamic>(
              controller: screenshotController,
              child: Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                children: <Widget>[
                  Image.network(
                    state.imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (BuildContext context, Object exception,
                        StackTrace? stackTrace) {
                      return Image.asset("img/offline.jpg", fit: BoxFit.cover);
                    },
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0, 0.6, 1],
                        colors: [
                          grey!.withAlpha(70),
                          grey!.withAlpha(220),
                          grey!.withAlpha(255),
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Center(child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text:
                            state.inspiration.quoteText.replaceAll("â", " "),
                            style: const TextStyle(
                              fontFamily: "Ic",
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                            ),
                          ),
                        ),),
                        Text(
                          state.inspiration.quoteAuthor,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: "Ic",
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  AppBar(
                    title: const Text(
                      "Motivational Quote",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    centerTitle: true,
                  ),
                ],
              ),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: null,
                  child:
                      const Icon(Icons.refresh, size: 35, color: Colors.white),
                ),
                InkWell(
                  onTap: null,
                  child: const Icon(Icons.content_copy,
                      size: 30, color: Colors.white),
                ),
                InkWell(
                  onTap: null,
                  child: const Icon(Icons.share, size: 30, color: Colors.white),
                ),
                InkWell(
                  onTap: state.inspiration.quoteText.isNotEmpty
                      ? () => null
                      : null,
                  child: const Icon(Icons.add_box_outlined,
                      size: 30, color: Colors.white),
                ),
              ],
            ),
          );
        } else {
          return const Center(
            child: Text("Error occurred"),
          );
        }
      },
    );
  }
}
