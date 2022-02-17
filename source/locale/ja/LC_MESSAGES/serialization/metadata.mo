��          �               L  U   M     �  P   �  V     T   \     �  �   �       /   �     �     �     �     �               8  E  U     �  �  �  \   u     �  j   �  v   \  n   �  0   B	  �   s	     "
  I   >
  !   �
     �
  $   �
  *   �
          &  '   E  �  m  !      :ref:`Transaction <transaction>` or :ref:`EmbeddedTransaction <embedded-transaction>` Account Metadata Announce a MosaicMetadataTransaction to associate a key-value state to a mosaic. Announce a NamespaceMetadataTransaction to associate a key-value state to a namespace. Announce an AccountMetadataTransaction to associate a key-value state to an account. Change in value size in bytes. Difference between the previous value and new value. You can calculate value as ``xor(previous-value, new-value)``. If there is no previous value, use directly the new value. Metadata Schemas Metadata key scoped to source, target and type. Metadata target address. Mosaic Metadata Namespace Metadata New value size in bytes. Property Target mosaic identifier. Target namespace identifier. The `catbuffer schemas <https://github.com/symbol/catbuffer-schemas>`_ repository defines how each transaction type should be serialized. In combination with the `catbuffer-generators <https://github.com/symbol/catbuffer-generators>`_ project, developers can generate builder classes for a given set of programming languages. Value size in bytes. Project-Id-Version: symbol-docs 0.22.2
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
 :ref:`Transaction <transaction>` または :ref:`EmbeddedTransaction <embedded-transaction>` アカウントメタデータ MosaicMetadataTransaction をアナウンスして Key-Value 状態をモザイクに関連付けます。 NamespaceMetadataTransaction をアナウンスして Key-Value 状態をネームスペースに関連付けます。 AccountMetadataTransaction をアナウンスして Key-Value 状態をアカウントに関連付けます。 値のサイズをバイト単位で変更する 前の値と新しい値の差分。値は ``xor(previous-value, new-value)`` として計算できます。前の値がない場合は新しい値を直接使用します。 メタデータスキーマ メタデータキーの source, target, type に対するスコープ。 メタデータ対象アドレス モザイクメタデータ ネームスペースメタデータ バイト換算の新しい値のサイズ プロパティ 対象のモザイク識別子 対象のネームスペース識別子 `catbuffer スキーマ <https://github.com/symbol/catbuffer-schemas>`_ リポジトリは各トランザクションタイプがどのようにシリアライズされるべきかを定義しています。 `catbuffer-generators <https://github.com/symbol/catbuffer-generators>`_ プロジェクトと組み合わせると、開発者は特定のプログラミング言語用のビルダークラスを生成できます。 バイト換算の値のサイズ 