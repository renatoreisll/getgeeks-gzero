def factory_new_user():

    return {
        'name': 'Clint Barton',
        'email': 'barton@shield.com',
        'password': 'pwd123'
    }

def factory_get_user():

    return {
        'name': 'Gwen Stacy',
        'email': 'stacy@ozcorp.com',
        'password': 'pwd123'
    }

def factory_remove_user():

    return {
        'name': 'Thaddeus Ross',
        'email': 'ross@gmail.com',
        'password': 'pwd123'
    }

def factory_update_user():

    email = 'renato@msn.com'

    return {
        'before': {
            'name': 'Reis Renato',
            'email': email,
            'password': 'pwd123'

        },
        'after': {
            'name': 'Renato Reis',
            'email': email,
            'whatsapp': '11999999999',
            'avatar': 'https://avatars.githubusercontent.com/u/61764257'
    
        }
    }

def factory_user_session(target):

    name = 'Kate Bishop'
    email = 'kate@hotmail.com'
    password = 'pwd123'

    data = {
        'signup': {
                    'name': name,
                    'email': email,
                    'password': password
        },
        'login': {
        'email': email,
        'password': password
        }
    }

    return data[target]