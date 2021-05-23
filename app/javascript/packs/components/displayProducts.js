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

        productsOfTheWeek.forEach(product => {
          weeklyProducts.insertAdjacentHTML("beforeend", `
              <div class = 'card-product' id = ${product.uniqueId}>
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

        const products = Array.from(document.getElementsByClassName('card-product'))
        const displayPlace = document.getElementById('product-display')
        const modalBackground = document.querySelector(".modal-background")
        const body = document.getElementsByTagName("body")[0];
        
        
        
        
        const displayProductHandler = (product) => {
          
          displayPlace.innerHTML = ''
          displayPlace.insertAdjacentHTML("beforeend", `
          <div class = 'show-product'>
          <i class="fas fa-times close-modal"></i>
          <img src="${product.baseVariation.baseProduct.image}" alt="${product.baseVariation.baseProduct.category.name}" class= 'show-product-img'>
          <div class = "show-product-description">
          
          <h3>${product.baseVariation.baseProduct.name}</h3>
          <p>${product.baseVariation.baseProduct.description}</p>
          <p class = 'packaging-details'>${product.baseVariation.packaging} ${product.baseVariation.measureQuantity} ${product.baseVariation.measureUnit.symbol} env.</p>
          <div class = 'price-tag'>${product.price.price} €</div>
          </div>
          </div>`)
          const modalClose = document.querySelector(".close-modal")
          modalClose.onclick = () => {
            displayPlace.style.display = 'none'
            modalBackground.style.opacity = "0";
            modalBackground.style.visibility = "hidden" 
            body.style.overflow = 'visible'
          }
        }

        const openModal = () => {
            displayPlace.style.display = 'flex'
            modalBackground.style.visibility = 'visible'
            modalBackground.style.opacity = '1'
            body.style.overflow = 'hidden' 
        }

        const closeModal = (event) => {
          if (event.target == modalBackground) {
            displayPlace.style.display = 'none'
            modalBackground.style.opacity = "0";
            modalBackground.style.visibility = "hidden" 
            body.style.overflow = 'visible'

          }

        }

        window.onclick = (event) => {
          closeModal(event);
        }



        

        products.forEach(product => {
          product.addEventListener("click", event => {
            let productToDisplay = productsOfTheWeek.find( x => x.uniqueId === product.attributes.id.value)
            displayProductHandler(productToDisplay)
            openModal()
          })
        })

        



        

      });
  }

}

export { displayProducts }