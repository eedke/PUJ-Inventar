package kontakti.controller;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.stage.Stage;
import kontakti.model.KontaktModel;
import java.net.URL;
import java.util.ResourceBundle;

public class DodajKontaktController implements Initializable {

    @FXML
    TextField imeTxt;
    @FXML
    TextField emailTxt;
    @FXML
    TextField passTxt;
    @FXML
    Button closeButton;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }

    @FXML
    public void spasi(ActionEvent e) {
        KontaktModel km = new KontaktModel(1, imeTxt.getText(), emailTxt.getText(), passTxt.getText());
        km.spasi();
        Stage stage = (Stage) closeButton.getScene().getWindow();
        stage.close();
    }
}
