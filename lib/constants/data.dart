import 'package:expense/models/currency_model.dart';
import 'package:flutter/material.dart';

List<Currency> currenciesList = [
  Currency(symbol: '₹', code: 'INR', country: 'India', equivalentToINR: 1.0),
  Currency(
      symbol: '\$',
      code: 'USD',
      country: 'United States',
      equivalentToINR: 74.0),
  Currency(
      symbol: '€', code: 'EUR', country: 'Eurozone', equivalentToINR: 88.0),
  Currency(
      symbol: '£',
      code: 'GBP',
      country: 'United Kingdom',
      equivalentToINR: 102.0),
  Currency(symbol: '¥', code: 'JPY', country: 'Japan', equivalentToINR: 0.67),
  Currency(symbol: '元', code: 'CNY', country: 'China', equivalentToINR: 11.0),
  Currency(symbol: '₽', code: 'RUB', country: 'Russia', equivalentToINR: 1.0),
  Currency(symbol: '₪', code: 'ILS', country: 'Israel', equivalentToINR: 23.0),
  Currency(
      symbol: '₩', code: 'KRW', country: 'South Korea', equivalentToINR: 0.065),
  Currency(
      symbol: '₹', code: 'PKR', country: 'Pakistan', equivalentToINR: 0.45),
  Currency(
      symbol: '₹', code: 'BDT', country: 'Bangladesh', equivalentToINR: 0.88),
  Currency(
      symbol: '₹', code: 'LKR', country: 'Sri Lanka', equivalentToINR: 0.37),
  Currency(
      symbol: 'R\$', code: 'BRL', country: 'Brazil', equivalentToINR: 13.0),
  Currency(symbol: '₦', code: 'NGN', country: 'Nigeria', equivalentToINR: 0.18),
  Currency(symbol: '₺', code: 'TRY', country: 'Turkey', equivalentToINR: 8.0),
  Currency(symbol: '฿', code: 'THB', country: 'Thailand', equivalentToINR: 2.3),
  Currency(
      symbol: 'R', code: 'ZAR', country: 'South Africa', equivalentToINR: 5.0),
  Currency(symbol: '₹', code: 'NPR', country: 'Nepal', equivalentToINR: 0.63),
  Currency(symbol: 'S/.', code: 'PEN', country: 'Peru', equivalentToINR: 17.0),
  Currency(
      symbol: 'RM', code: 'MYR', country: 'Malaysia', equivalentToINR: 18.0),
  // Add more currencies with their symbols, codes, countries, and conversion rates as needed
];

List<DropdownMenuItem<String>> currencyDropdownItems =
    currenciesList.map((currency) {
  return DropdownMenuItem<String>(
    value: currency.code,
    child: Text(currency.code),
  );
}).toList();
