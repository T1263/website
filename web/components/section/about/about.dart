import '../../../framework/applicationBase.dart';

class About extends ApplicationBase {
  About() : super('about');
  static About instance = new About();
  String title = 'About';
  String description =
      'At the core we forge our own path. We don’t chase fads and trends; Intead, we stay focused on the things that will always be important to us: Our products and services. Straightforward and functional, is the way we operate.';

  @override
  String render() {
    return """
      <div class="about text-center">
            <h1 class="title"><i class="fa fa-user-secret"></i> ${this.title} </h1>
            <p> ${this.description} </p>
      </div>
    """;
  }
}
