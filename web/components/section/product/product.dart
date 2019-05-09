import '../../../framework/applicationBase.dart';
import './productItem/productItem.dart';

class Product extends ApplicationBase {
  Product() : super('product');
  static Product instance = new Product();

  @override
  void init() {
    // Business Apps
    ProductItem Business = new ProductItem('Business Applications',
        'Professional-Grade Custom Mobile, Desktop & IOT.');

    Business.attachTo(this.element.querySelector('.products')).init();

    // Web Development
    ProductItem Web = new ProductItem(
        'Web', 'Professional-Grade Custom Modern Website Development.');
    Web.attachTo(this.element.querySelector('.products')).init();

    // Limosys Pricing Setup
    ProductItem LimoPricing =
        new ProductItem('Taxi Industry', 'Custom Limosys Pricing Setup.');
    LimoPricing.attachTo(this.element.querySelector('.products')).init();
  }

  @override
  String render() {
    return """
      <div class="row stripe-top">
            <div class="novo-signature-stripe"></div>
            <div class="col-12 products">
                <h1 class="text-center title"><i class="fa fa-th-list"></i>  Products </h1>
            </div>
      </div>
    """;
  }
}
