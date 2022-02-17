Þ    &      L              |  ¶   }  ¦   4  ¢   Û  8   ~  ²   ·     j  Z     :  Þ          7  í   N  ×   <  Ú   	  m   ï	     ]
     æ
  ?   í
  j   -         ª     À  E  Î      U     C  ì  M  0    ~               ¨     º  !  R  
   t  F     D  Æ  Þ     
  ê  Ä  õ  !  º  D  Ü  ¹   !  b   Û  ì   >  *   +   r   V     É      Y"  !   y"  p  "  ,  $  U  9%     &  Ã   #'  	   ç'  f   ñ'  ~   X(    ×(  $   X*     }*  ©  *  0  @,     q.  Ë  ñ.    ½0  ï  Ô2     Ä5  $   Ý5  !   6  ã   $6    7     ¦8  u   ¼8  Ì  29    ÿ:  ]  <   A transaction generally represents a unit of work within a database system. In the case of blockchain, that is when an action signed by an :doc:`account <account>` changes its state. Accounts must sign transactions before announcing them to the network. Signing a transaction expresses the account's agreement to change the network state as defined. After announcing the transaction, the REST API will always return an OK response immediately. At this point, it is still unknown whether the transaction is valid. All transactions should define a deadline and a max_fee: An account has to follow the next steps to `sign a transaction <https://github.com/symbol/symbol-sdk-typescript-javascript/blob/main/src/model/transaction/Transaction.ts#L216>`_: Announcing a transaction Append the signer's signature and public key to the transaction to obtain the ``payload``. Calculate the `transaction hash <https://github.com/symbol/symbol-sdk-typescript-javascript/blob/main/src/model/transaction/Transaction.ts#L127>`_ by applying SHA3-512 hashing algorithm to the first 32 bytes of signature, the signer public key, nemesis block generation hash, and the remaining transaction payload. Continue: :doc:`Fees <fees>`. Defining a transaction Every base transaction type available in |codename| is defined as a separate :doc:`plugin <plugin>`. The plugin approach allows developers to introduce new transaction types without modifying the core engine or disrupting other features. For a block to be immutable, it needs to complete the :ref:`finalization <finalization>` process. Once a block is finalized, the block and the included transactions are permanently recorded on the blockchain ledger. For example, a TransferTransaction describes who the recipient is and the number of mosaics to transfer. In this case, signing the transaction means to accept moving those mosaics from one account's balance to another. Get the ``signing bytes``, which are all the bytes of the transaction except the size, signature, and signer. Get the nemesis block ``generation hash``. You can query :term:`NODE_URL` ``/node/info'`` and copy ``meta.networkGenerationHash`` value. Guides Prepend the nemesis block generation hash to the signing bytes. Sign the resulting string with the signer's private key. This will give you the transaction ``signature``. Signed transactions are ready to be announced to the network. You can either use the SDK ``TransactionHttp`` service or append the payload to the request of the `transaction endpoint <https://docs.symbolplatform.com/symbol-openapi/v0.11.3/#operation/announceTransaction>`_. Signing a transaction Spam Throttle The `catbuffer schemas <https://github.com/symbol/catbuffer-schemas>`_ repository defines how each transaction type should be serialized. In combination with the `catbuffer-generators <https://github.com/symbol/catbuffer-generators>`_ project, developers can generate builder classes for a given set of programming languages. The first stage of validation happens in the API nodes. If the transaction encounters an error, the WebSocket throws a notification through the status channel. If not, the transaction reaches the P2P network with an **unconfirmed** status. In this state, it is not yet clear if the transaction will get included in a block. Thus, an unconfirmed transaction should never be relied upon. The following transaction types are included in |codename| based networks by default: The node's cache holds unconfirmed transactions until they can be included in a block. Since cache is a valuable resource, |codename| implements a spam throttle that prevents an attacker from filling the cache with unconfirmed transactions while still letting honest actors successfully submit new unconfirmed transactions. The second validation happens before the transaction is added in a :doc:`harvested block <block>`. If successful, the harvester stores the transaction in a block and the transaction reaches the **confirmed** status. At this state, the transaction is officially recorded in the blockchain ledger, but has not yet reached **finality**. The spam throttle controls the amount of unconfirmed transactions accounts can submit by calculating the fair share of cache for each account relative to its importance score. If an account has surpassed its fair share of the cache and the node cache contains more unconfirmed transactions than the amount that can be included in a single block, the transaction will be rejected. This effectively blocks malicious actors from spamming a node with transactions while allowing other users to continue using the node normally. Transaction Transaction cycle Transaction types Transactions are defined in a serialized form. Every transaction extends from the base ``Transaction`` schema, adding the type's particular properties. Under certain circumstances, such as a network failure or partition, the most recently confirmed blocks can be :ref:`rolled back <rollbacks>`. Hence, confirmed transactions that have not been finalized are recognized by the network but are not immutable because they can still be reversed. Validation We recommend using the :doc:`SDK <../sdk>` to define new transactions. ``deadline``: A transaction has a time window to be accepted before it reaches its deadline. The transaction expires when the deadline is reached and all the nodes reject the transaction. By default, the SDK sets the deadline to 2 hours, but it can be extended up to 6 hours (or 48 for :ref:`aggregate-bonded` transactions). ``max_fee``: The maximum amount of network currency that the sender of the transaction is willing to pay to get the transaction accepted. :doc:`The next documentation <fees>` shows you how to set the optimal max_fee value. |codename| supports many different transaction types. For example, there are transactions to transfer :doc:`mosaics <mosaic>` between accounts, messages or configure the ownership of accounts (including the use of :doc:`multisig <multisig-account>` rules), and more. Project-Id-Version: symbol-docs 0.22.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-11-26 09:18+0000
PO-Revision-Date: 2019-02-22 09:05+0000
Last-Translator: Yoshiyuki Ieyama <yukku0423+github@gmail.com>, 2021
Language: ja
Language-Team: Japanese (https://www.transifex.com/nemtech/teams/95744/ja/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 ä¸è¬çã«ãã©ã³ã¶ã¯ã·ã§ã³ã¨ã¯ãã¼ã¿ãã¼ã¹ã·ã¹ãã åã§ã®ä½æ¥­åä½ãè¡¨ãã¾ãããã­ãã¯ãã§ã¼ã³ã«ããã¦ã :doc:`ã¢ã«ã¦ã³ã <account>` ã«ãã£ã¦ç½²åãããã¢ã¯ã·ã§ã³ããããèªèº«ã®ç¶æãå¤ããã¨ããæãã¾ãã ã¢ã«ã¦ã³ãã¯ãã©ã³ã¶ã¯ã·ã§ã³ããããã¯ã¼ã¯ã«ã¢ãã¦ã³ã¹ããåã«ããã©ã³ã¶ã¯ã·ã§ã³ã«ç½²åããå¿è¦ãããã¾ãããã©ã³ã¶ã¯ã·ã§ã³ã¸ã®ç½²åã¯ãå®ç¾©éãã«ãããã¯ã¼ã¯ã®ç¶æãå¤æ´ãããã¨ã«ã¢ã«ã¦ã³ããåæãããã¨ãè¡¨æãã¾ãã ãã©ã³ã¶ã¯ã·ã§ã³ã®ã¢ãã¦ã³ã¹ãããã¨ãREST API ã¯å¸¸ã«OKãããã«è¿ãã¾ãããã®æç¹ã§ã¯ãã©ã³ã¶ã¯ã·ã§ã³ãæ­£å½ãã©ããã¯ä¸æã§ãã ãã¹ã¦ã®ãã©ã³ã¶ã¯ã·ã§ã³ã¯ deadline ã¨ max_fee ãå®ç¾©ããå¿è¦ãããã¾ã: ã¢ã«ã¦ã³ãã¯ `ãã©ã³ã¶ã¯ã·ã§ã³ã¸ç½²å <https://github.com/symbol/symbol-sdk-typescript-javascript/blob/main/src/model/transaction/Transaction.ts#L216>`_ ãããããã«æ¬¡ã®ã¹ãããã«å¾ãå¿è¦ãããã¾ã: ãã©ã³ã¶ã¯ã·ã§ã³ã®ã¢ãã¦ã³ã¹ ç½²åèã®ç½²åã¨å¬ééµããã©ã³ã¶ã¯ã·ã§ã³ã«è¿½å ãã¦ ``ãã¤ã­ã¼ã`` ãåå¾ãã¾ãã ç½²åã®æåã® 32 ãã¤ããç½²åèå¬ééµããã¡ã·ã¹ãã­ãã¯ã¸ã§ãã¬ã¼ã·ã§ã³ããã·ã¥ãæ®ãã®ãã©ã³ã¶ã¯ã·ã§ã³ãã¤ã­ã¼ãã« SHA3-512 ããã·ã¥ã¢ã«ã´ãªãºã ãé©ç¨ãã¦ `ãã©ã³ã¶ã¯ã·ã§ã³ããã·ã¥ <https://github.com/symbol/symbol-sdk-typescript-javascript/blob/main/src/model/transaction/Transaction.ts#L127>`_ ãè¨ç®ãã¾ãã æ¬¡é : :doc:`ææ°æ <fees>` ãã©ã³ã¶ã¯ã·ã§ã³ã®å®ç¾© |codename| ã§å©ç¨å¯è½ãªãã¹ã¦ã®åºæ¬ãã©ã³ã¶ã¯ã·ã§ã³ã¿ã¤ãã¯åå¥ã® :doc:`ãã©ã°ã¤ã³ <plugin>` ã¨ãã¦å®ç¾©ããã¦ãã¾ãããã®ãã©ã°ã¤ã³ã¢ãã­ã¼ãã«ãããéçºèã¯ã³ã¢ã¨ã³ã¸ã³ãå¤æ´ããããä»ã®æ©è½ãåæ­ãããã¨ãªããæ°ãããã©ã³ã¶ã¯ã·ã§ã³ã¿ã¤ããå°å¥ã§ãã¾ãã ãã­ãã¯ãä¸å¤ã¨ãªãããã«ã¯ :ref:`finalization <finalization>` ãã­ã»ã¹ãå®äºããå¿è¦ãããã¾ãããã­ãã¯ããã¡ã¤ãã©ã¤ãºãããã¨ããã­ãã¯ã¨å«ã¾ãããã©ã³ã¶ã¯ã·ã§ã³ããã­ãã¯ãã§ã¼ã³å°å¸³ã«æä¹çã«è¨é²ããã¾ãã ä¾ãã°ãTransferTransaction ã«ã¯åä¿¡èãèª°ã§ãããã¨ãè»¢éããã¢ã¶ã¤ã¯ã®éãè¨è¿°ããã¾ãããã®å ´åããã©ã³ã¶ã¯ã·ã§ã³ã«ç½²åãããã¨ã¯ããããã®ã¢ã¶ã¤ã¯ãããã¢ã«ã¦ã³ãã®æ®é«ããä»æ¹ã®ã¢ã«ã¦ã³ãã«ç§»åãããã¨ã«åæãããã¨ãæå³ãã¾ãã ãµã¤ãºãç½²åãããã³ç½²åèä»¥å¤ã®ãã©ã³ã¶ã¯ã·ã§ã³ã®ãã¹ã¦ã®ãã¤ãã§ãã ``ç½²åãã¤ã`` ãåå¾ãã¾ãã ãã¡ã·ã¹ãã­ãã¯ã® ``generation hash`` ãåå¾ãã¦ãã ããã :term:`NODE_URL` ``/node/info'`` ã«ã¢ã¯ã»ã¹ãã¦ ``meta.networkGenerationHash`` ã®å¤ãã³ãã¼ãã¾ãã ã¬ã¤ã ç½²åãã¤ãã«ãã¡ã·ã¹ãã­ãã¯ã®ã¸ã§ãã¬ã¼ã·ã§ã³ããã·ã¥ãæ¥é ­ãã¾ãã ç½²åèã®ç§å¯éµã§çµææå­åã«ç½²åãã¾ããããã¯ãã©ã³ã¶ã¯ã·ã§ã³ã« ``ç½²å`` ãä¸ãã¾ãã ç½²åããããã©ã³ã¶ã¯ã·ã§ã³ã¯ãããã¯ã¼ã¯ã«ã¢ãã¦ã³ã¹ããæºåãã§ãã¦ãã¾ããSDK ``TransactionHttp`` ãµã¼ãã¹ãä½¿ç¨ãããããã¤ã­ã¼ãã `ãã©ã³ã¶ã¯ã·ã§ã³ã¨ã³ããã¤ã³ã <https://docs.symbolplatform.com/symbol-openapi/v0.11.3/#operation/announceTransaction>`_ ã®ãªã¯ã¨ã¹ãã«è¿½å ãããã¨ãã§ãã¾ãã ãã©ã³ã¶ã¯ã·ã§ã³ã¸ã®ç½²å ã¹ãã ã¹ã­ããã« `catbuffer ã¹ã­ã¼ã <https://github.com/symbol/catbuffer-schemas>`_ ãªãã¸ããªã¯åãã©ã³ã¶ã¯ã·ã§ã³ã¿ã¤ããã©ã®ããã«ã·ãªã¢ã©ã¤ãºãããã¹ãããå®ç¾©ãã¦ãã¾ãã `catbuffer-generators <https://github.com/symbol/catbuffer-generators>`_ ãã­ã¸ã§ã¯ãã¨çµã¿åãããã¨ãéçºèã¯ç¹å®ã®ãã­ã°ã©ãã³ã°è¨èªç¨ã®ãã«ãã¼ã¯ã©ã¹ãçæã§ãã¾ãã ããªãã¼ã·ã§ã³ã®ååã¹ãã¼ã¸ã¯ API ãã¼ãã§è¡ããã¾ãããã©ã³ã¶ã¯ã·ã§ã³ã«ã¨ã©ã¼ãããå ´åãWebSocket ã¯ã¹ãã¼ã¿ã¹ãã£ã³ãã«ã¸éç¥ãæãã¾ããããã§ãªããã°ããã©ã³ã¶ã¯ã·ã§ã³ã¯ P2P ãããã¯ã¼ã¯ã¸ **æªæ¿èª** ã¹ãã¼ã¿ã¹ã¨ãã¦å°éãã¾ãããã®ç¶æã®å ´åããã©ã³ã¶ã¯ã·ã§ã³ããã­ãã¯ã«å«ã¾ãããã©ããã¯ã¾ã æç¢ºã§ã¯ããã¾ããããã®ãããæªæ¿èªç¶æã®ãã©ã³ã¶ã¯ã·ã§ã³ãä¿¡é ¼ãã¦ã¯ããã¾ããã ããã©ã«ãã§ã¯ãæ¬¡ã®ãã©ã³ã¶ã¯ã·ã§ã³ã¿ã¤ãã |codename| ãã¼ã¹ã®ãããã¯ã¼ã¯ã«å«ã¾ãã¾ã: ãã¼ãã®ã­ã£ãã·ã¥ã¯ãã­ãã¯ã«åãè¾¼ã¾ããã¾ã§ãæªæ¿èªãã©ã³ã¶ã¯ã·ã§ã³ãä¿æãã¾ããã­ã£ãã·ã¥ã¯è²´éãªãªã½ã¼ã¹ã®ããã |codename| ã¯æ»æèãæªæ¿èªãã©ã³ã¶ã¯ã·ã§ã³ã§ã­ã£ãã·ã¥ãæºãããã¨ãé²ããªãããæ­£å½ãªå©ç¨èãæ°ããæªæ¿èªãã©ã³ã¶ã¯ã·ã§ã³ãæ­£å¸¸ã«éä¿¡ã§ããããã«ããããã®ã¹ãã ã¹ã­ããã«ãå®è£ãã¦ãã¾ãã ãã©ã³ã¶ã¯ã·ã§ã³ã :doc:`ãã¼ãã¹ãããããã­ãã¯ <block>` ã«è¿½å ãããåã«ã2ã¤ç®ã®ããªãã¼ã·ã§ã³ãå®æ½ããã¾ããæåããå ´åããã¼ãã¹ã¿ã¼ã¯ãã­ãã¯ã«ãã©ã³ã¶ã¯ã·ã§ã³ãä¿å­ãããã®ãã©ã³ã¶ã¯ã·ã§ã³ã¯ **æ¿èªæ¸ã¿** ã®ã¹ãã¼ã¿ã¹ã¨ãªãã¾ãããã®ç¶æã«ããã¦ããã©ã³ã¶ã¯ã·ã§ã³ã¯ãã­ãã¯ãã§ã¼ã³å°å¸³ã«æ¿èªã®ä¸ã«è¨é²ããã¦ãã¾ãããã¾ã  **ãã¡ã¤ããªãã£** ã¯å¾ã¦ãã¾ããã ã¹ãã ã¹ã­ããã«ã¯ã¢ã«ã¦ã³ãã®ã¤ã³ãã¼ã¿ã³ã¹ã¹ã³ã¢ãæ¯è¼ãã¦ãã¢ã«ã¦ã³ããã¨ã®ã­ã£ãã·ã¥ã®éåãå¬å¹³ã«è¨ç®ãããã¨ã«ãããã¢ã«ã¦ã³ããéä¿¡ã§ããæªæ¿èªãã©ã³ã¶ã¯ã·ã§ã³ã®éãå¶å¾¡ãã¾ããã¢ã«ã¦ã³ããã­ã£ãã·ã¥ã®å¬å¹³ãªéåãè¶éãã¦ããããã¼ãã­ã£ãã·ã¥ã«æªæ¿èªãã©ã³ã¶ã¯ã·ã§ã³ã1ã¤ã®ãã­ãã¯ã«å«ãããã¨ãã§ããéãããå¤ãå ´åããã©ã³ã¶ã¯ã·ã§ã³ã¯æå¦ããã¾ããããã«ãããæªæã®ããå©ç¨èããã¼ãã«ã¹ãã ãã©ã³ã¶ã¯ã·ã§ã³ã®éä¿¡ãå¹æçã«ãã­ãã¯ããä»ã®ã¦ã¼ã¶ã¼ããã¼ããéå¸¸éãä½¿ç¨ã§ããããã«ãã¾ãã ãã©ã³ã¶ã¯ã·ã§ã³ ãã©ã³ã¶ã¯ã·ã§ã³ãµã¤ã¯ã« ãã©ã³ã¶ã¯ã·ã§ã³ã¿ã¤ã ãã©ã³ã¶ã¯ã·ã§ã³ã¯ã·ãªã¢ã«åãããå½¢å¼ã§å®ç¾©ããã¾ãããã¹ã¦ã®ãã©ã³ã¶ã¯ã·ã§ã³ã¯åºæ¬ ``Transaction`` ã¹ã­ã¼ããæ¡å¼µããç¹å®ã®åãã­ããã£ãè¿½å ããã¦ãã¾ãã ãããã¯ã¼ã¯éå®³ããã¼ãã£ã·ã§ã³ãªã©ãç¹å®ã®ç¶æ³ä¸ã§ã¯æå¾ã«æ¿èªããããã­ãã¯ã :ref:`rolled back <rollbacks>` ãããå¯è½æ§ãããã¾ãããã®ããããã¡ã¤ãã©ã¤ãºããã¦ããªãæ¿èªæ¸ã¿ã®ãã©ã³ã¶ã¯ã·ã§ã³ã¯ãããã¯ã¼ã¯ã«ãã£ã¦èªè­ããã¾ãããå·»ãæ»ãããå¯è½æ§ããããããä¸å¤ã§ã¯ããã¾ããã ããªãã¼ã·ã§ã³ æ°ãããã©ã³ã¶ã¯ã·ã§ã³ãå®ç¾©ããã«ã¯ :doc:`SDK <../sdk>` ãä½¿ç¨ãããã¨ãæ¨å¥¨ãã¾ãã ``deadline``: ãã©ã³ã¶ã¯ã·ã§ã³ã¯æéã«å°éããåã«åãå¥ããããã¿ã¤ã ã¦ã£ã³ãã¦ãæã¡ã¾ããæéã«å°éãã¦ãã©ã³ã¶ã¯ã·ã§ã³ãæéåãã«ãªãã¨ããã¹ã¦ã®ãã¼ãã¯ãã©ã³ã¶ã¯ã·ã§ã³ãæå¦ãã¾ããããã©ã«ãã§ SDK ã¯æéã 2 æéã«è¨­å®ãã¾ãããæå¤§ 6 æé ( :ref:`aggregate-bonded` ãã©ã³ã¶ã¯ã·ã§ã³ã®å ´åã¯ 48 æé) ã¾ã§å»¶é·ã§ãã¾ãã ``max_fee``: ãã©ã³ã¶ã¯ã·ã§ã³éä¿¡èããã©ã³ã¶ã¯ã·ã§ã³ãæ¿èªãããããã«æ¯æãææã®ãããããã¯ã¼ã¯éè²¨ã®æå¤§é¡ã :doc:`æ¬¡ã®ãã­ã¥ã¡ã³ã <fees>` ã¯æé©ãª max_fee å¤ãè¨­å®ããæ¹æ³ãç¤ºãã¦ãã¾ãã |codename| ã«ã¯ããããã®ç°ãªããã©ã³ã¶ã¯ã·ã§ã³ã¿ã¤ããããã¾ããä¾ãã°ã :doc:`ã¢ã¶ã¤ã¯ <mosaic>` ãã¢ã«ã¦ã³ãéã§è»¢éããããã¡ãã»ã¼ã¸ã³ã°ãã¢ã«ã¦ã³ãã®æææ¨©ãè»¢éã¾ãã¯æ§ç¯ãã ( :doc:`ãã«ãã·ã° <multisig-account>` ã«ã¼ã«ãå«ãã¦) ãªã©ãããã¾ãã 