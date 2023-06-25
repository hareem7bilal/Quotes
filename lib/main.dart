import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';


void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes=[
    Quote(author:'Nelson Mandela',text:'The greatest glory in living lies not in never falling, but in rising every time we fall.'),
    Quote(author:'Eleanor Roosevelt',text:'The future belongs to those who believe in the beauty of their dreams.'),
   Quote(author:'Aristotle',text:'It is during our darkest moments that we must focus to see the light.'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 236, 215),
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 117, 150, 117),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: quotes.map((q)=>QuoteCard(quote: q, delete: (){
            setState((){
              quotes.remove(q);
            });
          })).toList(),
        ),
    );
  }
}

