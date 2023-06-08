#! /bin/bash

echo Chapter 1: Getting started with Bash
echo
echo ------------------------
echo Section 1.1: Hello World

echo "Hello World"
#> Hello World # Output Example

touch hello-world.sh
chmod +x hello-world.sh #yada chmod u+x hello-world.sh kullanıcıya çalıştırma yetkisi verir.
echo  -e '#!/bin/bash\necho "Hello World"' > hello-world.sh
echo merhaba dünya çıktısı veren bash betiği, hello-world.sh adıyla aynı klasöre oluşturuldu.

#Aşağıdaki 4 şekilde komut betiğini çalıştırabiliriz:
#   ./hello-world.sh – most commonly used, and recommended
#   /bin/bash hello-world.sh
#   bash hello-world.sh – assuming /bin is in your $PATH
#   sh hello-world.sh

echo
echo ----------------------------------------
echo Section 1.2: Hello World Using Variables

#Create a new ﬁle called hello.sh with the following content and give it executable permissions with chmod +x hello.sh

touch hello.sh
chmod u+x hello.sh
#ls -l
echo -e '#!/usr/bin/env bash\n' > hello.sh
echo -e '# Note that spaces cannot be used around the `=` assignment operator' >> hello.sh
echo -e 'whom_variable="World"\n' >> hello.sh
echo '# Use printf to safely output the data' >> hello.sh
echo 'printf "Hello, %s\n" "$whom_variable"' >> hello.sh
echo '#> Hello, World' >> hello.sh

echo değişken ile merhaba dünya çıktısı veren bash betiği, hello.sh adıyla aynı klasöre oluşturuldu.

touch hello1.sh
chmod u+x hello1.sh
#ls -l
echo -e '#!/usr/bin/env bash\n' > hello1.sh
echo 'printf "Hello, %s\n" "$1"' >> hello1.sh
echo '#> Hello, World' >> hello1.sh

echo Parametre ile merhaba dünya çıktısı veren bash betiği, hello1.sh adıyla aynı klasöre oluşturuldu.

echo
echo ----------------------------------------
echo Section 1.3: Hello World with User Input

echo "Who are you?"
read name
echo "Hello, $name."

echo "What are you doing?"
read action
echo "You are ${action}ing."

echo
echo ---------------------------------------------
echo Section 1.4: Importance of Quoting in Strings

echo 'There are two types of quoting:'
echo 'Weak: uses double quotes: '
echo 'Strong: uses single quotes: '

world="World"
echo "Hello $world"
#> Hello World

world="World"
echo 'Hello $world'
#> Hello $world

world="World"
echo "Hello \$world"
#> Hello $world

echo
echo ---------------------------------------------------
echo Section 1.5: Viewing information for Bash built-ins

#help <command>
help unset
#kısa bir açıklama için
help -d unset

echo
echo ----------------------------------------
echo Section 1.6: Hello World in "Debug" mode

touch hello2.sh
chmod u+x hello2.sh
#ls -l
echo -e '#! /bin/bash\n' > hello2.sh
echo 'echo "Hello World"' >> hello2.sh

bash -x hello.sh

echo merhaba dünya çıktısı veren bash betiği, hello2.sh adıyla aynı klasöre oluşturuldu ve Debug Mode ile çalıştırıldı

echo
touch hello3.sh
chmod u+x hello3.sh
#ls -l
echo -e '#! /bin/bash\n' > hello3.sh
echo 'echo "Hello World\n"' >> hello3.sh
echo 'adding_string_to_number="s"' >> hello3.sh
echo 'v=$(expr 5 + $adding_string_to_number)' >> hello3.sh

echo Debug Mode ile çalıştırılmadı
./hello3.sh

echo
echo Debug Mode ile çalıştırıldı
bash -x hello3.sh

echo
echo -------------------------------------
echo Section 1.7: Handling Named Arguments

touch handling.sh
chmod u+x handling.sh
#ls -l
echo -e '#! /bin/bash\n' > handling.sh
echo 'deploy=false' >> handling.sh
echo 'uglify=false' >> handling.sh
echo 'while (( $# > 1 )); do case $1 in' >> handling.sh
echo '--deploy) deploy="$2";;' >> handling.sh
echo '--uglify) uglify="$2";;' >> handling.sh
echo '*) break;' >> handling.sh
echo 'esac; shift 2' >> handling.sh
echo 'done' >> handling.sh
echo '$deploy && echo "will deploy... deploy = $deploy"' >> handling.sh
echo '$uglify && echo "will uglify... uglify = $uglify"' >> handling.sh


./handling.sh --deploy true --uglify false