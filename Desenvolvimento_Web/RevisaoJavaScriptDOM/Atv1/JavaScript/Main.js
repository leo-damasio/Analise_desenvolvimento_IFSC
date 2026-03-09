const form = document.getElementById('interestForm');

form.addEventListener('submit', function (event) {
    event.preventDefault();

    //obter dados do formulario
    let nomeForm = document.getElementById('nome');
    let emailForm = document.getElementById('email');
    let descricaoForm = document.getElementById('mensagem');


    //copia o html da mensagem
    let mensagemHtml =
        ` <div id=\"information\">
          <h3>Informação inserida</h3>
          <p id=\"nomep\">${nomeForm.value}</p>
          <p id=\"emailp\">${emailForm.value}</p>
          <p id=\"mensagemp\">${descricaoForm.value}</p>
         </div>`

    //inclui a mensagem no final do div
    let form = document.getElementById('form');
    form.innerHTML += mensagemHtml;



});