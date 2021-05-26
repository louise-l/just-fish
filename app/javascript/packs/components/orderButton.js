const orderButton = () => {
  const button = document.querySelector('#how-to-order-button')

  if (button) {

    button.addEventListener("click", (e) => {
      const buttonPosition = window.scrollY + document.querySelector('#how-to-order-button').getBoundingClientRect().top 
      const scrollPosition = buttonPosition + 50
      window.scroll(0, scrollPosition)
    })
  
  }
}

export { orderButton }