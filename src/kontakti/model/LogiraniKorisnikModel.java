package kontakti.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LogiraniKorisnikModel {
    public static boolean logiraj(String kime, String lozinka) {
        Baza db = new Baza();
        PreparedStatement ps = db.exec("SELECT * FROM users WHERE name =? AND " + "password=?");
        try {
            ps.setString(1, kime);
            ps.setString(2, lozinka);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException ex) {
            System.out.println("Nastala je greška: " + ex.getMessage());
            return false;
        }
    }
}
