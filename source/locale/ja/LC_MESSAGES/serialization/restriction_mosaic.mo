Þ                        ì     í  U   ú     P     j     z          ±     Î     â  c   ö  T   Z  d   ¯       t   5     ª     Å     ß     õ          '  Å   C     	          -  <   F       E    .   Ú  Ä  		     Î
  \   â
  !   ?     a     w          ©     Â     Û  o   ú  n   j     Ù  O  ^     ®     ?  !   ^               ¬     Å  Ð   Ø     ©     ¹     Ø  ?   ô     4  ©  A  0   ë   **Inlines**: :ref:`Transaction <transaction>` or :ref:`EmbeddedTransaction <embedded-transaction>` Address being restricted. Allow if equal. Allow if greater than or equal. Allow if greater than. Allow if less than or equal. Allow if less than. Allow if not equal. Announce a MosaicAddressRestrictionTransaction transaction to set a restriction rule to an address. Announce a MosaicGlobalRestrictionTransaction to set a restriction rule to a mosaic. Identifier of the mosaic being restricted. The mosaic creator must be the signer of the transaction. Identifier of the mosaic providing the restriction key. The mosaic global restriction for the mosaic identifier depends on global restrictions set on the reference mosaic. Set ``referenceMosaicId`` to ``0000000000000000`` if the mosaic giving the restriction equals the mosaic identifier. Identifier of the mosaic to which the restriction applies. The mosaic creator must be the signer of the transaction. Mosaic Address Restriction Mosaic Global Restriction New restriction type. New restriction value. Previous restriction type. Previous restriction value. Previous restriction value. Set ``previousRestrictionValue`` to ``FFFFFFFFFFFFFFFF`` if the target address does not have a previous restriction value for this mosaic identifier and restriction key. Property Restriction Mosaic Schemas Restriction Mosaic Types Restriction key relative to the reference mosaic identifier. Restriction key. The `catbuffer schemas <https://github.com/symbol/catbuffer-schemas>`_ repository defines how each transaction type should be serialized. In combination with the `catbuffer-generators <https://github.com/symbol/catbuffer-generators>`_ project, developers can generate builder classes for a given set of programming languages. Uninitialized value indicating no restriction. Project-Id-Version: symbol-docs 0.22.2
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
 **ã¤ã³ã©ã¤ã³** :ref:`Transaction <transaction>` ã¾ãã¯ :ref:`EmbeddedTransaction <embedded-transaction>` å¶éããã¦ããã¢ãã¬ã¹ åãå ´åã«è¨±å¯ ä»¥ä¸ã®å ´åã«è¨±å¯ è¶ããå ´åã«è¨±å¯ ä»¥ä¸ã®å ´åã«è¨±å¯ æªæºã®å ´åã«è¨±å¯ åãã§ãªãå ´åã«è¨±å¯ MosaicAddressRestrictionTransaction ãã¢ãã¦ã³ã¹ãã¦å¶éã«ã¼ã«ãã¢ãã¬ã¹ã«è¨­å®ãã¾ãã MosaicGlobalRestrictionTransaction ãã¢ãã¦ã³ã¹ãã¦å¶éã«ã¼ã«ãã¢ã¶ã¤ã¯ã«è¨­å®ãã¾ãã å¶éãããã¢ã¶ã¤ã¯è­å¥å­ãã¢ã¶ã¤ã¯ä½æèã¯ãã©ã³ã¶ã¯ã·ã§ã³ã®ç½²åèã§ããå¿è¦ãããã¾ãã å¶éã­ã¼ãæä¾ããã¢ã¶ã¤ã¯ã®è­å¥å­ãã¢ã¶ã¤ã¯IDã®ã¢ã¶ã¤ã¯ã°ã­ã¼ãã«å¶éã¯åç§ã¢ã¶ã¤ã¯ã«è¨­å®ãããã°ã­ã¼ãã«å¶éã«ãã£ã¦ç°ãªãã¾ããå¶éãä¸ããã¢ã¶ã¤ã¯ãã¢ã¶ã¤ã¯è­å¥å­ã¨ç­ããå ´å ``referenceMosaicId`` ã« ``0000000000000000`` ã«è¨­å®ãã¾ãã å¶éãé©ç¨ãããã¢ã¶ã¤ã¯ã®è­å¥å­ãã¢ã¶ã¤ã¯ä½æèã¯ãã©ã³ã¶ã¯ã·ã§ã³ã®ç½²åèã§ããå¿è¦ãããã¾ãã ã¢ã¶ã¤ã¯ã¢ãã¬ã¹å¶é ã¢ã¶ã¤ã¯ã°ã­ã¼ãã«å¶é æ°ããå¶éã¿ã¤ã æ°ããå¶éå¤ ä»¥åã®å¶éã¿ã¤ã ä»¥åã®å¶éå¤ ä»¥åã®å¶éå¤ãã¿ã¼ã²ããã¢ãã¬ã¹ã«ãã®ã¢ã¶ã¤ã¯è­å¥å­ã¨å¶éã­ã¼ã®ä»¥åã®å¶éå¤ããªãå ´åã¯ ``previousRestrictionValue`` ã« ``FFFFFFFFFFFFFFFF`` ãè¨­å®ãã¾ãã ãã­ããã£ ã¢ã¶ã¤ã¯å¶éã¹ã­ã¼ã ã¢ã¶ã¤ã¯å¶éã¿ã¤ã å¶éã­ã¼ã¯åç§ã¢ã¶ã¤ã¯è­å¥å­ã«é¢é£ãã¾ãã å¶éã­ã¼ `catbuffer ã¹ã­ã¼ã <https://github.com/symbol/catbuffer-schemas>`_ ãªãã¸ããªã¯åãã©ã³ã¶ã¯ã·ã§ã³ã¿ã¤ããã©ã®ããã«ã·ãªã¢ã©ã¤ãºãããã¹ãããå®ç¾©ãã¦ãã¾ãã `catbuffer-generators <https://github.com/symbol/catbuffer-generators>`_ ãã­ã¸ã§ã¯ãã¨çµã¿åãããã¨ãéçºèã¯ç¹å®ã®ãã­ã°ã©ãã³ã°è¨èªç¨ã®ãã«ãã¼ã¯ã©ã¹ãçæã§ãã¾ãã å¶éãç¡ããã¨ãç¤ºãæªåæåå¤ã 