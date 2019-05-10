import '../../../framework/applicationBase.dart';

class Contact extends ApplicationBase {
  Contact() : super('address');
  static Contact instance = new Contact();
  String phone = '(929) 324-0887';
  String address = '417 Irving Ave, Brooklyn NY 11237';

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
    this
        .element
        .querySelector('a.phone')
        .setAttribute('href', 'tel:9293240887');
  }

  @override
  String render() {
    return """
      <div class="text-center contact">
                <h1 class="title"><i class="fa fa-phone"></i> Contact </h1>
                <a class="phone" href=""> ${this.phone}</a><br/>
                <address>
                    <i class="fas fa-map-marker-alt"></i> ${this.address}
                </address>
                <a class="contact-page" href=""><i class="fas fa-id-card-alt" title="Contact Form"></i></a> <a class="github" href=""><i class="fab fa-github" title="Github"></i></a>
      </div>
    """;
  }
}
