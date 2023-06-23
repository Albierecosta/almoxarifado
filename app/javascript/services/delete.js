import "@hotwired/turbo"

let dialog;

Turbo.setConfirmMethod(() => {
dialog = document.getElementById("turbo-confirm")

dialog.showModal()

 return new Promise((resolve, reject) => {
    dialog.addEventListener("close", () =>{
      resolve(dialog.returnValue == "confirm")
    }, { once: true })
 })
})
