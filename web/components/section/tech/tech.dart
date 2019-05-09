import '../../../framework/applicationBase.dart';

class Tech extends ApplicationBase {
  Tech() : super('tech');
  static Tech instance = new Tech();

  @override
  String render() {
    return """
      <span class="tech"> 
            <i class="fab fa-html5" title="HTML5"></i><i class="fab fa-css3-alt" title="CSS3"></i><i class="fab fa-js" title="Javascript"></i><i class="fab fa-node" title="NodeJS"></i><i class="fab fa-react" title="ReactJS"></i><i class="fab fa-aws" title="Amazon Web Services"></i>
      </span>
    """;
  }
}
