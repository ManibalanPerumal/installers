go get -u github.com/ffuf/ffuf
git clone https://github.com/swarley7/gograbber.git
cp gograbber/* -r . && rm -fr gograbber
go build gograbber.go
go get -u github.com/c-sto/recursebuster
git clone https://github.com/maurosoria/dirsearch.git
curl -sL https://raw.githubusercontent.com/epi052/feroxbuster/master/install-nix.sh | bash
git clone https://github.com/stefanoj3/dirstalk.git
cp -r dirstalk/* . && rm -fr dirstalk/
cp cmd/dirstalk/main.go .
mv main.go dirstalk.go
go build dirstalk.go
