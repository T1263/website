import 'dart:html';
import '../../framework/applicationBase.dart';
import './logo/logo.dart';
import './bar/bar.dart';
import './bar/menu/menu.dart';

class Header extends ApplicationBase {
  bool toggled = false;
  static Header instance = new Header();
  Header() : super('header');

  @override
  void init() {
    Logo logo = new Logo('10px');
    logo.attachTo(this.element.querySelector('.logo')).init();
    Bar.instance.attachTo(this.element.querySelector('.bar'));
    Menu.instance.addMenuItem('Home', '');
    Menu.instance.addMenuItem('Products & Services', 'products');
    Menu.instance.addMenuItem('Contact', 'contact');
    Menu.instance.addMenuItem('About', 'about');

    Menu.instance.attachTo(this.element.parent.parent.parent).init();
    Menu.instance.element.style.display = 'none';

    HtmlElement root = Header.instance.element.parent.parent;
    handleClickBar(e) {
      if (!this.toggled) {
        root.style.filter = 'blur(2px)';
        Menu.instance.element.style.display = '';
      } else {
        root.style.filter = '';
        Menu.instance.element.style.display = 'none';
      }

      this.toggled = !this.toggled;
    }

    Bar.instance.element.onClick.listen(handleClickBar);

    HtmlElement closeIcon =
        Menu.instance.element.querySelector('li.text-right');
    closeIcon.onClick.listen((e) => {
          root.style.filter = '',
          Menu.instance.element.style.display = 'none',
          this.toggled = !this.toggled
        });
  }

  @override
  String render() {
    return """
      <div class="row header">
                    <div class="col-6 logo text-left">
                        <!-- Logo Here -->    
                    </div>
                    <div class="col-6 bar text-right">
                        <!-- Bar Here -->  
                    </div>
            </div>
    """;
  }
}
