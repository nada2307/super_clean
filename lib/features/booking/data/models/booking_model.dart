import 'package:super_clean_app/core/utils/assets_manager.dart';

class BookingModel{

  final String image;
  final String name;
  final String cleanType;
  final String from;
  final String to;
  final double rate;
  int? price;
  final bool paid;

  BookingModel(
      {required this.image, required this.name,required this.cleanType, required this.from,required this.to, required this.rate,required this.paid, this.price});


}

List<BookingModel> bookingList = [
  BookingModel(
    image:   AssetsManager.michaelHamilton,
    name: 'Michael Hamilton',
    rate: 3,
    paid: false,
    price: 50,
    from: '10AM',
    to: '11AM',
    cleanType: 'Upkeep Cleaning',
  ),
  BookingModel(
    image:   AssetsManager.alexandraJohnson,
    name: 'Alexandra johnson',
    rate: 4,
    paid: true,
    from: '12PM',
    to: '1PM',
    cleanType: 'Upkeep Cleaning',
  ),
  BookingModel(
    image:   AssetsManager.michaelHamilton,
    name: 'Michael Hamilton',
    rate: 3,
    paid: false,
    price: 150,
    from: '3PM',
    to: '6PM',
    cleanType: 'Initial Cleaning',
  ),
  BookingModel(
    image:   AssetsManager.alexandraJohnson,
    name: 'Alexandra johnson',
    rate: 4,
    paid: true,
    from: '12PM',
    to: '1PM',
    cleanType: 'Upkeep Cleaning',
  ),
];