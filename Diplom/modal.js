

const Button = document.querySelector('.btn-second')
console.log(Button)
const modal = document.querySelector('.modal')
const closeBtn = document.querySelector('.close-modal')
Button.addEventListener('click',(evt)=>{
    evt.preventDefault()
    console.log("событие сработало")
modal.classList.add('modal_opened')

 })

closeBtn.addEventListener('click',()=>{
    modal.classList.remove('modal_opened')
})