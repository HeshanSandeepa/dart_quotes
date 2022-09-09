library dart_quote;

import 'package:flutter/material.dart';

class DartQuote extends StatelessWidget {
  final String text; // respective text that need to be to wrapped with quotes
  final TextStyle textStyle; //  quote style as preferred.
  final TextStyle quoteStyle; //  quote style as preferred.
  final EdgeInsets padding; // padding for the text widget

  const DartQuote({
    required this.text,
    this.textStyle = const TextStyle(
        color: Colors.black, fontWeight: FontWeight.normal, fontSize: 20),
    this.quoteStyle = const TextStyle(
        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
    this.padding = const EdgeInsets.fromLTRB(32.0, 32.0, 32.0, 32.0),
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('\u275D', style: quoteStyle), const Spacer()],
        ),
        Padding(
          padding: padding,
          child: Text(text, textAlign: TextAlign.center, style: textStyle),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text('\u275E', style: quoteStyle),
          ],
        ),
      ],
    );
  }
}
