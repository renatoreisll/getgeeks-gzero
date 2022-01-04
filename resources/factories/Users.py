from faker import Faker
fake = Faker()

import bcrypt

def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed


def factory_user():
    return {
        'name': fake.first_name(),
        'lastname': fake.last_name(),
        'email': fake.free_email(),
        'password': 'pwd123'
    }

def factory_wrong_email():

    first_name = fake.first_name()

    return {
        'name': fake.first_name(),
        'lastname': fake.last_name(),
        'email': first_name.lower() + '&gmail.com',
        'password': 'pwd123'
    }

def factory_user_login():
    return {
        'name': 'Renato',
        'lastname': 'Reis',
        'email': 'renatoreis@live.com',
        'password': 'pwd123'
    }

def factory_user_be_geek():
    return {
        'name': 'Kim',
        'lastname': 'Dotcom',
        'email': 'kim@dot.com',
        'password': 'pwd123',
        'geek_profile': {
                'whats': '11999999999',
                'desc': 'Seu computador está lento, reiniciando do nada? Talvez seja um vírus... Posso formatar seu PC!',
                'printer_repair': 'Sim',
                'work': 'Remoto',
                'cost': '100'
        }
    }