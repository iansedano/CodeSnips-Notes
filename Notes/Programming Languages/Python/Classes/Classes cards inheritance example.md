```python
suit_names = ['Clubs','Diamonds','Hearts','Spades']
rank_names = ['None', 'Ace', '2', '3', '4', '5',
 '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King']

class Card:

    def __init__(self, suit=0, rank=2):
        self.suit = suit
        self.rank = rank

    def __str__(self):
        return f"{rank_names[self.rank]} of {suit_names[self.suit]}"

    def __lt__(self, other):
        if self.suit < other.suit: return True
        if self.suit > other.suit: return False

        return self.rank < other.rank

queen_of_diamonds = Card(1,12)

print(queen_of_diamonds)


class Deck:

    def __init__(self):
        self.cards = []
        for suit in range(4):
            for rank in range(1,14):
                card = Card(suit,rank)
                self.cards.append(card)

    def __str__(self):
        res = []
        for card in self.cards:
            res.append(str(card))
        return '\n'.join(res)

my_deck = Deck()

print(my_deck)



```