import '../../../framework/applicationBase.dart';
import '../../../components/header/logo/logo.dart';

class Home extends ApplicationBase {
  Home() : super('home');
  static Home instance = new Home();

  @override
  void init() {
    Logo logo = new Logo("40px");
    logo
        .attachTo(this.element.querySelector('.home'))
        .element
        .closest('logo')
        .style
        .color = 'white';
  }

  @override
  String render() {
    return """
      <div class="row">
            <div class="col-12 home text-center">
                <i class="fa fa-circle"></i>
            </div>
      </div>
    """;
  }
}
