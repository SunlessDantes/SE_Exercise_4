Feature: Functions of Campus Coffee
  Scenario: Compare Prices
    Given there are no registered CoffeShops
    When a CoffeShop with Name "Crazy Sheep",Location "Uni" and returnpoint true and "Cappuccino" Price 5 is added to the System
    And a CoffeShop with Name "Cafeteria",Location "Uni" and returnpoint true and "Cappuccino" Price 4 is added to the System
    And the price for "Cappuccino" gets compared for "Crazy Sheep" and "Cafeteria"
    Then the System should show "Cafeteria" as the one with cheaper coffee
  #eig neue .feature datei hierfür
  Scenario: Create Cafetaria
    Given there are no registered CoffeShops
    When a CoffeShop with Name "Cafetaria",Location "Uni" and returnpoint true and "Cappuccino" Price 5 is added to the System
    Then there should only be 1 registered Coffeeshop
    And it's name should be "Cafetaria"


