import '../../framework/applicationBase.dart';

class Footer extends ApplicationBase {
  static Footer instance = new Footer();
  Footer() : super('footer');
  int year = DateTime.now().year;

  @override
  String render() {
    return """
      <div class="footer">
                <p class="copy">© ${this.year} Novo Work Systems</p>
      </div>
    """;
  }
}
