# Hello Worlds

同じアルゴリズムのプログラムをいろいろな言語で作ってみました。
使用した言語は次の通りです。

- C#
- Rust
- C
- C++
- Go
- Haskell
- Java
- JavaScript
- Kotlin
- PHP
- Perl
- Python
- Ruby
- Swift

## プログラムの実行結果

引数に「数値:文字列」を与えると、数値で示した回数だけ階段状に文字列を出力します。以下、実行例です。

```
$ ./main 3:ABC
ABC
ABCABC
ABCABCABC
```

引数を与えずに標準入力で与えても同じように動きます。

```
$ echo "3:CBA" | ./main
ABC
ABCABC
ABCABCABC
```

プログラムの終了コードは出力した文字の数になってます。

```
$ echo $?
18
```

## Rubyの例

```Ruby
def printStep(line)
  sum = 0
  words = line.split(':')
  if words.length > 1 then
    lp = words[0].to_i
    for i in 1..lp do
      for j in 1..i do
        print words[1].strip
        sum += words[1].strip.length
      end
      puts ""
    end
  end
  return sum
end

if ARGV.length > 0 then
  exit(printStep(ARGV[0]))
else
  line = $stdin.gets
  exit(printStep(line))
end
```

## プログラム作成の手順

同じアルゴリズムのプログラムですので言語は違えども同じ考え方で作ることができます。
作る時に調べた手順は以下の通りです。

- 環境構築
- HelloWorld
- 標準入力
- 文字列分割
- 配列長取得
- 配列値取得
- 文字列数値変数
- 条件分岐
- 文字列数値変換
- ループ
- 標準出力改行なし
- 標準出力改行あり
- 関数定義
- 関数引数
- 関数戻り値
- 文字列トリム
- 文字列長取得
- 整数値計算
- 終了コード
- コマンド引数長取得
- コマンド引数取得

参考：プログラミング言語の比較  
[https://hydrocul.github.io/wiki/programming_languages_diff/](https://hydrocul.github.io/wiki/programming_languages_diff/)
