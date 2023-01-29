import 'package:super_clean_app/core/utils/assets_manager.dart';

class ExtraModel {
  final String image;
  final String text;
  final int num;

  ExtraModel({required this.image, required this.text, required this.num});
}

List<ExtraModel> extraList = [
  ExtraModel(
    image: AssetsManager.insideFridge,
    text: 'Inside Fridge',
    num: 4,
  ),
  ExtraModel(
    image: AssetsManager.organizing,
    text: 'Organizing',
    num: 0,
  ),
  ExtraModel(
    image: AssetsManager.smallBlinds,
    text: 'Small Blinds',
    num: 10,
  ),
];
List<ExtraModel> extraList1 = [
  ExtraModel(
    image: AssetsManager.patio,
    text: 'Patio',
    num: 0,
  ),
  ExtraModel(
    image: AssetsManager.organizing,
    text: 'Organizing',
    num: 0,
  ),
  ExtraModel(
    image: AssetsManager.smallBlinds,
    text: 'Small Blinds',
    num: 10,
  ),
];
