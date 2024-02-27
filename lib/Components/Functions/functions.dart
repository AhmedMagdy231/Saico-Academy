
import 'package:flutter/material.dart';
import 'package:html/parser.dart' show parse;

String cleanHtmlToPlainText(String htmlString, {int maxLength = 150}) {
  if (maxLength <= 0) {
    throw ArgumentError("maxLength must be greater than 0");
  }

  var document = parse(htmlString);
  String parsedString = parse(document.body!.text).documentElement!.text;

  // Truncate the result if it exceeds maxLength
  if (parsedString.length > maxLength) {
    parsedString = parsedString.substring(0, maxLength) + "...";
  }

  return parsedString;
}