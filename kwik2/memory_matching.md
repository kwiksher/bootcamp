# Memory Matching

http://www.kwiksher.com/tutorials/Memory/memory.zip

２つの外部コードのファイルとPSDファイルが格納されています。
touchHandler.lua
memoryGame.lua
Overall steps

各写真のレイヤーをグループにいれます。
写真の番号を格納する外部変数を用意します。
各写真をボタンに設定し、タップされたときに写真の番号を外部変数に設定します。
memoryGame.luaの外部ファイルを設定します。

Kwikのプロジェクトは､iPad Miniで作成してください。

<img src="./IMG25/bandicam%202015-05-24%2022-53-46-551.jpg">

１．プロジェクトとページから、グループを作成します。

<img src="./IMG25/bandicam%202015-05-24%2022-54-46-242.jpg">

各グループをgp_photosというグループに格納しました。

<img src="./IMG25/bandicam%202015-05-24%2022-54-55-848.jpg">

２．プロジェクトとページから変数の作成を行います。
<img src="./IMG25/bandicam%202015-05-24%2022-55-11-684.jpg">

photoNumという変数を数値で作成します。
<img src="./IMG25/bandicam%202015-05-24%2022-55-18-778.jpg">

３.ボタンの作成

各写真にボタンを設定します。Edit VariableとExtenal Codeをアクションに設定します。

<img src="./IMG25/bandicam%202015-05-24%2022-55-47-060.jpg">

インタラクション一覧のCodeからEdit Variableを選択して、photo1レイヤーとphoto11レイヤーのボタンには数値１を設定しいます。

<img src="./IMG25/bandicam%202015-05-24%2022-56-03-666.jpg">

CodeのExtenal Codeを選択して、touchHandler.luaを設定します。

<img src="./IMG25/bandicam%202015-05-24%2022-56-11-960.jpg">

photo11レイヤーのボタンもphotoNumは１

<img src="./IMG25/bandicam%202015-05-24%2022-56-22-992.jpg">

photo2とphoto22にはphotoNumは２を設定します。
<img src="./IMG25/bandicam%202015-05-24%2022-56-36-088.jpg">

photo22のphotoNumは２を設定します。
<img src="./IMG25/bandicam%202015-05-24%2022-56-44-283.jpg">

photo3, photo33, photo4, photo44も同様にphotoNumとtouchHandler.luaを設定してください。

memoryGame.lua



最後にmemoryGame.luaを設定します。プロジェクトとページの外部コードを選択します。

<img src="./IMG25/bandicam%202015-05-24%2022-57-05-691.jpg">

ボタンやアクションの後にmemoryGame.luaを設定します。
<img src="./IMG25/bandicam%202015-05-24%2022-57-24-688.jpg">

以上です、Publishして動作を確認しましょう。

5.lua コード


touchHandler.luaは下記の一行のみです。

layer.hitTest(self)

memoryGame.luaは写真をランダムに表示する部分とマッチングの判定のhitTest関数を含んでいます。

<img src="./IMG25/bandicam%202015-05-24%2022-43-40-569.jpg">

<img src="./IMG25/bandicam%202015-05-24%2022-44-26-308.jpg">
