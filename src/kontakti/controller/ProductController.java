package kontakti.controller;

import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.Stage;
import kontakti.model.KontaktModel;
import kontakti.model.ProductModel;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ProductController implements Initializable{

    @FXML
    TableView productsTbl;
    @FXML
    TableColumn imePTblCol;
    @FXML
    TableColumn opisPTblCol;
    @FXML
    TableColumn cijenaPTblCol;

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        ObservableList<ProductModel> data = ProductModel.listaProdukta();
        imePTblCol.setCellValueFactory(new PropertyValueFactory<ProductModel, String>("title"));
        opisPTblCol.setCellValueFactory(new PropertyValueFactory<ProductModel, String>("description"));
        cijenaPTblCol.setCellValueFactory(new PropertyValueFactory<ProductModel, Float>("price"));
        productsTbl.setItems(data);
    }



}
