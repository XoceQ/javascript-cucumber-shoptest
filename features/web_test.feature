Feature: Testing of Demoblaze's website


Scenario Outline: Loading webpage
  Given A webpage as "https://www.demoblaze.com/index.html"
  When Customer selects category as "<category>"
  When Customer picks index as "1" laptops as "<laptops>"
  When Customer clicks button as "Add to cart"
  When Customer accepts Alert
  When Customer clicks button as "Home"
  When Customer selects category as "<category>"
  When Customer picks index as "2" laptops as "<laptops>"
  When Customer clicks button as "Add to cart"
  When Customer accepts Alert
  When Customer clicks button as "Cart"
  When Customer deletes index as "2" products as "<laptops>" 
  When Customer clicks button as "Place Order"
  When Customer fills in field Name as "<name>"
  When Customer fills in field Country as "<country>"
  When Customer fills in field City as "<city>"
  When Customer fills in field Card as "<card>"
  When Customer fills in field Month as "<month>"
  When Customer fills in field Year as "<year>"
  When Customer clicks Purchase Button
  When Customer clicks Close button
  Then Match index as "1" prices as "<prices_of_laptops>" with purchased amount 
Examples:
|category| laptops                  |   prices_of_laptops      |name     |  country | city     | card            |  month | year |
|Laptops | Sony vaio i5,Dell i7 8gb |          790,700        |  Ferenc | Budapest | Hungary  | 1234567890123456|   03   | 2022 |


  


  