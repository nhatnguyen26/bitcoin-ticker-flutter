import 'networking.dart';
import 'constants.dart';

const String kCoinApiBaseUrl = 'https://rest.coinapi.io/v1/exchangerate';
class ExchangeRateModel {

  Future getExchangeModel(String coin, String currency) async {
    NetworkHelper networkHelper = NetworkHelper();
    var exchangeData = await networkHelper.executeGet('$kCoinApiBaseUrl/$coin/$currency?apiKey=$kCoinApiKey');
    var lastPrice = exchangeData['rate'];
    return lastPrice;
  }


}
