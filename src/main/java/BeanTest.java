import java.util.ArrayList;

public class BeanTest {
    public static void main(String[] args) {
        // Instantiate a few albums
        Album album1 = new Album();
        album1.setId(1);
        album1.setArtist("The Beatles");
        album1.setName("Abbey Road");
        album1.setReleaseDate(1969);
        album1.setSales(31.5);
        album1.setGenre("Rock");

        Album album2 = new Album();
        album2.setId(2);
        album2.setArtist("Pink Floyd");
        album2.setName("The Wall");
        album2.setReleaseDate(1979);
        album2.setSales(30.0);
        album2.setGenre("Rock");

        // Instantiate a few authors
        Author author1 = new Author();
        author1.setId(1);
        author1.setFirstName("Ernest");
        author1.setLastName("Hemingway");

        Author author2 = new Author();
        author2.setId(2);
        author2.setFirstName("Mark");
        author2.setLastName("Twain");

        Author author3 = new Author();
        author3.setId(3);
        author3.setFirstName("Jane");
        author3.setLastName("Austen");

        // Instantiate a few quotes
        Quote quote1 = new Quote();
        quote1.setId(1);
        quote1.setContent("The world breaks everyone, and afterward, some are strong at the broken places.");
        quote1.setAuthor(author1);

        Quote quote2 = new Quote();
        quote2.setId(2);
        quote2.setContent("If you tell the truth, you don't have to remember anything.");
        quote2.setAuthor(author2);

        Quote quote3 = new Quote();
        quote3.setId(3);
        quote3.setContent("I have loved none but you.");
        quote3.setAuthor(author3);

        Quote quote4 = new Quote();
        quote4.setId(4);
        quote4.setContent("It is a truth universally acknowledged, that a single man in possession of a good fortune, must be in want of a wife.");
        quote4.setAuthor(author3);

//        System.out.println(album1);
//        System.out.println(album2);
//        System.out.println(author1);
//        System.out.println(author2);
//        System.out.println(quote1);
//        System.out.println(quote2);
//

        // Create an ArrayList of quotes and add the quotes to it
        ArrayList<Quote> quotes = new ArrayList<>();
        quotes.add(quote1);
        quotes.add(quote2);
        quotes.add(quote3);
        quotes.add(quote4);

        System.out.println("********************");
        // Iterate over the ArrayList and print out the content and author name of each quote
        for (Quote quote : quotes) {
            System.out.println("Quote content: " + quote.getContent());
            System.out.println("Author name: " + quote.getAuthor().getFirstName() + " " + quote.getAuthor().getLastName());
            System.out.println();
        }
        System.out.println("********************");

    }
}
