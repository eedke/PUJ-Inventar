package kontakti.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

public class KontaktModel {
    SimpleIntegerProperty sifra;
    SimpleStringProperty ime;
    SimpleStringProperty email;
    SimpleStringProperty pass;

    public KontaktModel(Integer sifra, String ime, String email, String pass) {
        this.sifra = new SimpleIntegerProperty(sifra);
        this.ime = new SimpleStringProperty(ime);
        this.email = new SimpleStringProperty(email);
        this.pass = new SimpleStringProperty(pass);
    }

    public Integer getSifra() {
        return sifra.get();
    }

    public String getIme() {
        return ime.get();
    }

    public String getPass() {
        return pass.get();
    }

    public SimpleStringProperty passProperty() {
        return pass;
    }

    public String getEmail() {
        return email.get();
    }

    public static ObservableList<KontaktModel> listaKontakata() {
        ObservableList<KontaktModel> lista = FXCollections.observableArrayList();
        Baza DB = new Baza();
        ResultSet rs = DB.select("SELECT * FROM users");

        try {
            while (rs.next()) {
                lista.add(new KontaktModel(rs.getInt("id"), rs.getString("name"), rs.getString("email"), rs.getString("password")));
            }
        } catch (SQLException ex) {
            System.out.println("Nastala je greška prilikom iteriranja: " + ex.getMessage());
        }
        return lista;
    }

    public void spasi() {
        Baza DB = new Baza();
        PreparedStatement insert = DB.exec("INSERT INTO users VALUES(null,?,?,null,?,null,now(),now())");
        try {
            insert.setString(1, this.ime.getValue());
            //insert.setString(2, this.prezime.getValue());
            insert.setString(2, this.email.getValue());
            insert.setString(3, this.pass.getValue());
            insert.executeUpdate();
            System.out.println("insert?");
        } catch (SQLException ex) {
            Logger.getLogger(KontaktModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

