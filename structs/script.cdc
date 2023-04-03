import ProductsContract from 0x01

pub fun main(Name: String): ProductsContract.Product{
    return ProductsContract.Products[Name]!
}
