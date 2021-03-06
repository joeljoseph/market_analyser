require 'rest-client'
namespace :currency_rate do
  def eligible_for_update()

  end

  desc "Latest current rate"
	task latest: :environment do
    url = 'https://openexchangerates.org/api/latest.json?app_id=17e9ed61f83f4a08a040a8b0b8d888b3'
    #https://docs.openexchangerates.org/
    #response = RestClient.get(url)
    response = {
  "disclaimer": "Usage subject to terms: https://openexchangerates.org/terms",
  "license": "https://openexchangerates.org/license",
  "timestamp": 1560315600,
  "base": "USD",
  "rates": {
    "AED": 3.673181,
    "AFN": 79.450241,
    "ALL": 107.585503,
    "AMD": 478.81005,
    "ANG": 1.872598,
    "AOA": 338.9835,
    "ARS": 44.6854,
    "AUD": 1.43913,
    "AWG": 1.799996,
    "AZN": 1.7025,
    "BAM": 1.726408,
    "BBD": 2,
    "BDT": 84.386324,
    "BGN": 1.725885,
    "BHD": 0.377035,
    "BIF": 1833.314487,
    "BMD": 1,
    "BND": 1.350545,
    "BOB": 6.90111,
    "BRL": 3.8565,
    "BSD": 1,
    "BTC": 0.000125281035,
    "BTN": 69.419555,
    "BWP": 10.84412,
    "BYN": 2.067,
    "BZD": 2.013146,
    "CAD": 1.32895,
    "CDF": 1646.901389,
    "CHF": 0.991725,
    "CLF": 0.024268,
    "CLP": 694.606637,
    "CNH": 6.926316,
    "CNY": 6.915884,
    "COP": 3253.795067,
    "CRC": 590.001841,
    "CUC": 1,
    "CUP": 25.75,
    "CVE": 97.6,
    "CZK": 22.5954,
    "DJF": 178.05,
    "DKK": 6.5892,
    "DOP": 51.354985,
    "DZD": 119.058526,
    "EGP": 16.759,
    "ERN": 14.99667,
    "ETB": 28.818943,
    "EUR": 0.882262,
    "FJD": 2.148751,
    "FKP": 0.786099,
    "GBP": 0.786099,
    "GEL": 2.72,
    "GGP": 0.786099,
    "GHS": 5.38171,
    "GIP": 0.786099,
    "GMD": 49.8,
    "GNF": 9123.945277,
    "GTQ": 7.696972,
    "GYD": 208.515635,
    "HKD": 7.82414,
    "HNL": 24.444304,
    "HRK": 6.5433,
    "HTG": 92.289068,
    "HUF": 283.36,
    "IDR": 14242.783513,
    "ILS": 3.5812,
    "IMP": 0.786099,
    "INR": 69.4075,
    "IQD": 1191.667157,
    "IRR": 42105,
    "ISK": 124.140141,
    "JEP": 0.786099,
    "JMD": 130.060048,
    "JOD": 0.709,
    "JPY": 108.4935,
    "KES": 101.18,
    "KGS": 68.68202,
    "KHR": 4066.791559,
    "KMF": 434.45125,
    "KPW": 900,
    "KRW": 1181.88,
    "KWD": 0.303838,
    "KYD": 0.832239,
    "KZT": 383.630191,
    "LAK": 8706.530075,
    "LBP": 1510.09449,
    "LKR": 176.254854,
    "LRD": 194.000488,
    "LSL": 14.769041,
    "LYD": 1.398153,
    "MAD": 9.6137,
    "MDL": 18.102,
    "MGA": 3654.359262,
    "MKD": 54.414159,
    "MMK": 1525.095525,
    "MNT": 2453.75,
    "MOP": 8.060045,
    "MRO": 357,
    "MRU": 36.775,
    "MUR": 35.49994,
    "MVR": 15.450018,
    "MWK": 745.403293,
    "MXN": 19.106953,
    "MYR": 4.1641,
    "MZN": 62.267835,
    "NAD": 14.768823,
    "NGN": 360.041642,
    "NIO": 32.907844,
    "NOK": 8.631108,
    "NPR": 110.96841,
    "NZD": 1.522302,
    "OMR": 0.38499,
    "PAB": 1,
    "PEN": 3.333378,
    "PGK": 3.370619,
    "PHP": 51.962899,
    "PKR": 151.810596,
    "PLN": 3.76146,
    "PYG": 6249.707861,
    "QAR": 3.640999,
    "RON": 4.164595,
    "RSD": 104.105532,
    "RUB": 64.5539,
    "RWF": 908.327232,
    "SAR": 3.7507,
    "SBD": 8.207869,
    "SCR": 13.679642,
    "SDG": 45.049074,
    "SEK": 9.449662,
    "SGD": 1.364772,
    "SHP": 0.786099,
    "SLL": 8390,
    "SOS": 577.744015,
    "SRD": 7.458,
    "SSP": 130.2634,
    "STD": 21050.59961,
    "STN": 21.65,
    "SVC": 8.738995,
    "SYP": 514.993342,
    "SZL": 14.768703,
    "THB": 31.25,
    "TJS": 9.417792,
    "TMT": 3.50998,
    "TND": 2.956965,
    "TOP": 2.28557,
    "TRY": 5.80167,
    "TTD": 6.765131,
    "TWD": 31.418942,
    "TZS": 2298,
    "UAH": 26.328075,
    "UGX": 3747.205815,
    "USD": 1,
    "UYU": 35.417871,
    "UZS": 8505.310286,
    "VEF": 248487.642241,
    "VES": 6125.443818,
    "VND": 23297.989352,
    "VUV": 111.741427,
    "WST": 2.61789,
    "XAF": 578.725935,
    "XAG": 0.06754943,
    "XAU": 0.00075049,
    "XCD": 2.70255,
    "XDR": 0.718558,
    "XOF": 578.725935,
    "XPD": 0.00071355,
    "XPF": 105.281862,
    "XPT": 0.00122062,
    "YER": 250.374372,
    "ZAR": 14.665641,
    "ZMW": 13.133123,
    "ZWL": 322.355011
  }
}
    parsed_response = response #JSON.parse(response.body)
	  @rates = parsed_response[:"rates"]
	  @timestamp = parsed_response[:"timestamp"]
	  Currency.each do |currency|
      binding.pry
      begin
        binding.pry
	  	  currency.update_attributes(exchange_rate: rates[currency.code], exchange_rate_updated_at:  Time.at(@timestamp)) 
      end if (Time.at(@timestamp) > currency.exchange_rate_updated_at) && @rates[:"#{currency.code}"].present?
	  end
  end
end


