# plus & weather 
## robosys2024

千葉工業大学 未来ロボティクス学科 2024年度 ロボットシステム学内で行った内容に、課題で作成したファイルを追加したものです。

[![test](https://github.com/kentotutui/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/kentotutui/robosys2023/actions/workflows/test.yml)

このリポジトリ内の[weather]()は、[T_Ryota(Ryota)](https://qiita.com/T_Ryota)の[【Colab / Python】気象庁API - 気象データの収集](https://qiita.com/T_Ryota/items/ef96d6575404a0fd46dd)(@T_Ryota
(Ryota)
in

株式会社マイナビ)を参考に作られています。

## 必要なソフトウェア
  * Python
    * テスト済み: 3.7~3.10

## テスト環境
  * Ubuntu 24.04.1 LTS

## インストール方法
使用する場合は、下記コマンドを打ち込み適当な場所にクローンしてください。

```shell
$ git clone https://github.com/akajaika/robosys2024.git
$ cd robosys2024
```

## plus 使い方
標準入力を使い数字を読み込み、1～入力された数までの合計を出力します。

```shell
$ seq 5 | ./plus
15
```

マイナスの値が入力された場合、計算できないため"0"が出力されます。

```shell
$ seq -3 | ./plus
0
```

## weather 使い方

```shell
$ ./weather
明日の天気（東京地方）: 晴れ
```

## 著作権・ライセンス
  * このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
  * © 2024 Kai Nonaka
