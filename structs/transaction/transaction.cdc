import ProductsContract from 0x01

transaction(Name: String, Price: Int, Description: String) {

  prepare(signer: AuthAccount) {}

  execute {
    ProductsContract.addProduct(Name: Name, Price: Price, Description: Description)
    log("Product added")
  }
}
