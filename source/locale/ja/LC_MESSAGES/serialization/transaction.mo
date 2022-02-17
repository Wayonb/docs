��          |               �      �   1   �   1     �   N     3  N   <     �  [   �  E       M     a  �  v     ;  Q   O  H   �    �     �  \   �  *   Y  t   �  �  �  $   �
  !   �
   **Inlines**: Binary layout for an embedded transaction header. Maximum fee allowed to spend for the transaction. Number of milliseconds elapsed since the creation of the nemesis block. If a transaction does not get included in a block before the deadline is reached, it is deleted. Deadlines are only allowed to lie up to ``24`` hours ahead. Property Reserved padding to align end of EmbeddedTransactionHeader on 8-byte boundary. Serialization of a transaction. Serialization of an :doc:`aggregate <../concepts/aggregate-transaction>` inner transaction. The `catbuffer schemas <https://github.com/symbol/catbuffer-schemas>`_ repository defines how each transaction type should be serialized. In combination with the `catbuffer-generators <https://github.com/symbol/catbuffer-generators>`_ project, developers can generate builder classes for a given set of programming languages. Transaction Schemas Type of transaction. Project-Id-Version: symbol-docs 0.22.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-10-22 06:48+0000
PO-Revision-Date: 2020-06-19 17:54+0000
Last-Translator: Yoshiyuki Ieyama <yukku0423+github@gmail.com>, 2021
Language: ja
Language-Team: Japanese (https://www.transifex.com/nemtech/teams/95744/ja/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **インライン** 埋め込みトランザクションヘッダーのバイナリレイアウト。 トランザクションに支払うことを許容する最大手数料 ネメシスブロックが作成されてから経過したミリ秒数。期限までにトランザクションがブロックに含まれなかった場合は削除されます。デッドラインは ``24`` 時間先までが許容されています。 プロパティ EmbeddedTransactionHeader の終わりを 8 バイト境界に揃える予約パディング トランザクションのシリアル化 :doc:`アグリゲート <../concepts/aggregate-transaction>` インナートランザクションのシリアル化 `catbuffer スキーマ <https://github.com/symbol/catbuffer-schemas>`_ リポジトリは各トランザクションタイプがどのようにシリアライズされるべきかを定義しています。 `catbuffer-generators <https://github.com/symbol/catbuffer-generators>`_ プロジェクトと組み合わせると、開発者は特定のプログラミング言語用のビルダークラスを生成できます。 トランザクションスキーマ トランザクションタイプ 