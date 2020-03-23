void main(){
  var deck = new Deck();
  deck.shuffle();
//   print(deck.cardsWithSuit('Spades'));
//   print(deck);
//   print(deck.deal(5));
//   print(deck);
  deck.removeCard('Diamond','Ace');
  print(deck);
  
}

class Deck{
  List<Card> cards = [];  
//   initialization of deck class
  
  Deck(){
    var ranks = ['Ace', 'two', 'three', 'four','five','six','seven','eight','nine',
              'ten','jack','queen','king'];
    var suits = ['Diamonds', 'Hearts', 'Spades', 'Clubs'];
    
    for(var suit in suits){
      for(var rank in ranks){
        var card = new Card(suit,rank);
        cards.add(card);  
      }
    }
 }
  
  toString(){
     //return 'This is a deck';
    return cards.toString();
  }
  
  shuffle(){
    cards.shuffle();
  }
  
  cardsWithSuit(String val){
    return cards.where((card){
      return card.suit == val;
    });
  }
  
  deal(int handSize){
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize, );
    return hand;
  }
  removeCard(String suit,String rank){
//     return cards.removeWhere((card){
//       return card.suit == suit && card.rank == rank;
//     });
//     refactored single line code 
    return cards.removeWhere((card) => (card.suit==suit) && (card.rank==rank));
  }
  
}

class Card{
  
  String suit;
  String rank;
  
  Card(this.suit,this.rank);
  
   toString(){
      return '$rank of $suit';
    }
}