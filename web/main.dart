import 'dart:html';
import './application.dart';

HtmlElement appWrapper = document.getElementById('root');
Application app = new Application();

main() => app.attachTo(appWrapper).init();
