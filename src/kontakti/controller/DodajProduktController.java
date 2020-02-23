package kontakti.controller;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TextField;
import kontakti.model.KontaktModel;
import kontakti.model.ProductModel;

import java.net.URL;
import java.util.ResourceBundle;

public class DodajProduktController implements Initializable {

    @FXML
    TextField imeTxt;
    @FXML
    TextField opisTxt;
    @FXML
    TextField cijenaTxt;
    @FXML
    TextField kolicinaTxt;
    @FXML
    TextField vrstaTxt;
    @FXML
    TextField podvrstaTxt;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }

    @FXML
    public void spasi(ActionEvent e) {
        ProductModel pm = new ProductModel(1, imeTxt.getText(), opisTxt.getText(), Float.parseFloat(cijenaTxt.getText()), Integer.parseInt(kolicinaTxt.getText()), vrstaTxt.getText(), podvrstaTxt.getText());
        pm.spasi();
    }
}
