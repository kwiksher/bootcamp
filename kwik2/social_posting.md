# Social Posting

http://www.kwiksher.com/tutorials/Multi/SocialCanvas_Sample.zip

事前準備として、9 Coloring Booksのチュートリアルを実施することをお勧めします。

外部コードの仕組みを使って、フェイスブックとツイッターに投稿してみます。
ツイッターとフェイスブックのREST APIを使用しますので、開発者サイトにログインして、ウェブアプリとして登録します。

https://apps.twitter.com
https://developers.facebook.com/apps

## Twitter
 https://apps.twitter.com を開いて、Create New Appからアプリ作成に進みます。

<img src="./IMG22/Twitter_Application_Management.jpg" width="600">

下記の例では kwik Social Demo appを作成しました。Callback URL には http://twitter.com/kwiksherを指定しました

<img src="./IMG22/Kwik_Social_Demo___Twitter_Application_Management.jpg" width="600">

Keys and Access Tokensのタブを開くと, Consumer key(API key) とConsumer Secret(API Secret) が表示されます。このキーを外部コードのcontroller/twiilter.luaに設定します。

<img src="./IMG22/Kwiksher_Social_Demo___Twitter_Application_Management.jpg" width="600">

## Facebook =====
https://developers.facebook.com/apps にいき、Add a New Appからアプリを登録します。

<img src="./IMG22/facebook_All_Apps.jpg" width="600">

下記の画面ではWebsiteを選択してください。

<img src="./IMG22/new_All_Apps.jpg" width="600">

下記の例ではKwik Social Demoアプリが作成されました. Site URL iには http://coronalabs.com/%E3%80%80となっていますが、任意のURLで構いません。
SettingsからApp IDと App Secretのキーコードを取得して、外部コードのcontoller/facebook.luaに設定します。

<img src="./IMG22/Kwik_Social_Demo.jpg" width="600">

SocailNetwork_Sample.zipには下記の外部コードが含まれています。
* lib/
* controller/
* main_code.lua
* logout_code.lua
* post_fb_code.lua
* post_tw_code.lua

<img src="./IMG22/ForkLift.jpg" width="600">

controller フォルダ開き、twitter.lua とfacebook.lua をテキストエディタで開きます。開発者サイトで作成したツイッターのconsumer_key、consumer_secretのキーコードをtwitter.luaに設定します。facebook.luaにはAppIDとAppSecretを設定します。

<img src="./IMG22/twitter_lua__SocialNetwork.jpg" width="600">
<img src="./IMG22/facebook_lua__SocialNetwork.jpg" width="600">

libとcontroller フォルダーをbuild フォルダにコピーしてください。

<img src="./IMG22/ForkLift2.jpg" width="600">

プロジェクトとページから、Main.luaに外部コードを追加をクリックします。

<img src="./IMG09/bandicam 2015-02-06 12-30-08-608.jpg" width="300">

SocialCanvas_Sample.zipのmain_code.luaを指定してください。名前はcode_require_socialとしました。

<img src="./IMG09/bandicam 2015-02-06 12-32-12-001.jpg" width="400">

ツイッターとフェイスブックボタンを作成します。Add Buttonのウィンドウでは、CodeのExternal Codeを指定します。.
フェイスブックには、post_fb_code.luaを指定してください。

<img src="./IMG09/bandicam 2015-02-06 12-35-24-091.jpg" width="600">
<img src="./IMG09/bandicam 2015-02-06 12-36-20-210.jpg">


同様にツイッターボタンを作成します。post_tw_code.luaを指定して下さい。

<img src="./IMG09/bandicam 2015-02-06 12-38-51-347.jpg" width="600">

ログアウトボタンを作成します。logout_code.luaを設定してください。

<img src="./IMG09/bandicam 2015-02-06 12-40-11-072.jpg" width="600">

以上です。Publishして、corona simulatorでお試しください。


