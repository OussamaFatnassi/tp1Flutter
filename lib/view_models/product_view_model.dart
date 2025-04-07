import 'package:flutter/foundation.dart';
import 'package:tp1/models/product.dart';
import 'package:tp1/services/api_service.dart';

class ProductViewModel extends ChangeNotifier {
  final ApiService _apiService = ApiService();

  List<Product> _products = [];
  bool _loading = false;
  String _error = '';

  // Getters
  List<Product> get products => _products;
  bool get loading => _loading;
  String get error => _error;

  // Method to fetch products
  Future<void> fetchProducts() async {
    _setLoading(true);
    _error = '';

    try {
      _products = await _apiService.fetchProducts();
    } catch (e) {
      _error = e.toString();
    } finally {
      _setLoading(false);
    }
  }

  void _setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }
}
