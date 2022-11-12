const applicationSendBtn = document.querySelector('.btn-second')

applicationSendBtn.addEventListener('click',(evt) => {
    evt.preventDefault()
    // console.log('click')

    const application = new FormData()
    application.append('name', document.querySelector('.registration-form input[name=name]').value)
    application.append('phone', document.querySelector('.registration-form input[name=phone]').value)
    application.append('age',  document.querySelector('.registration-form input[name=age]').value)
    

    const url = 'application.php'
    const params = {
        method: 'POST',
        body: application
    }
    fetch(url,params)
        .then(response => response.json())
        .then(result => applicationModal(result));
})
const applicationModal = (result) => {
    console.log(result)
    const modal = document.querySelector('.modal')
    const modalPar = modal.querySelector('p')
    modalPar.textContent = result.message
    modal.classList.add('modal_opened')
}