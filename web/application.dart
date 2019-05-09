import './framework/applicationBase.dart';
import './components/header/header.dart';
import './components/footer/footer.dart';
import './components/section/home/home.dart';
import './components/section/section.dart';
import './components/section/product/product.dart';
import './components/section/info/info.dart';

class Application extends ApplicationBase {
  Application() : super('application');
  @override
  void init() {
    Section HomeSection = new Section(Home.instance, 'home');
    Section ProductSection = new Section(Product.instance, 'products');
    Section SiteInfo = new Section(Info.instance, 'site-info');

    Header.instance.attachTo(this.element).init();

    HomeSection.attachTo(this.element).init();

    ProductSection.attachTo(this.element).init();

    SiteInfo.attachTo(this.element).init();

    Footer.instance.attachTo(this.element);
  }

  @override
  String render() {
    return '';
  }
}
