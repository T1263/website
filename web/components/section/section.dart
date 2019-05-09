import '../../framework/applicationBase.dart';

class Section extends ApplicationBase {
  dynamic componentObj;
  String sectionID;
  Section(this.componentObj, this.sectionID) : super('section');

  @override
  void init() {
    this.element.id = this.sectionID;
    this.componentObj.attachTo(this.element);
    try {
      this.componentObj.init();
    } catch (e) {}
  }

  @override
  String render() {
    return '';
  }
}
