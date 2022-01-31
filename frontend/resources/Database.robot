*Settings*
Documentation    Database Helpers

Library    DatabaseLibrary
Library    factories/Users.py

*Keywords*
Connect to Postgres

    Connect To Database    psycopg2
    ...                    rhrraswh
    ...                    rhrraswh
    ...                    03_cHojyAAf4lmZzW4D61qXcAjqkLbjf
    ...                    castor.db.elephantsql.com
    ...                    5432

Reset Env

    Execute SQL String    DELETE from public.geeks;
    Execute SQL String    DELETE from public.users;

Insert User
    [Arguments]    ${u}

    ${hashed_pass}    Get Hashed Pass    ${u}[password]

    ${q}    Set Variable    INSERT INTO public.users (name, email, password_hash, is_geek) values ('${u}[name] ${u}[lastname]', '${u}[email]', '${hashed_pass}', false)

    Execute SQL String    ${q}

Users Seed

    ${users}        Users To Insert DB

    FOR     ${user}     IN      @{users}

       Insert User  ${user}

    END