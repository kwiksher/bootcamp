# デバイス用にビルド
CoronaSDKはiOS/Android をターゲットとしたマルチプラットフォームアプリケーション開発のためのSDKです。 iPadやiPhone、iPod touch、AndroidスマートフォンやAndroidタブレット、Kindle等の機器で動作するアプリのバイナリファイル(アプリが配布できる状態にしたファイル)を作成します。


##ビルド
アンドロイドのビルドを実行してみます。Corona Simulatorから File > Build > Androidを選択します。

<img src="img/build1.png"/>

ビルドダイアログが開きます。Save to Folderの箇所にバイナリファイルが生成されます。下記の設定では、Desktop(デスクトップ）となります。右下のBuild(ビルド)ボタンをクリクします。
<img src="img/build3.png"/>

Androidアプリの生成が開始されます
<img src="img/build7.png"/>

完了のダイアログです。Show in Finderのボタンをクリックすると、ビルドしたバイナリファイルのフォルダが開きます。
<img src="img/build4.png"/>

デスクトップにhelloworld.apkファイルが生成されています。
<img src="img/build5.png"/>

ターミナル(terminal)アプリを起動します。
<img src="img/build8.png"/>


Android SDKのPlatform-toolsのadbを使用します。android-sdkのインストールフォルダの配下の platform-toolsのadbです
<img src="img/android8.png" width = "200" />

adbをドラッグしてターミナルにドロップします。
<img src="img/build9.png"  />

Mac ユーザは、 Applicationsのandroid-sdk-macosxフォルダの中、または Library/Androidの中に入っています。

~/Library/Android/SDK/platform-tools/adb
または
/Applications/android-sdk-macosx/platform-tools/adb

Windowsユーザの場合は、デフォルトで下記のProgram Filesフォルダの中に入っています。

C:¥Program Files (x86)¥Android¥android-sdk¥platform-tools/adb.exe


ターミナルのadbの次にinstallと入力します
<img src="img/build12.png" />

デスクトップのビルドしたアプリのバイナリファイルを選択して、ターミナルにドロップします。
<img src="img/build10.png" />

ターミナルに以下のコマンドが設定されます。
~/Library/Android/SDK/platform-tools/adb install /Users/ymmtny/Desktop/helloworld.apk
<img src="img/build13.png" />

アンドロイドのスマホをUSBでパソコンに接続して、ターミナルで
上記のコマンドを実行（ENTER)キーで開始します。デバイスにアプリがインストールされます。
