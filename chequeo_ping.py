import os

hosts = ['8.8.8.8', '1.1.1.1']
for host in hosts:
    response = os.system(f'ping -c 1 {host}')
    print(f'{host} está {'activo' if response == 0 else 'inactivo'}')