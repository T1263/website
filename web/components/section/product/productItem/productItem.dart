import '../../../../framework/applicationBase.dart';

class ProductItem extends ApplicationBase {
  String name, description;
  ProductItem(this.name, this.description) : super('productItem');

  @override
  void init() {
    this.element.id = this.name;
  }

  @override
  String render() {
    return """
      <div class="text-center">
          <h1> ${this.name} </h1>
          <p>${this.description}</p>
      </div>
    """;
  }
}
