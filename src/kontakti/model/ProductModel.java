package kontakti.model;

import javafx.beans.property.SimpleFloatProperty;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ProductModel {
    SimpleIntegerProperty id;
    SimpleStringProperty title;
    SimpleStringProperty description;
    SimpleFloatProperty price;
    SimpleIntegerProperty amount;
    SimpleStringProperty type;
    SimpleStringProperty subtype;

    public ProductModel(Integer id, String title, String description, Float price, Integer amount, String type, String subtype) {

        this.id = new SimpleIntegerProperty(id);
        this.title = new SimpleStringProperty(title);
        this.description = new SimpleStringProperty(description);
        this.price = new SimpleFloatProperty(price);
        this.amount = new SimpleIntegerProperty(amount);
        this.type = new SimpleStringProperty(type);
        this.subtype = new SimpleStringProperty(subtype);
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

    public String getType() {
        return type.get();
    }

    public SimpleStringProperty typeProperty() {
        return type;
    }

    public String getSubtype() {
        return subtype.get();
    }

    public SimpleStringProperty subtypeProperty() {
        return subtype;
    }

    public void setSubtype(String subtype) {
        this.subtype.set(subtype);
    }

    public static ObservableList<ProductModel> listaProdukta() {
        ObservableList<ProductModel> lista = FXCollections.observableArrayList();
        Baza DB = new Baza();
        ResultSet rs = DB.select("SELECT `id`, `title`, `description`, `price`, `amount`, `type`, `subtype` FROM `products`");

        try {
            while (rs.next()) {
                lista.add(new ProductModel(rs.getInt("id"), rs.getString("title"),
                        rs.getString("description"), rs.getFloat("price"),
                        rs.getInt("amount"), rs.getString("type"), rs.getString("subtype")));
            }
        } catch (SQLException ex) {
            System.out.println("Nastala je greška prilikom iteriranja: " + ex.getMessage());
        }
        return lista;
    }
    public void spasi() {
        Baza DB = new Baza();
        PreparedStatement insert = DB.exec("INSERT INTO products VALUES(null,'http://nesto.ne',?,?,?,?,?,?,now(),now())");
        try {
            insert.setString(1, this.title.getValue());
            insert.setString(2, this.description.getValue());
            insert.setFloat(3, this.price.getValue());
            insert.setInt(4, this.amount.getValue());
            insert.setString(5, this.type.getValue());
            insert.setString(6, this.subtype.getValue());
            insert.executeUpdate();
            System.out.println("insert??");
        } catch (SQLException ex) {
            Logger.getLogger(KontaktModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
