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
    SimpleStringProperty imagePath;
    SimpleStringProperty title;
    SimpleStringProperty description;
    SimpleFloatProperty price;
    SimpleIntegerProperty amount;
    SimpleStringProperty type;
    SimpleStringProperty subtype;

    public ProductModel(Integer id, String title, String description, Float price, Integer amount, String type, String subtype) {

        this.id = new SimpleIntegerProperty(id);
        this.title = new SimpleStringProperty(title);
        this.imagePath = new SimpleStringProperty("http://nesto.ne");
        this.description = new SimpleStringProperty(description);
        this.price = new SimpleFloatProperty(price);
        this.amount = new SimpleIntegerProperty(amount);
        this.type = new SimpleStringProperty(type);
        this.subtype = new SimpleStringProperty(subtype);
    }
    public ProductModel(Integer id, String imagePath, String title, String description, Float price, Integer amount, String type, String subtype) {

        this.id = new SimpleIntegerProperty(id);
        this.imagePath = new SimpleStringProperty(imagePath);
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

    public String getImagePath() {
        return imagePath.get();
    }

    public SimpleStringProperty imagePathProperty() {
        return imagePath;
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
        PreparedStatement insert = DB.exec("INSERT INTO products VALUES(null,?,?,?,?,?,?,?,now(),now())");
        try {
            insert.setString(1, this.imagePath.getValue());
            insert.setString(2, this.title.getValue());
            insert.setString(3, this.description.getValue());
            insert.setFloat(4, this.price.getValue());
            insert.setInt(5, this.amount.getValue());
            insert.setString(6, this.type.getValue());
            insert.setString(7, this.subtype.getValue());
            insert.executeUpdate();
            System.out.println("insert??");
        } catch (SQLException ex) {
            Logger.getLogger(KontaktModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void uredi() {
        Baza DB = new Baza();
        PreparedStatement update = DB.exec("UPDATE products set imagePath=?,title=?,description= ?,price= ?,amount= ?,type= ?,subtype= ? where id=?");
        try {
            update.setString(1, this.imagePath.getValue());
            update.setString(2, this.title.getValue());
            update.setString(3, this.description.getValue());
            update.setFloat(4, this.price.getValue());
            update.setInt(5, this.amount.getValue());
            update.setString(6, this.type.getValue());
            update.setString(7, this.subtype.getValue());
            update.setInt(8, this.id.getValue());
            update.executeUpdate();
            System.out.println("update????");
        } catch (SQLException ex) {
            Logger.getLogger(KontaktModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static ObservableList<ProductModel> editProdukt(int pid) {
        ObservableList<ProductModel> lista = FXCollections.observableArrayList();
        Baza DB = new Baza();
        PreparedStatement select = DB.exec("SELECT `id`, `imagePath`, `title`, `description`, `price`, `amount`, `type`, `subtype` FROM products WHERE id=?");

        try {
            select.setInt(1, pid);
            ResultSet rs = select.executeQuery();

            while (rs.next()){
                lista.add(new ProductModel(rs.getInt("id"), rs.getString("imagePath"),
                        rs.getString("title"), rs.getString("description"),
                        rs.getFloat("price"), rs.getInt("amount"),
                        rs.getString("type"), rs.getString("subtype")));
                System.out.println(rs.getInt("id") + " " + rs.getString("imagePath"));
            }

        } catch (SQLException ex) {
            System.out.println("Nastala je greška prilikom unosa: " + ex.getMessage());
        }
        return lista;
    }
}
