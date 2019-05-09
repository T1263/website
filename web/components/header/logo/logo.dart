import '../../../framework/applicationBase.dart';

class Logo extends ApplicationBase {
  String logo = 'NOVO';
  String size;
  Logo(this.size) : super('logo');

  @override
  void init() {
    this.element.style.cssText = 'font-size: ${this.size};';
  }

  @override
  String render() {
    return """
        <p>${this.logo}</p>
    """;
  }
}
