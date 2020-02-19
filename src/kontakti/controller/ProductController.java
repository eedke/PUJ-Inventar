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
import kontakti.model.ProductModel;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ProductController implements Initializable {

    @FXML
    TableView productsTbl;
    @FXML
    TableColumn imePTblCol;
    @FXML
    TableColumn idPTblCol;
    @FXML
    TableColumn opisPTblCol;
    @FXML
    TableColumn cijenaPTblCol;
    @FXML
    TableColumn kolicinaPTblCol;
    @FXML
    TableColumn tipPTblCol;
    @FXML
    TableColumn subtipPTblCol;

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        ObservableList<ProductModel> data = ProductModel.listaProdukta();
        idPTblCol.setCellValueFactory(new PropertyValueFactory<ProductModel, Integer>("id"));
        imePTblCol.setCellValueFactory(new PropertyValueFactory<ProductModel, String>("title"));
        opisPTblCol.setCellValueFactory(new PropertyValueFactory<ProductModel, String>("description"));
        cijenaPTblCol.setCellValueFactory(new PropertyValueFactory<ProductModel, Float>("price"));
        kolicinaPTblCol.setCellValueFactory(new PropertyValueFactory<ProductModel, Integer>("amount"));
        tipPTblCol.setCellValueFactory(new PropertyValueFactory<ProductModel, String>("type"));
        subtipPTblCol.setCellValueFactory(new PropertyValueFactory<ProductModel, String>("subtype"));
        productsTbl.setItems(data);
    }

    public void otvoriDodajProdukt(ActionEvent e) {
        Parent root;
        try {
            root = FXMLLoader.load(getClass().getClassLoader().getResource("kontakti/view/DodajProdukt.fxml"));
            Stage stage = new Stage();
            stage.setTitle("Dodaj novi produkt");
            stage.setScene(new Scene(root, 550, 950));
            stage.show();
        } catch (IOException ex) {
            Logger.getLogger(ProductController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
