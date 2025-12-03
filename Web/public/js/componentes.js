var feedbackTimeout;

function CarregarHeader() {
    var headerHTML;
    var navContent;
    var logado = sessionStorage.getItem("ID_USUARIO");
    
    if (logado) {
        navContent = `
            <ul class="navbar__items">
                <li><a href="home.html" class="navbar__items__options">Home</a></li>
                <li><a href="navegacao.html" class="navbar__items__options">Bandas</a></li>
                <li><a href="perfil.html" class="navbar__items__options">Perfil</a></li>
                <li><button onclick="Logout()" class="navbar__items__options btn_logout">Sair</button></li>
            </ul>
        `;
    } else {
        navContent = `
            <div class="ranking__banda">
                <ul class="navbar__items">
                    <li><a href="navegacao.html" class="navbar__items__options">Bandas</a></li>
                </ul>
            </div>
            <div class="login__cadastro">
                <ul class="navbar__items">
                    <li>
                        <a href="login.html" class="navbar__items__options">LOGIN</a>
                    </li>
                    <li>
                        <a href="cadastro.html" class="navbar__items__options botao">
                            CADASTRE-SE
                        </a>
                    </li>
                </ul>
            </div>
        `;
    }
    
    headerHTML = `
        <header>
            <nav>
                <a href="index.html" class="header__logo"><h2>SEMPITERNAL</h2></a>
                <div class="header__nav">
                    ${navContent}
                </div>
            </nav>
        </header>
    `
    
    document.getElementById("header-placeholder").innerHTML = headerHTML;
}

function CarregarFooter() {
    var usuarioLogado = sessionStorage.getItem("ID_USUARIO");
    var listaLinks = "";

    if (usuarioLogado) {
        listaLinks = `
            <li><a href="perfil.html">Perfil</a></li>
            <li><a href="navegacao.html">Bandas</a></li>
            <li><a href="home.html">Ranking</a></li>
        `;
    } else {
        listaLinks = `
            <li><a href="cadastro.html">Cadastre-se</a></li>
            <li><a href="login.html">Login</a></li>
            <li><a href="navegacao.html">Bandas</a></li>
        `;
    }

    var footerHTML = `
        <div class="footer__container">
            <div class="footer__identidade">
                <a href="index.html"> <h2 class="footer__logo">SEMPITERNAL</h2> </a>
                <div class="footer__social">
                    <a href="https://www.linkedin.com/in/strilicherk/" class="social__link" target="_blank">
                        <img src="assets/icons/LinkedIn.png" alt="LinkedIn"> 
                        <span>LinkedIn</span>
                    </a>
                    <a href="https://github.com/Strilicherk" class="social__link" target="_blank">
                        <img src="assets/icons/GitHub.png" alt="GitHub"> 
                        <span>GitHub</span>
                    </a>
                </div>
            </div>
            
            <nav class="footer__nav">
                <ul class="footer__items">
                    ${listaLinks}
                </ul>
            </nav>
            
            <div class="footer__legal">
                <p>Todos os direitos (não) reservados.</p>
                <p>Um projeto de faculdade.</p>
            </div>
        </div>
    `;

    document.getElementById("footer-placeholder").innerHTML = footerHTML;
}

function MostrarFeedback(mensagem, sucesso) {
    var modal = document.getElementById("modal-global");
    clearTimeout(feedbackTimeout);

    modal.innerText = mensagem;
    modal.className = ""; 
    
    if (sucesso) {
        modal.classList.add("modal__sucesso");
    } else {
        modal.classList.add("modal__erro");
    }

    modal.style.display = "block";

    feedbackTimeout = setTimeout(() => {
        modal.style.display = "none";
    }, 4000);
}

function Logout() {
    localStorage.clear();
    window.location.href = "login.html";
}