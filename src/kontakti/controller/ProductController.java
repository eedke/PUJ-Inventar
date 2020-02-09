package kontakti.controller;

import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import kontakti.model.ProductModel;
import java.net.URL;
import java.util.ResourceBundle;

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

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        ObservableList<ProductModel> data = ProductModel.listaProdukta();
        idPTblCol.setCellValueFactory(new PropertyValueFactory<ProductModel, Integer>("id"));
        imePTblCol.setCellValueFactory(new PropertyValueFactory<ProductModel, String>("name"));
        opisPTblCol.setCellValueFactory(new PropertyValueFactory<ProductModel, String>("description"));
        cijenaPTblCol.setCellValueFactory(new PropertyValueFactory<ProductModel, Float>("price"));
        kolicinaPTblCol.setCellValueFactory(new PropertyValueFactory<ProductModel, Integer>("amount"));
        tipPTblCol.setCellValueFactory(new PropertyValueFactory<ProductModel, Integer>("type"));
        productsTbl.setItems(data);
    }
}
