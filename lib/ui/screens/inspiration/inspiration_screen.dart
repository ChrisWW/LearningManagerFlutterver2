import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/cubit/inspiration_cubit.dart';
import 'package:http/http.dart' as http;
import 'package:screenshot/screenshot.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';
import 'package:flutter/services.dart';

// Main start of the app
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
//   runApp(MyApp());
// }

// // setting App name and home
// class InspirationView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'motivation Quotes',
//       home: MainPage(),
//     );
//   }
// }

class InspirationScreen extends StatefulWidget {
  const InspirationScreen({Key? key}) : super(key: key);

  @override
  _InspirationScreenState createState() => _InspirationScreenState();
}

class _InspirationScreenState extends State<InspirationScreen> {
  // TODO
  // final InspirationCubit inspirationCubit;
  // final cubit = InspirationCubit();
      // widget.inspirationCubit;
  late String quote, owner, imglink;
  bool working = false;
  final grey = Colors.blueGrey[800];
  late ScreenshotController screenshotController;

  // _InspirationScreenState();

  @override
  void initState() {
    super.initState();
    screenshotController = ScreenshotController();
    quote = "";
    owner = "";
    imglink = "";
    getQuote();
  }

  // TODO
  // teg otypu metody nie powinny byc osadone w UI tlyko w jakim blocu
  // get a random Quote from the API
  dynamic getQuote() async {
    try {
      setState(() {
        working = true;
        quote = imglink = owner = "";
      });
      // _inspirationCubit.postQuote();
      // https://forismatic.com/en/api/

      //   var response = await http.post(
      //       Uri.parse(Uri.encodeFull('http://api.forismatic.com/api/1.0/')),
      //       body: {"method": "getQuote", "format": "json", "lang": "en"});
      //   setState(() {
      //     try {
      //       dynamic res = jsonDecode(response.body);
      //       owner = res["quoteAuthor"].toString().trim();
      //       quote = res["quoteText"].toString().replaceAll("â", " ");
      //       getImg(owner);
      //     } catch (e) {
      //       getQuote();
      //     }
      //   });
      // } catch (e) {
      //   offline();
      // }
    } catch (e) {
        offline();
    }
  }

  // if it is offline, show a fixed Quote
  dynamic offline() {
    setState(() {
      owner = "Janet Fitch";
      quote = "The phoenix must burn to emerge";
      imglink = "";
      working = false;
    });
  }

  // When copy button clicked, copy the quote to clipboard
  dynamic copyQuote() {
    Clipboard.setData(ClipboardData(text: (quote + "\n- " + owner))).then((_){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: const Text("Quote Copied")));
    });

    // Deprecated clipboard ubt Toast is ok
    // ClipboardManager.copyToClipBoard(quote + "\n- " + owner).then((result) {
    //   Toast.show("Quote Copied", context, duration: Toast.LENGTH_SHORT);
    // });
  }

  dynamic addToFavourites() async {
    print("save in favoruties");
  }

  // When share button clicked, share a text and screnshot of the quote
  dynamic shareQuote() async {
    final directory = (await getApplicationDocumentsDirectory())
        .path; //from path_provide package
    String path =
        '$directory/screenshots${DateTime.now().toIso8601String()}.png';

    //path: path in argument with nev versions?
    screenshotController.capture().then((_) {
      Share.shareFiles([path], text: quote);
    }).catchError(() {
      // TODO onError on argument
      // print(onError);
    });
  }

  // get image of the quote author, using Wikipedia Api

  dynamic getImg(String name) async {
    // _inspirationCubit.getImage(name);

    setState(() {
      try {
        // imglink = res["thumbnail"]["source"].toString();
      } catch (e) {
        imglink = "";
      }
      working = false;
    });
  }

  // dynamic getImg(String name) async {
  //   var image = await http.get(Uri.parse(
  //       "https://en.wikipedia.org/w/api.php?action=query&generator=search&gsrlimit=1&prop=pageimages%7Cextracts&pithumbsize=400&gsrsearch=" +
  //           name +
  //           "&format=json"));
  //
  //   setState(() {
  //     try {
  //       dynamic res = json.decode(image.body)["query"]["pages"];
  //       res = res[res.keys.first];
  //       imglink = res["thumbnail"]["source"].toString();
  //     } catch (e) {
  //       imglink = "";
  //     }
  //     working = false;
  //   });
  // }

  // Choose to show the loaded image from the Api or the offline one
  Widget drawImg() {
    if (imglink.isEmpty) {
      return Image.asset("img/offline.jpg", fit: BoxFit.cover);
    } else {
      return Image.network(imglink, fit: BoxFit.cover);
    }
  }

  // Main build function
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey,
      body: Screenshot<dynamic>(
        controller: screenshotController,
        child: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: <Widget>[
              drawImg(),
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
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text: quote != null ? '“ ' : "",
                              style: const TextStyle(
                                  fontFamily: "Ic",
                                  color: Colors.green,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30),
                              children: [
                                TextSpan(
                                    text: quote != null ? quote : "",
                                    style: const TextStyle(
                                        fontFamily: "Ic",
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22)),
                                TextSpan(
                                    text: quote != null ? '”' : "",
                                    style: const TextStyle(
                                        fontFamily: "Ic",
                                        fontWeight: FontWeight.w700,
                                        color: Colors.green,
                                        fontSize: 30))
                              ]),
                        ),
                        Text(owner.isEmpty ? "" : "\n" + owner,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontFamily: "Ic",
                                color: Colors.white,
                                fontSize: 18)),
                      ])),
              AppBar(
                title: const Text(
                  "Motivational Quote",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
                centerTitle: true,
              ),
            ]),
      ),
      floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InkWell(
              onTap: !working ? getQuote : null,
              child: const Icon(Icons.refresh, size: 35, color: Colors.white),
            ),
            InkWell(
              onTap: quote.isNotEmpty ? copyQuote : null,
              child: const Icon(Icons.content_copy, size: 30, color: Colors.white),
            ),
            InkWell(
              onTap: quote.isNotEmpty ? shareQuote : null,
              child: const Icon(Icons.share, size: 30, color: Colors.white),
            ),
            InkWell(
              onTap: quote.isNotEmpty ? () => addToFavourites() : null,
              child: const Icon(Icons.add_box_outlined, size: 30, color: Colors.white),
            )
          ]),
    );
  }
}