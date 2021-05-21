const displayProducts = () => {
  const weeklyProducts = document.getElementById('weekly-products')

  if (weeklyProducts) {
    // Grâce à l'API Casamiam, on va chercher quels sont les produits visibles en ce moment
    fetch("https://api.casamiam.io/producer/1010/catalog")
      .then(response => response.json())
      .then((data) => {
        const productsOfTheWeek = []

        data.forEach(element => {
          if (element.availability.visible){
            // On les range dans un array
            productsOfTheWeek.push(element)
          }
        });

        console.log(productsOfTheWeek[0].baseVariation.baseProduct.image)

        productsOfTheWeek.forEach(product => {
          weeklyProducts.insertAdjacentHTML("beforeend", `
              <div class = 'card-product'>
                <img src="${product.baseVariation.baseProduct.image}" alt="${product.baseVariation.baseProduct.category.name}">
                <div class = 'product-description'>
                  <h4>${product.baseVariation.baseProduct.name}</h4>
                  ${product.baseVariation.packaging} 
                  ${product.baseVariation.measureQuantity} 
                  ${product.baseVariation.measureUnit.symbol} env.
                  <div class = 'price-tag'>${product.price.price} €</div>
                <div>
              </div>`)
        })
        console.log(productsOfTheWeek)

      });
  }

}

export { displayProducts }