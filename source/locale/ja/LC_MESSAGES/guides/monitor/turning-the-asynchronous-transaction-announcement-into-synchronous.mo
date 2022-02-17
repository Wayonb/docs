Þ                                u   ­  <   #  t   `  I   Õ  K        k       !       4    J  B   W       ·  £  Ä  [  ÿ    
        V   ¿       i   ¤  j     Ë   y     E  *   R  g  }  >  å  N   $     s  p     Alice is developing an app to send 10 |privatenetworkcurrency| to Bob and wants to know if the transaction has reached the network before sending Bob an email. Complete :doc:`sending mosaics and messages between two accounts <../transfer/sending-a-transfer-transaction>` guide. Create a new :ref:`account <setup-creating-a-test-account>`. Create a new ``.ts`` file. Then, define and sign a :doc:`TransferTransaction <../../concepts/transfer-transaction>`. Handy snippet to announce a transaction and wait until this is confirmed. Load the account with enough |networkcurrency| to pay for transaction fees. Once signed, :doc:`announce the transaction <../../concepts/transaction>` using ``TransactionService.announce`` instead of ``TransactionHttp.announce``. Prerequisites Sending a synchronous transaction The function ``TransactionService.announce()`` will respond successfully if the transaction reaches the network and does not have validation errors. You might still need to :doc:`wait for several confirmations  <../../concepts/transaction>` before executing additional actions. The negative aspect of announcing transactions asynchronously is that it adds unnecessary complexity to small projects. The |sdk| ``TransactionService`` aims to solve this problem by providing a function that waits for the confirmation or rejection of the transaction. Turning the asynchronous transaction announcement into synchronous Use case When announcing a transaction in NIS1, you had to wait to get the response from the node. |codename| works differently: when a transaction is announced, the REST API server will always return an OK. As a result, the developer does not have to wait until the server returns a response, being able to make more responsive apps. However, now is the developer's responsibility to check the status of the transaction and ensure it is confirmed. Project-Id-Version: symbol-docs 0.22.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-10-30 22:34+0000
PO-Revision-Date: 2019-09-30 13:12+0000
Last-Translator: Yoshiyuki Ieyama <yukku0423+github@gmail.com>, 2020
Language: ja
Language-Team: Japanese (https://www.transifex.com/nemtech/teams/95744/ja/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 Alice ã¯ Bob ã« 10 |privatenetworkcurrency| ãéãã¢ããªã±ã¼ã·ã§ã³ãéçºãã¦ãã¾ããå½¼å¥³ã¯ Bob ã«ã¡ã¼ã«ãéãåã«ããã©ã³ã¶ã¯ã·ã§ã³ããããã¯ã¼ã¯ã«å°çãããã©ãããç¥ããã¨ãã¦ãã¾ãã :doc:`ã¢ã¶ã¤ã¯ã¨ã¡ãã»ã¼ã¸ãï¼ã¤ã®ã¢ã«ã¦ã³ãéã§éä¿¡ãã <../transfer/sending-a-transfer-transaction>` ã¬ã¤ããå®äºãã¦ãã æ°ãã :ref:`ã¢ã«ã¦ã³ã <setup-creating-a-test-account>` ãä½æãã¾ãã æ°ãã ``.ts`` ãã¡ã¤ã«ãä½æãã¦ :doc:`TransferTransaction <../../concepts/transfer-transaction>` ãå®ç¾©ãç½²åãã¾ãã ãã©ã³ã¶ã¯ã·ã§ã³ãã¢ãã¦ã³ã¹ãã¦ãæ¿èªãããã¾ã§å¾ã¤ä¾¿å©ãªã¹ããããã ã¢ã«ã¦ã³ãã«ææ°æãæ¯æãããã«ååãª |networkcurrency| ãå¥éãã¦ãã ããã ç½²åãããã ``TransactionHttp.announce`` ã®ä»£ããã« ``TransactionService.announce`` ãä½¿ç¨ãã¦ :doc:`ãã©ã³ã¶ã¯ã·ã§ã³ãã¢ãã¦ã³ã¹ <../../concepts/transaction>` ãã¾ãã åææ¡ä»¶ åæçãã©ã³ã¶ã¯ã·ã§ã³ã®éä¿¡ ãã®é¢æ° ``TransactionService.announce()`` ãã©ã³ã¶ã¯ã·ã§ã³ããããã¯ã¼ã¯ã«å°éããããªãã¼ã·ã§ã³ã¨ã©ã¼ãçºçããªããã°ãæåã¬ã¹ãã³ã¹ãè¿ãã¾ããã¾ã æ¬¡ã®ã¢ã¯ã·ã§ã³ãèµ·ããåã«ã :doc:`ããããã®æ¿èªãå¾ã¤  <../../concepts/transaction>` å¿è¦ãããããããã¾ããã éåæçãã©ã³ã¶ã¯ã·ã§ã³ã®ãã¡ãªããã¨ãã¦ãå°è¦æ¨¡ãªãã­ã¸ã§ã¯ããä¸å¿è¦ã«è¤éã«ãã¦ãã¾ãå ´åãããã¾ãã |sdk| ``TransactionService`` ããã©ã³ã¶ã¯ã·ã§ã³ã®æ¿èªã¾ãã¯å´ä¸ãå¾æ©ããæ©è½ãæä¾ãããã¨ã§ãã®åé¡ãè§£æ±ºãã¾ãã éåæãªãã©ã³ã¶ã¯ã·ã§ã³ã®ã¢ãã¦ã³ã¹ãåæçã«å¤ãã ã¦ã¼ã¹ã±ã¼ã¹ NIS1 ã§ã¯ãã©ã³ã¶ã¯ã·ã§ã³ãã¢ãã¦ã³ã¹ãããã¨ããã¼ãããã®ã¬ã¹ãã³ã¹ãå¾ããªããã°ããã¾ããã§ããã |codename| ã§ã¯ç°ãªãåä½ããã¾ãããã©ã³ã¶ã¯ã·ã§ã³ãã¢ãã¦ã³ã¹ãããã¨ãREST API ã¯å¸¸ã« OK ã¬ã¹ãã³ã¹ãè¿ãã¾ããããã«ããéçºèã¯ãµã¼ããã¬ã¹ãã³ã¹ãè¿å´ããã®ãå¾ã¤å¿è¦ããªããããã¬ã¹ãã³ã·ããªã¢ããªã±ã¼ã·ã§ã³ã®éçºãå¯è½ã«ãªãã¾ããããããããã©ã³ã¶ã¯ã·ã§ã³ã®ç¶æãæ¿èªããããã¨ãç¢ºèªããã®ã¯éçºèã®è²¬åã«ãªãã¾ãã 