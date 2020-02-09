package kontakti.model;

import javafx.beans.property.SimpleFloatProperty;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductModel {
    SimpleIntegerProperty id;
    SimpleStringProperty title;
    SimpleStringProperty description;
    SimpleFloatProperty price;
    SimpleIntegerProperty amount;
    SimpleIntegerProperty type;

    public ProductModel(Integer id, String title, String description, Float price, Integer amount, Integer type) {

        this.id = new SimpleIntegerProperty(id);
        this.title = new SimpleStringProperty(title);
        this.description = new SimpleStringProperty(description);
        this.price = new SimpleFloatProperty(price);
        this.amount = new SimpleIntegerProperty(amount);
        this.type = new SimpleIntegerProperty(type);
    }

    public int getId() {
        return id.get();
    }

    public SimpleIntegerProperty idProperty() {
        return id;
    }

    public String getTitle() {
        return title.get();
    }

    public SimpleStringProperty titleProperty() {
        return title;
    }

    public String getDescription() {
        return description.get();
    }

    public SimpleStringProperty descriptionProperty() {
        return description;
    }

    public float getPrice() {
        return price.get();
    }

    public SimpleFloatProperty priceProperty() {
        return price;
    }

    public int getAmount() {
        return amount.get();
    }

    public SimpleIntegerProperty amountProperty() {
        return amount;
    }

    public int getType() {
        return type.get();
    }

    public SimpleIntegerProperty typeProperty() {
        return type;
    }

    public static ObservableList<ProductModel> listaProdukta() {
        ObservableList<ProductModel> lista = FXCollections.observableArrayList();
        Baza DB = new Baza();
        ResultSet rs = DB.select("SELECT `id`, `title`, `description`, `price`, `amount`, `type` FROM `products`");

        try {
            while (rs.next()) {
                lista.add(new ProductModel(rs.getInt("id"), rs.getString("title"),
                        rs.getString("description"), rs.getFloat("price"),
                        rs.getInt("amount"), rs.getInt("type")));
            }
        } catch (SQLException ex) {
            System.out.println("Nastala je greška prilikom iteriranja: " + ex.getMessage());
        }
        return lista;
    }

}
