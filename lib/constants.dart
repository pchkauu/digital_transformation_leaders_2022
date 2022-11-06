import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

// URL Launcher
void openURL(String url) => launchUrl(
      Uri.parse(url),
    );

const primaryColor = Color(0xFF2697FF);
const secondaryColor = Color(0xFF2A2D3E);
const bgColor = Color(0xFF212332);

const defaultPadding = 16.0;
