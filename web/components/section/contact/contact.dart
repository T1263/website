import '../../../framework/applicationBase.dart';

class Contact extends ApplicationBase {
  Contact() : super('address');
  static Contact instance = new Contact();

  @override
  void init() {
    this
        .element
        .querySelector('a.contact-page')
        .setAttribute('href', 'https://books.novo.ws/contact');
    this
        .element
        .querySelector('a.github')
        .setAttribute('href', 'https://github.com/novo-ws');
  }

  @override
  String render() {
    return """
      <div class="text-center contact">
                <h1 class="title"><i class="fa fa-envelope"></i> Contact </h1>
                <a class="contact-page" href=""><i class="fas fa-id-card-alt" title="Contact Form"></i></a> <a class="github" href=""><i class="fab fa-github" title="Github"></i></a>
      </div>
    """;
  }
}
