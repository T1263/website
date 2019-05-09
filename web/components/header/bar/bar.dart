import '../../../framework/applicationBase.dart';

class Bar extends ApplicationBase {
  static Bar instance = new Bar();
  Bar() : super('bar');

  @override
  String render() {
    return """
      <i class="fa fa-bars"></i>
    """;
  }
}
