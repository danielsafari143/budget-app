// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("turbo:load", (event) => {
    try {
        let button = document.getElementById('backe')

        button.addEventListener('click' , () => {
            console.log("Salut")
        window.history.back()

    })
    } catch (error) {
        console.log()
    }
  
    const hiddenElements = document.querySelectorAll(".hidden");
    hiddenElements.forEach((el) => observer.observe(el));
  });
