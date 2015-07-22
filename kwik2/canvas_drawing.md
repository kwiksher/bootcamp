## Coloring Books

キャンバスに色を塗ります。

<img src="./IMG22/canvas_psd___100___back__RGB_8___1.jpg" width="400">

魔法使いが描かれたキャンバス、青と白とオレンジの色のパレット、それと塗りのサイズの大と小、カメラのアイコンからなるフォトショップのPSDファイルは下記のリンクからダウンロードできます。
http://www.kwiksher.com/tutorials/Multi/SocialCanvas_Sample.zip

### プロジェクトの作成
SocialCanvas_Sample.zipの中に含まれているcanvas.psdファイルを開き、Kwikのパネルから新規プロジェクトを作成します。

<img src="./IMG09/bandicam 2015-02-06 11-29-25-297.jpg">

名前(Name)は、Coloring Book, デバイス(Device)は iPad,　向き(Orientation)は横向き、Use canvas.psdを有効にして作成します。

<img src="./IMG09/bandicam 2015-02-06 11-39-57-627.jpg" width="600">

ユーザは、魔法使いの描かれたキャンバス(bigCandice)の上に色をつけることができます。色は青(butBlue)と白(butWhite)とオレンジ(butOrange)のパレットから選択し、塗りのサイズも選択(butMiddle, butLarge)することができます。できあがったときには、カメラアイコン(butCamera)をクリックすることで、スクリーンショットが撮影されて、デバイスの写真フォルダに格納されます。描かれたキャンバスの塗りをすべて消すためには、デバイス自体をシェイク（振る）といったインタラクションを利用します。

上記の動作を可能にする作業は行う前に何も作業をしないままパブリッシュしておきます。

<img src="./IMG09/bandicam 2015-02-06 11-41-57-847.jpg">

Corona Simulatorで正しく表示されるかを確認します

<img src="./IMG09/bandicam 2013-02-02 16-18-43-741.jpg">

### Disable Export Image
各レイヤーの画像ファイルが正しく出力されたことが確認できたら、KwikのパネルのPublishボタンの横のの画像のエクスポートを無効にしておきます。アイコンをクリックして、オレンジ色から灰色にします。画像は先ほどのパブリッシュで作成されたので、キャンバスの塗りのインタラクションのロジック部分だけのパブリッシュを行う設定で作業を行います。

<img src="./IMG09/bandicam 2015-02-06 11-43-33-837.jpg">

画像出力が無効になっている状態

<img src="./IMG09/bandicam 2015-02-06 11-44-37-392.jpg">

## インタラクションの設定

### 塗りのサイズーMedium
塗りのサイズを切り替えるボタンを設定します。レイヤー butMedium を選択して、インタラクション(Interaction)からボタン作成（Add button)を行います。

<img src="./IMG09/bandicam 2015-02-06 11-46-01-909.jpg">

Add Button ウィンドウが表示されます。

<img src="./IMG09/bandicam 2015-02-06 11-48-26-383.jpg">

名前として but_mediumと入力しました。
CanvasからBrash Sizeを選択して、Brush Selectionのダイアログで、サイズ 15, 透明度 100%を指定します。

### 塗りのサイズーLarge
塗りのサイズを切り替えるボタンを設定します。レイヤー butLarge を選択して、インタラクション(Interaction)からボタン作成（Add button)を行います。

<img src="./IMG09/bandicam 2015-02-06 11-50-20-612.jpg">

Add Button ウィンドウが表示されます。

<img src="./IMG09/bandicam 2013-02-02 17-10-13-288.jpg">

名前として but_Largeと入力しました。
CanvasからBrash Sizeを選択して、Brush Selectionのダイアログで、サイズ 30, 透明度 15%を指定します

### ScreenShot
レイヤー butCameraを選択して、インタラクション(Interaction)のボタン作成（Add Button）をクリックします。

<img src="./IMG09/bandicam 2015-02-06 11-56-14-523.jpg">

Add Button ウィンドウが表示されます。

<img src="./IMG09/bandicam 2015-02-06 11-56-51-870.jpg">

名前として but_screenShotと入力しました。
CanvasからTake Screenshotを選択して、シャッター音のチェックを有効にし、ダイアログはデフォルトの文字列が表示されます。

### 色ーBlue
レイヤー butBlueを選択して、インタラクション(Interaction)のボタン作成（Add Button）をクリックします。
Add Button ウィンドウが表示されます。

<img src="./IMG09/bandicam 2015-02-06 12-00-46-328.jpg">

名前として but_blueと入力しました。
CanvasからBrush Colorを選択して、ブラシ色のダイアログで青色を設定します。

### buttonWhite
レイヤー butWhiteを選択して、インタラクション(Interaction)のボタン作成（Add Button）をクリックします。

Add Button ウィンドウが表示されます。

<img src="./IMG09/bandicam 2015-02-06 12-02-22-316.jpg">

名前として but_whiteと入力しました。
CanvasからBrush Colorを選択して、Brush Colorのダイアログで白色を設定します。本当に純粋なRGB 255,255,255ではなく、それに近い白に設定したほうがよいでしょう。上記の例では２５５、２５５、２５２となっています。

### buttonOrange
レイヤー butOrangeを選択して、インタラクション(Interaction)のボタン作成（Add Button）をクリックします。

Add Button ウィンドウが表示されます。

<img src="./IMG09/bandicam 2015-02-06 12-03-53-496.jpg">

名前として but_orangeと入力しました。
CanvasからBrush Colorを選択して、Brush Colorのダイアログでオレンジ色を設定します。

### キャンバスの消去-Erase
キャンバスに塗られた色を消去するためには、デバイスを振る（Shake) インタラクションを利用します。
まずキャンバスを消去するアクションを登録しておきます。

### Actionの登録
プロジェクトとページのアクションをクリックします。

<img src="./IMG09/bandicam 2015-02-06 12-05-20-206.jpg">

Add Actionのウィンドウが表示されます。CanvasのErase Canvasを選択します。

<img src="./IMG09/bandicam 2015-02-06 12-06-49-305.jpg">

### インタラクションの設定
InteractionのEnable shakeをクリックします。

<img src="./IMG09/bandicam 2015-02-06 12-07-40-851.jpg">

Enable Shakeのダイアログで先ほど設定した アクションを選択します。

<img src="./IMG09/bandicam 2015-02-06 12-08-26-389.jpg">

## Canvasの設定
最後にbigCandiceのレイヤーをキャンバスとして設定します。

### 領域について
bigCandiceのレイヤーの作りについて解説します。塗りが行われ部分は、bigCandiceのレイヤーです。

<img src="./IMG09/bandicam 2013-02-02 16-56-29-588.jpg">

bigCandiceは、レイヤー backという白い紙を模したグラフィクスの上に配置されています。
bigCandiceのレイヤー自体は、背景が透過となっているレイヤーとなっています。このbigCandiceのレイヤーの領域の中で透過されている部分に塗りが適用されます。魔法使いの帽子や服といった既に色が描かれている部分は、ユーザの操作で色が塗られて上書きされることはありません。

<img src="./IMG09/bandicam 2013-02-02 17-03-24-991.jpg">

bigCandiceのレイヤーの左上隅と右下隅の角に白い小さな四角形が描かれています。この白い小さな四角形がキャンバスの範囲を指し示す場所となります。Kwikは透過色のエリアの左上と右下にあるこの白い小さな四角形の位置の座標をキャンバスとして認識ますので、キャンバスとなるレイヤーには必ずこの2つの小さい四角形を配置しておいてください。１ピクセルでもよいので小さい四角形が必要です。

<img src="./IMG09/bandicam 2013-02-02 16-54-22-698.jpg" width="640">

### Set Canvas
bigCandiceのレイヤーを選択して、インタラクションのキャンバスの設置をクリックします。

<img src="./IMG09/bandicam 2015-02-06 12-10-57-196.jpg">

Set Canvasのウィンドウが表示されます。

<img src="./IMG09/bandicam 2015-02-06 12-12-24-880.jpg">

幅と縦には、bigCandiceの左上と右下の小さな四角形の位置から計算された数字が設定されています。
キャンバスの色はデフォルトでは白です。
ブラシサイズ：１５ｐｔがデフォルトの値です。
ブラシ色:デフォルトの塗りの色を指定してください。キャンバスと同じ色が塗りに設定されると塗っても分かりませんので、注意してください。

## パブリッシュ
パブリッシュして、Corona Simulatorで動作確認を行います。

色を塗ります。パレットや塗りのサイズを切り替えることができます。

<img src="./IMG09/bandicam 2013-02-02 17-19-09-684.jpg" width="480">

Corona SimulatorのメニューのHardwareからShakeを選択すると インタラクションとしてデバイスを振ったと同じことが起こります。

<img src="./IMG09/bandicam 2013-02-02 17-19-32-072.jpg" width="480">

Shakeを選択すると、キャンバスの塗りが消去されます。

<img src="./IMG09/bandicam 2013-02-02 17-19-36-336.jpg" width="480">

左下のカメラアイコンをクリックすると、スクリーンショットが撮影されます。

<img src="./IMG09/bandicam 2013-02-02 17-23-56-335.jpg" width="480">
