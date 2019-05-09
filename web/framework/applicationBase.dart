import 'dart:html';
import 'base.dart';

class ApplicationBase extends Base {
  String componentName;
  HtmlElement element;
  ApplicationBase(this.componentName) : super();

  void create() {
    var holder = this.render();
    var container = document.createElement(this.componentName);
    container.innerHtml = holder;
    this.element = container;
  }

  ApplicationBase attachTo(HtmlElement el) {
    this.create();
    el.append(this.element);
    return this;
  }
}
