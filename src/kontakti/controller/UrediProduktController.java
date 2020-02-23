package kontakti.controller;

import javafx.beans.property.SimpleFloatProperty;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;
import kontakti.model.ProductModel;

import java.net.URL;
import java.util.ResourceBundle;

public class UrediProduktController implements Initializable {

    @FXML
    ImageView imageEdit;
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
    @FXML
    TextField imageTxt;
    @FXML
    Button editBtn;
    int id = 0;

    public UrediProduktController(int id) {
        this.id = id;
    }

    public void setId(int id) {
        this.id = id;
    }



    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

        ObservableList<ProductModel> data = ProductModel.editProdukt(id);

        try {
            Image image = new Image(data.get(0).getImagePath());
            imageEdit.setImage(image);
        }catch (Exception e){
            System.out.println(e);
        }
        id = data.get(0).getId();
        imageTxt.setText(data.get(0).getImagePath());
        imeTxt.setText(data.get(0).getTitle());
        opisTxt.setText(data.get(0).getDescription());
        cijenaTxt.setText(data.get(0).priceProperty().getValue().toString());
        kolicinaTxt.setText(data.get(0).amountProperty().getValue().toString());
        vrstaTxt.setText(data.get(0).getType());
        podvrstaTxt.setText(data.get(0).getSubtype());

        editBtn.setOnAction(this::spasi);
    }

    @FXML
    public void spasi(ActionEvent e) {
        ProductModel pm = new ProductModel(id, imageTxt.getText(), imeTxt.getText(), opisTxt.getText(), Float.parseFloat(cijenaTxt.getText()), Integer.parseInt(kolicinaTxt.getText()), vrstaTxt.getText(), podvrstaTxt.getText());
        pm.uredi();
    }
}
