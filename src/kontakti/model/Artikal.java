package kontakti.model;

public abstract class Artikal {
    String title;
    String description;
    float price;

    public Artikal(String title, String description, float price) {
        this.title = title;
        this.description = description;
        this.price = price;
    }

    public void ispis() {
        System.out.println("Naziv produkta: " + title + ". \nOpis:" + description + ". \nCijena:" + price);
    }
}
