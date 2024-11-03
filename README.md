## 辞書ファイル

📕[最新リリース配布ページ](https://github.com/utubo/mh-dict-jp/releases/latest)

### Windows用

|ファイル名               |備考                  |
|-------------------------|----------------------|
|mh-dict-jp-all.txt       |全部入り              |

### Android用

|ファイル名               |備考                  |
|-------------------------|----------------------|
|mh-dict-jp-item.zip      |アイテム              |
|mh-dict-jp-monster.zip   |モンスター            |
|mh-dict-jp-skill.zip     |スキル                |
|mh-dict-jp-weapon1.zip   |太刀,大剣,片手剣,双剣 |
|mh-dict-jp-weapon2.zip   |ハンマー,槍系,斧系    |
|mh-dict-jp-weapon3.zip   |笛,弓系,棍系,磁斬鎚   |
|mh-dict-jp-equipment.zip |防具,装飾品           |
|mh-dict-jp-others.zip    |その他                |
|mh-dict-jp-slang.zip     |スラング              |
|mh-dict-jp-wilds.zip     |Wilds追加分(作成中)   |

- Androidは1ファイル2000件という制限があるのでファイルを分けています
- 更新日は[srcディレクトリ](https://github.com/utubo/mh-dict-jp/tree/main/src)を参考に
  (ダウンロードは[最新リリース配布ページ](https://github.com/utubo/mh-dict-jp/releases/latest)から)

### SKK辞書

|ファイル名               |備考                  |
|-------------------------|----------------------|
|SKK-JISYO.mh-dict-jp.utf8|全部入り              |

## ユーザー辞書への追加の仕方
### Windows google日本語入力
1. [最新リリース配布ページ](https://github.com/utubo/mh-dict-jp/releases/latest)から`mh-dict-jp-all.txt`をダウンロードしておく
2. Google日本語入力のメニューを表示する(タスクトレイの`A`とか`あ`とかを右クリック)
3. 辞書ツール
4. 管理
5. 新規に辞書をインポート
6. `mh-dict-jp-all.txt`を選択。辞書名は自由
7. インポートボタンをクリック

- なんかエラーが出るかも…
- 更新時は`2. 辞書ツール`の後、辞書を右クリックして`この辞書にインポート`でOK

### Android Gboard
**⚠削除は1単語ずつ行う必要があるため、一度追加すると取り消しが大変です。自己責任でお願いします。**  
**⚠単語を登録しすぎるとあとから別の辞書を追加できなくなるので厳選したほうがいいかもです**
1. [ここ](https://github.com/utubo/mh-dict-jp/releases/latest)から`mh-dict-jp-○○.zip`をダウンロードしておく(ZIPファイルのままでOK)
2. 適当な入力欄でキーボードを表示する
3. 歯車マークをタップ
4. 単語リスト
5. 単語リスト
6. 日本語
7. 右上の`︙`をタップ
8. インポート
9. ダウンロードしたZIPファイルを選択

## 間違いや足りない単語を見つけた場合
以下のいずれかに反応するかもしれません
- Pull Request
- [issue](https://github.com/utubo/mh-dict-jp/issues)にコメント
- Twitterで連絡

もし更新が止まったら誰かForkして…

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
  隻眼イャンガルルガ # 「イャンガルルガ」は登録済みなので普通に変換できる「隻眼」は不要
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

----
他の辞書を作りたい方へ  
[template](https://github.com/utubo/template-dict-jp)

