import 'package:flutter/material.dart';

class FirstScr extends StatefulWidget {
  const FirstScr({Key? key}) : super(key: key);

  @override
  _FirstScrState createState() => _FirstScrState();
}

class _FirstScrState extends State<FirstScr> {
  List category = [
    "Love",
    "Motivation",
    "Anger",
    "Education",
    "Attitude",
    "Change",
    "Friendship",
    "Mom & Dad",
    "Relationship",
    "Travel"
  ];
  List cat_img = [
    "assets/Quotes/1.jfif",
    "assets/Quotes/2.png",
    "assets/Quotes/3.png",
    "assets/Quotes/4.jfif",
    "assets/Quotes/5.jfif",
    "assets/Quotes/6.jfif",
    "assets/Quotes/7.jfif",
    "assets/Quotes/8.jfif",
    "assets/Quotes/9.jfif",
    "assets/Quotes/10.jfif",
  ];
  List Love=[
    "Where there is love there is life",
    "Whatever our souls are made of, his and mine are the same",
    "True love is like ghosts, which everyone talks about and few have seen",
    "A loving heart is the truest wisdom",
    "To love and be loved is to feel the sun from both sides"
  ];
  List Moti=[
    "There is nothing impossible to they who will try",
    "The bad news is time flies. The good news is you’re the pilot",
    "Keep your face always toward the sunshine, and shadows will fall behind you",
    "You define your own life. Don’t let other people write your script",
    "You can be everything. You can be the infinite amount of things that people are"
  ];
  List Anger=[
    "When angry count to ten before you speak. If very angry, count to one hundred",
    "Never do anything when you are in a temper, for you will do everything wrong",
    "It is wise to direct your anger towards problems - not people; to focus your energies on answers - not excuses",
    "The fiercest anger of all, the most incurable, is that which rages in the place of dearest love",
    "There are two things a person should never be angry at, what they can help, and what they cannot"
  ];
  List Edu=[
    "The roots of education are bitter, but the fruit is sweet",
    "Education is what remains after one has forgotten what one has learned in school",
    "The more that you read, the more things you will know, the more that you learn, the more places you’ll go",
    "Live as if you were to die tomorrow. Learn as if you were to live forever",
    "Education without values, as useful as it is, seems rather to make man a more clever devil"
  ];
  List Atti=[
    "Live life to the fullest, and focus on the positive",
    "A positive attitude is a person’s passport to a better tomorrow",
    "A strong positive attitude will create more miracles than any wonder drug",
    "I’m too busy working on my own grass to see if yours is greener.",
    "Perpetual optimism is a force multiplier"
  ];
  List Chan=[
    "Those who cannot change their minds cannot change anything",
    "I alone cannot change the world, but I can cast a stone across the waters to create many ripples",
    "Change will not come if we wait for some other person, or if we wait for some other time. We are the ones we’ve been waiting for. We are the change that we seek",
    "The world as we have created it is a process of our thinking. It cannot be changed without changing our thinking",
    "Yesterday I was clever, so I wanted to change the world. Today I am wise, so I am changing myself"
  ];
  List Fri=[
    "A real friend is one who walks in when the rest of the world walks out",
    "Lots of people want to ride with you in the limo, but what you want is someone who will take the bus with you when the limo breaks down",
    "If you live to be a hundred, I hope I live to be a hundred minus one day, so I never have to live without you",
    "Things are never quite as scary when you’ve got a best friend",
    "Real friendship is when your friend comes over to your house and then you both just take a nap"
  ];
  List Par=[
    "Parents don't make mistakes because they don't care, but because they care so deeply",
    "Your captain is your mother and father. He will tell you when to eat and when to sleep. Listen to him. Make happy. And we will all see the land we are going to",
    "Parents often talk about the younger generation as if they didn't have anything to do with it",
    "The only thing better than having you for parents is my children having you for grandparents",
    "It is time for parents to teach young people early on that in diversity there is beauty and there is strength"
  ];
  List Rel=[
    "You meet thousands of people and none of them really touch you. And then you meet one person and your life is changed forever",
    "Affection is when you see someone's strengths; love is when you accept someone's flaws",
    "My great hope is to laugh as much as I cry; to get my work done and try to love somebody and the courage to accept the love in return",
    "We loved with a love that was more than love",
    "You know you're in love when you can't fall asleep because reality is finally better than your dreams"
  ];
  List Travel=[
    "Travel makes one modest. You see what a tiny place you occupy in the world",
    "Travel expands the mind and fills the gap",
    "Time flies. It’s up to you to be the navigator",
    "The world is full of magic things, patiently waiting for our senses to grow sharper",
    "The real voyage of discovery consists not in seeking new landscapes, but in having new eyes"
  ];
  List FinalQuo=[];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "YourQuote",
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: ListView.builder(
              itemCount: category.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    FinalQuo.add(Love);
                    FinalQuo.add(Moti);
                    FinalQuo.add(Anger);
                    FinalQuo.add(Edu);
                    FinalQuo.add(Atti);
                    FinalQuo.add(Chan);
                    FinalQuo.add(Fri);
                    FinalQuo.add(Par);
                    FinalQuo.add(Rel);
                    FinalQuo.add(Travel);

                    Navigator.pushNamed(context, '/SecondScr',arguments: FinalQuo[index]);
                  },
                  child: Container(
                    margin: EdgeInsets.all(15),
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black54,
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Container(
                          height: 80,
                          width: 80,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("${cat_img[index]}",),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text("${category[index]}",style: TextStyle(fontSize: 25,color: Colors.white,letterSpacing: 1.5),)
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
