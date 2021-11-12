import os

os.system('curl -s "https://raw.githubusercontent.com/ManibalanPerumal/installers/main/cd_installer.sh" | bash')

#removing vendor dir
if os.path.isdir('vendor'):
  os.system('rm vendor -fr')

#Content Discovery Repl Directory

os.system('go mod vendor')

os.system('go run gograbber.go')
print('--'*30)

os.system('go run recursebuster.go')
print('--'*30)

os.system('cd dirsearch && python -m pip install --upgrade pip && pip install -r requirements.txt && python dirsearch.py')
print('--'*30)

os.system('./feroxbuster -u http://youngcapital.nl -x pdf -x js,html -x php txt json,docx')
print('--'*30)

os.system('go run dirstalk.go scan https://youngcapital.nl/ --dictionary CFF.txt ')
print('--'*30)

os.system('~/go/bin/ffuf -h')
print('--'*30)

os.system('echo "done"')
