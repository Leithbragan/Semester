package tatar.tourism.pojo;


public class Book {

    private int id;
    private String author;
    private String name;
    private String gener;
    private int price;
    private String description;
    private int edition;
    private int pages;
    private int weight;

    public void setId(int id) {
        this.id = id;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setName(String nsme) {
        this.name = nsme;
    }

    public void setGener(String gener){
        this.gener = gener;
    }

    public void setPrice(int prise) {
        this.price = prise;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setEdition(int edition) {
        this.edition = edition;
    }

    public void setPages(int pages) {
        this.pages = pages;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public int getId() {  return id; }

    public String getAuthor() {
        return author;
    }

    public String getName() {
        return name;
    }

    public String getGener(){
        return gener;
    }

    public int getPrice() {
        return price;
    }

    public String getDescription() {
        return description;
    }

    public int getWeight() {
        return weight;
    }

    public int getPages() {
        return pages;
    }

    public int getEdition() {
        return edition;
    }
}
