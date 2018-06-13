/**
 * processing-console-assignment-4-mad-libs
 * by Yaqub Ibrahim
 * 
 * A mad lib that randomly generated its adjectives, nouns and verbs
 * 
 */

void setup() {
  String poem[] = loadStrings("poem.txt");
  String nouns[]= loadStrings("nouns.txt");
  String adjectives[] = loadStrings("adjectives.txt");
  String verbs[] = loadStrings("verbs.txt");
  for ( int i=0; i < poem.length; i++) {
    int j = int(random(nouns.length-1));
    poem[i] = poem[i].replaceAll("<noun>", nouns[j]);
    int v= int(random(verbs.length-1));
    poem[i] = poem[i].replaceAll("<verb>", verbs[v]);
    int a= int(random(adjectives.length-1));
    poem[i] = poem[i].replaceAll("<adjective>", adjectives[a]);
    println(poem[i]);
  }
}

void draw() {
}
