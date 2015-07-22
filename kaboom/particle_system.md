# Particle System
Kwikにはパーティクル作成プラグイン Kaboomが有償で提供されています。価格　５０００円です。
http://kwiksher.com/product/kaboom/

Kaboom User guide
http://kwiksher.com/user-guide/kaboom/

Kaboomをすでに購入されたている場合は,アカウントページからダウンロードを行うことができます。
http://kwiksher.com/my-account/

Kaboomは７１Squared社が提供するパーティクルデザイナーのファイルも読み込むことができます。パーティクルデザイナーはマック版のみで、Windows版はありません。
https://71squared.com/particledesigner

このチュートリアルでは、Kaboomでパーティクルを作成する方法、パーティクルデザイナーのファイルを読み込む方法、パーティクルのテクスチャーイメージを変更する方法を解説します。

rect01, rect02, rect03, rect04の4つの四角形をパーティクルに置換します。サンプルファイルは下記のURLからDLできます。
http://www.kwiksher.com/tutorials/Multi/KBTest01.zip

<img src="./IMG24/bandicam 2015-03-28 13-57-15-054.jpg" width="600">

レイヤーと置換 > パーティクルに置換をクリックします。レイヤーはrect04を指定してみました。

<img src="./IMG24/bandicam 2015-03-28 17-17-52-692.jpg">

Partilcle Replacementの画面が立ち上がります。Create Particlesのボタンをクリックします。

<img src="./IMG24/bandicam 2015-03-28 17-18-33-096.jpg">

Kaboomの画面が立ち上がります。

<img src="./IMG24/bandicam 2015-03-28 17-18-53-727.jpg">

LIVE PREVIEWボタンを作成します。プレビューが確認できたら、右下のCreateボタンで完了します。

<img src="./IMG24/bandicam 2015-03-28 17-19-21-353.jpg" width="600">

Particle Replacement画面に戻ります。作成ボタンをクリックして完了します。

<img src="./IMG24/bandicam 2015-03-28 17-19-36-426.jpg">

パブリッシュして、確認します。

<img src="./IMG24/bandicam 2015-03-28 17-20-51-352.jpg" width="400">

###パーティクルデザイナーからインポート
パーティクルデザイナーのファイルは、テクスチャー画像をEmbedせずに外部ファイルとして保存してください。エクスポートはJSONファイル形式で出力してください。
https://71squared.com/particledesigner

<img src="./IMG24/bandicam 2015-03-28 14-04-43-893.jpg" width="600">

パーティクルデザイナーから出力したファイルをKwikのプロジェクトフォルダの直下にコピーします。
下記の例では、partilcle2.json, particle2.pngとparticle3.json, particle3.pngとなります。

<img src="./IMG24/bandicam 2015-03-28 17-22-07-253.jpg">

レイヤー rect03をパーティクル置換してみます。パーティクルに置換をクリックして、ファイル選択ボタンから、paticle2.jsonを指定します。ファイルを指定して、右下の作成ボタンをクリックして完了します。Create ParticlesのKaboomは新規作成となりますので、間違えてCreate Particlesをクリックしないでください。

<img src="./IMG24/bandicam 2015-03-28 17-23-18-777.jpg">

ファイル選択画面

<img src="./IMG24/bandicam 2015-03-28 17-22-59-448.jpg" width="600">

rect03のパーティクルが作成されました。この作成されたパーティクルコンポネントをクリックします。

<img src="./IMG24/bandicam 2015-03-28 17-23-46-945.jpg">

Particle Replacementで、Edit Particlesが表示されるようになっています。Edit Particlesをクリックします。

<img src="./IMG24/bandicam 2015-03-28 17-24-11-300.jpg">

Kaboomが立ち上がります。

<img src="./IMG24/bandicam 2015-03-28 17-55-51-842.jpg">

Live PREVIEWで動作が確認できます。右下のCreateボタンで閉じます。

<img src="./IMG24/bandicam 2015-03-28 17-56-17-179.jpg" width="600">

Kwikパネルまで戻り、パブリッシュしてみます。

<img src="./IMG24/bandicam 2015-03-28 17-56-41-427.jpg" width="250">

###Corona SDKのサンプル
Corona Labs/Corona SDK/Sample Code/Graphics-Premium/EmitterViewerに様々なパーティクルサンプルが格納されています。
下記のzipファイルにKaboomで読み込めるJSONファイルと画像ファイルが格納されています。ダウンロードしてお試しください。

http://www.kwiksher.com/tutorials/Multi/CoronaSDK_Emitter_Viewer_Sample.zip

<img src="./IMG24/bandicam 2015-03-29 16-38-38-290.jpg" width="150">
<img src="./IMG24/bandicam 2015-03-29 16-38-46-472.jpg" width="150"><img src="./IMG24/bandicam 2015-03-29 16-39-19-457.jpg" width="150">

###テクスチャーの入れ替え
パーティクルのテクスチャーを下記のファイルに入れ替えてみます。入れ替える画像は、PNGファイルとなります。プロジェクトフォルダの配下にフォルダを一つ作成して、その中に入れ替える画像を保存してください。例　[[~/Documents/Kwik/YourBook/img]]

サンプルですと、KBTest01の配下のimgフォルダとなっています。

<img src="./IMG24/bandicam 2015-03-28 14-20-03-620.jpg">

KaboomのClik to Changeのテクスチャプレビュー部分をクリックすることで、画像を入れ変えができます。

<img src="./IMG24/bandicam 2015-03-28 17-57-21-602.jpg">

ファイル選択

<img src="./IMG24/bandicam 2015-03-28 17-58-10-525.jpg" width="600">

緑の星のパーティクルとなりました。Start Colorも変更しています。

<img src="./IMG24/bandicam 2015-03-28 17-59-03-709.jpg" width="600">

ハートのテクスチャーに変更して、とVariance XやVariace Yを変更してみます。

<img src="./IMG24/bandicam 2015-03-28 18-00-26-155.jpg" width="600">

###オリジナルのPNGの色で表示したい場合は
下記の色設定をKaboomで行ってください。
http://forums.coronalabs.com/topic/49088-particle-designer-color-issue/
Blend source: GL_ONE
Blend destination: GL_ONE_MINUS_SRC_ALPHA
Start color: white (100% opacity)
End color: white (100% opacity)

いろいろ試して、素敵なパーティクルを作成してみましょう。

<img src="./IMG24/bandicam 2015-03-28 14-36-46-524.jpg">
