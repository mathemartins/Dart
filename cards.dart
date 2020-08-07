void main() {
  var deck = new Deck();
  deck.doShuffle();
  print(deck.getCardsWithSuit('Spades'));
}

class Deck {
  List<Card> cards =
      []; // if a variable is declared without assignment, it gets a value of null
  // if you tell dart to print out something, it would look for the toString method of that thing and only print its value
  // if you use static typing on a variable for dart, it will make sure variable only accepts that type
  // if you do static typing on a method, it means the method will have a return statement and the return statement would return that
  // value type, if you use dynamic typing, it means it can return anything
  // Iterables are like tuples for python

  Deck() {
    List ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    List suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = new Card(rank:rank, suit:suit); // named arguments are the best way of passing arguments to a constructor
        this.cards.add(card);
      }
    }
  }

  @override
  String toString() {
    // ignore: todo
    // TODO: implement toString
    //return super.toString();
    return cards.toString();
  }

  doShuffle() {
    this.cards.shuffle();
  }

  List deal(int handSize) {
    List hand = this.cards.sublist(0, handSize);
    this.cards = this.cards.sublist(handSize);
    return hand;
  }

  Iterable getCardsWithSuit(String suit) {
    return this.cards.where((element) => element.suit == suit);
//    return this.cards.where((card) { // this is done if we have more than one expression
//      return card.suit == suit;
//    });
  }

  removeCard(String suit, String rank) {
    return this.cards.removeWhere((element) { // remove where method returns void and just acts on the original list
      return element.suit == suit && element.rank == rank; // that means we cannot return or use static typing for it.
    });
  }
}

class Card {
  String suit;
  String rank;

  Card({this.rank, this.suit});

  @override
  String toString() {
    // ignore: todo
    // TODO: implement toString
    return '${this.rank} of ${this.suit}';
  }
}
