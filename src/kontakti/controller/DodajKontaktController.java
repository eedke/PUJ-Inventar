package kontakti.controller;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TextField;
import kontakti.model.KontaktModel;
import java.net.URL;
import java.util.ResourceBundle;

public class DodajKontaktController implements Initializable {

    @FXML
    TextField imeTxt;
    @FXML
    TextField prezimeTxt;
    @FXML
    TextField emailTxt;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }

    @FXML
    public void spasi(ActionEvent e){
        KontaktModel km = new KontaktModel(1, imeTxt.getText(), prezimeTxt.getText(), emailTxt.getText());
        km.spasi();
    }

}
