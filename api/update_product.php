<?php
// if the form was submitted
if($_POST){

    // include core configuration
    include_once '../config/core.php';

    // include database connection
    include_once '../config/database.php';

    // product object
    include_once '../objects/product.php';

    // class instance
    $database = new Database();
    $db = $database->getConnection();
    $product = new Product($db);

    // new values
    $product->name=$_POST['name'];
    $product->description=$_POST['description'];
    $product->price=$_POST['price'];
    $product->category_id=$_POST['category_id'];
    $product->id=$_POST['id'];

    // update the product
    echo $product->update() ? "true" : "false";
}
?>