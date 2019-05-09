import '../../../framework/applicationBase.dart';
import '../about/about.dart';
import '../../section/section.dart';
import '../contact/contact.dart';
import '../tech/tech.dart';

class Info extends ApplicationBase {
  Info() : super('site-info');
  static Info instance = new Info();

  @override
  void init() {
    Section aboutSection = new Section(About.instance, 'about');
    aboutSection.attachTo(this.element.querySelector('.about')).init();

    Section contactSection = new Section(Contact.instance, 'contact');
    contactSection.attachTo(this.element.querySelector('.contact')).init();

    Section techSection = new Section(Tech.instance, 'tech');
    techSection.attachTo(this.element.querySelector('.technologies')).init();
  }

  @override
  String render() {
    return """
      <div class="row">
                <div class="col-12 site-info">
                    <div class="novo-signature-stripe-end"></div>
                    <div class="technologies">
                    <h1 class="text-center title"><i class="fas fa-code"></i> Technology </h1>
                    </div>
                    <div class="row">
                        <div class="col-6 about">
                            <!-- About Section Here -->
                        </div>
                        <div class="col-6 contact">
                         
                            <!-- Contact Section Here -->
                        </div>
                    </div>
                </div>
      </div>
    """;
  }
}
