*Settings*
Documentation    Login test suite

Resource    ${EXECDIR}/resources/Base.robot

Test Setup       Start Session
Test Teardown    Finish Session

*Variables*

*Test Cases*
User Login

    ${user}    Factory User    login

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    User Should Be Logged In    ${user}

Incorrect Pass
    [Tags]    inv_pass

    ${user}    Create Dictionary    email=renato@hotmail.com    password=abc123

    Go To Login Page
    Fill Credentials           ${user}
    Submit Credentials
    Modal Content Should Be    Usuário e/ou senha inválidos.

User not found
    [Tags]    user_404

    ${user}    Create Dictionary    email=renato@404.net    password=abc123

    Go To Login Page
    Fill Credentials           ${user}
    Submit Credentials
    Modal Content Should Be    Usuário e/ou senha inválidos.

Incorrect Email
    [Tags]    inv_email

    ${user}    Create Dictionary    email=renato.com.br    password=abc123

    Go To Login Page
    Fill Credentials        ${user}
    Submit Credentials
    Should Be Type Email

# Desafio 1 do Módulo PRO

# Automatizar 3 novos casos de teste: Email obrigatório, senha obrigatória, Campos obrigatórios.

# Entrega: no Github

Validating empty field email

    [Tags]    empty

    ${user}    Create Dictionary    email=${EMPTY}    password=123456

    Go To Login Page
    Fill Credentials        ${user}
    Submit Credentials
    Alert Span Should Be    E-mail obrigatório

Validating empty field password

    [Tags]    empty

    ${user}    Create Dictionary    email=renatoreis@live.com    password=${EMPTY}

    Go To Login Page
    Fill Credentials        ${user}
    Submit Credentials
    Alert Span Should Be    Senha obrigatória

Validating empty fields

    [Tags]    empty

    ${expected_alerts}    Create List
    ...                   E-mail obrigatório
    ...                   Senha obrigatória

    Go To Login Page
    Submit Credentials
    Alert Spans Should Be    ${expected_alerts}