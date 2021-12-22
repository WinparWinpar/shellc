import os
import sys

def main(args):
    uname = input('Enter your username: ')
    try:
        os.chdir(f'/home/{uname}')
    except os.chdir(f'/home/{uname}'):
        main(args)
    with open('.bashrc', 'a') as f:
        f.write(f'export PATH=\"$PATH:{args[0]}/bin\"')
        f.write(f'alias shellc=\'bash shellc.sh\'')
    f.close()

if __name__ == '__main__':
    main(sys.argv)
