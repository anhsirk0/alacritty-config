#!/bin/bash

dir=~/.config/alacritty
n=$(grep '# Colors' $dir/alacritty.yml -n -m 1 | cut -d ":" -f1)
sed ${n}q $dir/alacritty.yml > $dir/base.yml
theme=$(ls $dir/themes | fzf)
cat $dir/base.yml $dir/themes/$theme > $dir/new.yml
cp $dir/alacritty.yml $dir/old.yml
mv $dir/new.yml $dir/alacritty.yml
