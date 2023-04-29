## 辞書ファイル

📕[ダウンロード](https://github.com/utubo/mh-dict-jp/releases/latest)

|ファイル名            |備考                 |
|----------------------|---------------------|
|mh-user-jp-all.txt    |全部入り(PC用)       |
|mh-user-jp-item.zip   |アイテム(Android用)  |
|mh-user-jp-monster.zip|モンスター(Android用)|
|mh-user-jp-skill.zip  |スキル(Android用)    |

※Androidは1ファイル2000件という制限があるのでファイルを分けています

## ユーザー辞書への追加の仕方
### Windows google日本語入力
1. [ここ](https://github.com/utubo/mh-dict-jp/releases/latest)から`mh-dict-jp-all.txt`をダウンロードしておく
2. Google日本語ん入力のメニューを表示する(タスクトレイの`A`とか`あ`とかを右クリック)
3. 辞書ツール
4. 管理
5. 新規に辞書をインポート
6. `mh_dict_jp.txt`を選択。辞書名は自由
7. インポートボタンをクリック

- なんかエラーが出るかも…
- 更新時は`2. 辞書ツール`の後、辞書を右クリックして`この辞書にインポート`でOK

### Android google日本語入力
*⚠削除は1単語ずつ行う必要があるため、一度追加すると取り消しが大変です。自己責任でお願いします。*
1. [ここ](https://github.com/utubo/mh-dict-jp/releases/latest)から`mh-dict-jp-○○.zip`をダウンロードしておく(ZIPファイルのままでOK)
2. 適当な入力欄でキーボードを表示する
3. 歯車マークをタップ
4. 単語リスト
5. 単語リスト
6. 日本語
7. 右上の`︙`をタップ
8. インポート
9. ダウンロードしたZIPファイルを選択

## 編集時の辞書ルール
- カタカナ表記、漢字表記(カタカナ読み)、漢字表記の3つを記載
  ```
  例
  らーじゃん	ラージャン	名詞
  らーじゃん	金獅子	名詞
  きんじし	金獅子	名詞
  ```
- よみに「・」は含めない
  ```
  例
  めるぜな	メル・ゼナ	名詞
  めるぜな	爵銀龍	名詞
  しゃくぎんりゅう	爵銀龍	名詞
  ```
- 一般用語は基本的に記載しない(またはコメント)
  ```
  例
  草食竜
  隻眼イャンガルルガ
  ```
- こちらの環境で熟語を一発でまとめて変換できなかったときは合わせたものも記載
  ```
  例
  ぐれんたぎる→紅蓮たぎる
  →まとめて変換できなかったので「紅蓮滾る」を記載
  ```
- 以下のカタカナ表記は未記載(検討中)
  - ～～亜種
  - ～～希少種
  - 怪異克服～～
  ```
  例
  # ろあるどろすあしゅ	紫水獣	名詞 ←記載しない
  しすいじゅう	紫水獣	名詞 ←記載する
  ```
- 通常の変換の妨げになりそうな単語は除外(検討中)
  ```
  例
  # みる	ミ・ル	名詞
  # みる	黒狐竜	名詞
  ```
- コメント`#`でも初めても、タブ区切りの形式だと登録されてしまうので気を付ける
  ```
  # コメント
  # これはとうろくされちゃう    これは登録されちゃう    名詞
  # たぶをへんかんしておく__タブを変換しておく__名詞
  ```

### 順序

以下の順序で記載
- モンスターにかかわる単語
- モンスター名
- アイテム名

- 今後の更新について
  新しい単語をどの位置に追記するか検討中

## 謝辞
### 参考サイト
  - https://wikiwiki.jp/nenaiko/
    - 単語一覧はここがベースです！
  - https://a-to-monhan.com/2020/12/28/rise-kannji-yomikata/

  他多数

## License
```
"THE BEER-WARE LICENSE" (Revision 42):
utubo wrote this file. As long as you retain this notice you
can do whatever you want with this stuff. If we meet some day, and you think
this stuff is worth it, you can buy me a beer in return.
```

