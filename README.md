# qr-maker

特定のURLを、特定のサイズのQRコードにするCLI。
意外に見つからなかったのでつくった。

```
gem install rqrcode rqrcode_png chunky_png
gem install thor

ruby ./main.rb gen https://google.com
ruby ./main.rb gen https://google.com ./goog.png -s=500
```
