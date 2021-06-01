const weelkyProductsButton = () => {
  const button = document.querySelector('#weelky-products-button')

  if (button) {

    button.addEventListener("click", (e) => {
      const buttonPosition = window.scrollY + document.querySelector('#weelky-products-button').getBoundingClientRect().top 
      const scrollPosition = buttonPosition + 50
      window.scroll(0, scrollPosition)
    })
  
  }
}

export { weelkyProductsButton }