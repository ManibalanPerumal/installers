go get -u github.com/ffuf/ffuf
git clone https://github.com/swarley7/gograbber.git
cp gograbber/* -r . && rm -fr gograbber
go build gograbber.go
git clone https://github.com/C-Sto/recursebuster.git
cp -r recursebuster/* . && rm -fr recursebuster/
mv main.go recursebuster.go
go build recursebuster.go
git clone https://github.com/maurosoria/dirsearch.git
curl -sL https://raw.githubusercontent.com/epi052/feroxbuster/master/install-nix.sh | bash
git clone https://github.com/stefanoj3/dirstalk.git
cp -r dirstalk/* . && rm -fr dirstalk/
cp cmd/dirstalk/main.go .
mv main.go dirstalk.go
go build dirstalk.go
