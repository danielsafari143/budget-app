// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("turbo:load", (event) => {
    try {
        let button = document.getElementById('backward')

        button.addEventListener('click' , () => {
         location.href = location.origin.concat("/groupe")
    })
    } catch (error) {
        console.log()
    }

    try {
        let secondButton = document.getElementById('backe')

        secondButton.addEventListener('click' , () => {
            window.history.back()
       })
    } catch (error) {
        console.log()
    }
  
    const hiddenElements = document.querySelectorAll(".hidden");
    hiddenElements.forEach((el) => observer.observe(el));
  });
