package kontakti.model;

import javafx.beans.property.SimpleFloatProperty;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductModel {
    SimpleIntegerProperty id = new SimpleIntegerProperty();
    SimpleStringProperty name = new SimpleStringProperty();
    SimpleStringProperty description = new SimpleStringProperty();
    SimpleFloatProperty price = new SimpleFloatProperty();

    public ProductModel(Integer id, String name, String description, Float price){

        this.id=new SimpleIntegerProperty (id);
        this.name=new SimpleStringProperty (name);;
        this.description=new SimpleStringProperty (description);;
        this.price=new SimpleFloatProperty (price);;

    }

    public int getId() {
        return id.get();
    }

    public SimpleIntegerProperty idProperty() {
        return id;
    }

    public String getName() {
        return name.get();
    }

    public SimpleStringProperty nameProperty() {
        return name;
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

    public static ObservableList<ProductModel> listaProdukta () {
        ObservableList<ProductModel> lista = FXCollections.observableArrayList();
        Baza DB = new Baza();
        ResultSet rs = DB.select("SELECT `id`, `title`, `description`, `price` FROM `products`");

        try {
            while (rs.next()) {
                lista.add(new ProductModel(rs.getInt("id"), rs.getString("title"), rs.getString("description"), rs.getFloat("price")));
            }
        } catch (SQLException ex) {
            System.out.println("Nastala je greška prilikom iteriranja: " + ex.getMessage());
        }
        return lista;
    }

}
