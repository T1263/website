import '../../../../framework/applicationBase.dart';
import '../../logo/logo.dart';

class Menu extends ApplicationBase {
  static Menu instance = new Menu();
  List menuItems = [];
  Menu() : super("menuList");

  void addMenuItem(String title, String sectionId) {
    this.menuItems.add({'title': title, 'sectionId': sectionId});
  }

  @override
  void init() {
    Logo menuLogo = new Logo('1.2em');
    menuLogo
        .attachTo(this.element.querySelector('.menu-logo'))
        .element
        .style
        .color = 'white';
    this
        .element
        .querySelector('.books-link a')
        .setAttribute('href', 'http://books.novo.ws');
  }

  @override
  String render() {
    String menuItems = '';
    this.menuItems.forEach((item) => {
          menuItems +=
              '<li><a href="#${item["sectionId"]}">${item["title"]}</a></li>'
        });
    return """
        <div class="menu">
                    <ul class="text-center">
                    <li class="text-right">
                    <h1 class="books-link"><a href="">Books Login → </a> </h1>
                    <i class="fas fa-times"></i>
                    </li>
                        <li class="menu-logo"> </li>
                        ${menuItems}
                    </ul>
            </div>
      """;
  }
}
