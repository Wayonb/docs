��          �                 U     ,   c  *   �  K   �  `     j   h  �   �     ]     r     �  O   �  E  �  p   #     �  �  �  \   p  B   �  7     s   H  �   �  �   k	  �    
     �
  !   �
     �
  ]     �  b  �     !   �   :ref:`Transaction <transaction>` or :ref:`EmbeddedTransaction <embedded-transaction>` Aggregate hash of the aggregate transaction. AggregateBondedTransaction hash to cosign. Announce an AggregateTransaction to combine multiple transactions together. Array of inner transactions. Other aggregate transactions are not allowed as inner transactions. Array of transaction :ref:`cosignatures <cosignature>`. Fills the remaining body space after transactions. Cosignature transactions are used to sign :ref:`announced AggregateBondedTransactions <aggregate-transaction>` with missing cosignatures. Cosigner public key. Hash Lock Schemas Property Reserved padding to align end of AggregateTransactionHeader on 8-byte boundary. The `catbuffer schemas <https://github.com/symbol/catbuffer-schemas>`_ repository defines how each transaction type should be serialized. In combination with the `catbuffer-generators <https://github.com/symbol/catbuffer-generators>`_ project, developers can generate builder classes for a given set of programming languages. Transaction payload size in bytes. In other words, the total number of bytes occupied by all inner transactions. Transaction signature. Project-Id-Version: symbol-docs 0.22.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-10-22 06:48+0000
PO-Revision-Date: 2020-06-19 17:53+0000
Last-Translator: Yoshiyuki Ieyama <yukku0423+github@gmail.com>, 2021
Language: ja
Language-Team: Japanese (https://www.transifex.com/nemtech/teams/95744/ja/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 :ref:`Transaction <transaction>` または :ref:`EmbeddedTransaction <embedded-transaction>` アグリゲートトランザクションのハッシュの集約 署名すべき AggregateBondedTransaction ハッシュ 複数の転送トランザクションを集約するために AggregateTransaction をアナウンスします。 インナートランザクションの配列。他のアグリゲートトランザクションはインナートランザクションとして許可されていません。 :ref:`連署者 <cosignature>` トランザクションの配列。トランザクションの後ろの残りの本体スペースを埋めます。 署名トランザクションは、まだ署名の揃っていない :ref:`アナウンス済みの AggregateBondedTransactions <aggregate-transaction>` への署名に使用します。 連署者の公開鍵 ハッシュロックスキーマ プロパティ AggregateTransactionHeader の終わりを 8 バイト境界に揃えた予約パディング `catbuffer スキーマ <https://github.com/symbol/catbuffer-schemas>`_ リポジトリは各トランザクションタイプがどのようにシリアライズされるべきかを定義しています。 `catbuffer-generators <https://github.com/symbol/catbuffer-generators>`_ プロジェクトと組み合わせると、開発者は特定のプログラミング言語用のビルダークラスを生成できます。 バイト単位のトランザクションのペイロードサイズ。つまりインナートランザクションすべてによって占有されている合計バイト数。 トランザクションの署名 