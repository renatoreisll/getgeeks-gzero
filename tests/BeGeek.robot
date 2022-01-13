*Settings*
Documentation    BeGeek test suite

Resource    ${EXECDIR}/resources/Base.robot

Test Setup       Start Session
Test Teardown    Finish Session

*Test Cases*
Be a Geek

    ${user}    Factory User    be_geek

    Do Login    ${user}

    Go To Geek Form
    Fill Geek Form      ${user}[geek_profile]
    Submit Geek Form

    Geek Form Should Be Success

# Short Description

#     ${user}     Factory User    short_desc
#     Do Login    ${user}

#     Go To Geek Form
#     Fill Geek Form          ${user}[geek_profile]
#     Submit Geek Form
#     Alert Span Should Be    A descrição deve ter no minimo 80 caracteres

# Long Description

#     ${user}     Factory User    long_desc
#     Do Login    ${user}

#     Go To Geek Form
#     Fill Geek Form          ${user}[geek_profile]
#     Submit Geek Form
#     Alert Span Should Be    A descrição deve ter no máximo 255 caracteres

# Empty Description

#     ${user}     Factory User    empty_desc
#     Do Login    ${user}

#     Go To Geek Form
#     Fill Geek Form          ${user}[geek_profile]
#     Submit Geek Form
#     Alert Span Should Be    Informe a descrição do seu trabalho

# Empty Whats

#     ${user}     Factory User    empty_whats
#     Do Login    ${user}

#     Go To Geek Form
#     Fill Geek Form          ${user}[geek_profile]
#     Submit Geek Form
#     Alert Span Should Be    O Whatsapp deve ter 11 digitos contando com o DDD