String getCardLogo(String cardType) {
  const cardLogos = {
    "Default": "assets/brands/default.png",
    "MasterCard": "assets/brands/master-card.png",
    "Paypal": "assets/brands/paypal.png",
    "Stripe": "assets/brands/stripe.png",
  };

  return cardLogos[cardType] ?? cardLogos["Default"]!;
}
