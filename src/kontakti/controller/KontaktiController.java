package kontakti.controller;

import javafx.event.ActionEvent;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;
import kontakti.model.KontaktModel;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;

public class KontaktiController implements Initializable {

    @FXML
    TableView kontaktiTbl;
    @FXML
    TableColumn imeTblCol;
    @FXML
    TableColumn emailTblCol;

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        ObservableList<KontaktModel> data = KontaktModel.listaKontakata();
        imeTblCol.setCellValueFactory(new PropertyValueFactory<KontaktModel, String>("Ime"));
        emailTblCol.setCellValueFactory(new PropertyValueFactory<KontaktModel, String>("Email"));
        kontaktiTbl.setItems(data);
    }

    public void otvoriDodajKorisnika(ActionEvent e) {
        Parent root;
        try {
            root = FXMLLoader.load(getClass().getClassLoader().getResource("kontakti/view/DodajKontakt.fxml"));
            Stage stage = new Stage();
            stage.setTitle("Dodaj novi kontakt");
            stage.setScene(new Scene(root, 450, 450));
            stage.show();
        } catch (IOException ex) {
            Logger.getLogger(KontaktiController.class.getName()).log(Level.SEVERE,
                    null, ex);
        }
    }

    public void otvoriSveProdukte(ActionEvent e) {
        Parent root;
        try {
            root = FXMLLoader.load(getClass().getClassLoader().getResource("kontakti/view/Product.fxml"));
            Stage stage = new Stage();
            stage.setTitle("Dodaj novi product");
            stage.setScene(new Scene(root, 820, 400));
            stage.show();
        } catch (IOException ex) {
            Logger.getLogger(ProductController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
