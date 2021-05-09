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
            console.log(element.baseVariation.baseProduct.name)
          }
        });

        productsOfTheWeek.forEach(product => {
          // weeklyProducts.
        })
        console.log(productsOfTheWeek)

      });
  }

}

export { displayProducts }