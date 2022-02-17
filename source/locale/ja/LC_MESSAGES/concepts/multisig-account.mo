Þ    .                    ü     ý  í       	  ì   &  =        Q    b     u  7        ¹  %   Ç     í     ù       ä        ÷  E   þ  7  D	     |
     
     ¼
     Ù
  2   ô
  _   '       ª     6  C  C   z  6   ¾     õ  q   
  e   |     â    ò  ¿     £   È  |   l  I   é  ß   3  S     Ö   g     >     V  Ñ   [  G  -  Ä  u  %   :  ^  `  ;  ¿  Z  û  h   V     ¿    Ø     f  D   m  	   ²  3   ¼     ð     ÷     û  _    	   h   ?   r   j  ²   $   "  $   B"     g"     "  ?   "     Ö"     `#    #  °  $  `   E&  P   ¦&     ÷&  |   '  ¢   '     6(  F  L(  Ø   )  Á   l*     .+  x   Î+  \  G,  o   ¤-  #  .     8/  	   Q/    [/  ?  m0   2-of-3 multisignature account :ref:`Multisig modification transactions <multisigaccountmodificationtransaction>` must be wrapped in an :doc:`AggregateTransaction <aggregate-transaction>`. New cosignatories added to the multisig must opt-in by cosigning the aggregate. A company could create a 1-of-1 multisig account for each of their products, adding themselves as the cosignatory. When the company sells the product to Alice, she becomes the owner through the action of being added as the cosigner, and the company is removed in the same transaction. Alice wants to make sure her funds are not compromised in any way. Therefore she sets up a multisig account with her funds and attaches two accounts (signer accounts) to control her multisig account as a form of 2-factor authentication. An account can be cosigner of up to ``25`` multisig accounts. Assets ownership Both of her signer accounts need to approve the transaction, and her signer accounts are located on different computer platforms with different passwords. This means that even if an evil hacker or virus should compromise one of her accounts, the funds are still kept secure. Constraints Continue: :doc:`Cross-Chain Swaps <cross-chain-swaps>`. Cosignatories Create or modify a multisig contract. Description Examples Fraud Detection From that moment on, the multisig account cannot announce transactions by itself. A multisig cosignatory has to propose a transaction involving the multisig, wrapping it in an :doc:`AggregateTransaction <aggregate-transaction>`. Guides In this example, a manufacturer is shipping a pharmaceutical product. It is not always necessary to require all cosignatories to cosign transactions associated with the multisig account. |codename| allows to set up the minimum number of cosignatory agreements. These properties can be :ref:`edited <guide-modify-a-multisig-account-min-approval>` afterward to suit almost all needs. Manufacturing and Supply Chains Manufacturing and supply chains Minimum approval and removal Multi-factor authorization Multi-factor authorization using multisig accounts Multisig :doc:`accounts <account>` require additional signatures to initiate actions/transfers. Multisig Account Multisig account can be a cosigner for another multisig account, up to ``3`` levels. Multi-level multisig accounts add âAND/ORâ logic to multi-signature transactions. Multisig accounts are a powerful tool, but please use this tool with caution.  If the cosignatories keys get lost and minimum approval is not reached, it would result in the permanent loss of access to the funds held by the multisig account. Choose ``minimum removal`` parameter wisely to avoid this situation. Multisig accounts can be used to represent the ownership of assets. Multisig accounts can have up to ``25`` cosignatories. Related transactions Sensors in the shipping container report temperature data every 5 minutes and consolidate it into a daily report. Several families are members of the local philatelist society and use a shared account to buy stamps. Shared accounts Similarly, cosignatories can :ref:`invite other accounts to take part in the multisig <guide-modify-a-multisig-account-add-new-cosignatory>`, or  :ref:`propose to remove others <guide-modify-a-multisig-account-removing-a-cosignatory>` when the defined conditions are fulfilled. The product receives its quality approval :doc:`mosaic <mosaic>` only when its blockchain record shows it has a production date, safety inspection, and was shipped at the correct temperature. The public network defines the following constraints for multisig accounts, being the values presented :ref:`configurable per network <config-network-properties>`. There is a broad range of useful applications for multisig accounts. Let's take a look at some of the most common use cases. This example shows how a high-security account can be made easier to use. To ensure that all agree on which old stamps they should buy and on the right price, they use a multisig account. This way, all members of the society need to approve the transaction before it is included on the blockchain. To record the transaction in the block, the other cosignatories will have to agree. Transactions are only approved from a hardware wallet OR your phone AND a fraud detection AI. MLMA allows a variety of security configurations at the protocol level to keep businesses and their customers hack-free. Transferring an account Type |codename| :doc:`accounts <account>` can be :doc:`converted to multisig <../guides/multisig/creating-a-multisig-account>`. The cosignatoriesâother accountsâof the multisig will become the account managers. |codename|'s current implementation of multisig is *"M-of-N"*, where M is the number of cosignatories required to announce a transaction and N is the total amount of cosignatories for that particular multisig account. This means that M can be any number equal to or less than N, i.e., 1-of-4, 2-of-2, 4-of-9, 9-of-10 and so on. Project-Id-Version: symbol-docs 0.22.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-10-30 22:34+0000
PO-Revision-Date: 2019-02-22 09:05+0000
Last-Translator: Yoshiyuki Ieyama <yukku0423+github@gmail.com>, 2021
Language: ja
Language-Team: Japanese (https://www.transifex.com/nemtech/teams/95744/ja/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 2-of-3 ãã«ãã·ã°ã¢ã«ã¦ã³ã :ref:`Multisig modification transactions <multisigaccountmodificationtransaction>` ã¯ :doc:`ã¢ã°ãªã²ã¼ããã©ã³ã¶ã¯ã·ã§ã³ <aggregate-transaction>` ã§ã©ãããããå¿è¦ãããã¾ãããã«ãã·ã°ã«è¿½å ãããæ°ããé£ç½²èã¯ã¢ã°ãªã²ã¼ãã«ç½²åãããã¨ã§ãªããã¤ã³ããªããã°ãªãã¾ããã ä¼æ¥­ã¯è£½åãã¨ã« 1-of-1 ãã«ãã·ã°ã¢ã«ã¦ã³ããä½æããé£ç½²èã¨ãã¦èªåèªèº«ãè¿½å ãã¾ããä¼ç¤¾ã Alice ã¸è£½åãè²©å£²ããã¨ããå½¼å¥³ãç½²åèã¨ãã¦è¿½å ããããã¨ã§ææèã¨ãªããåãåå¼ã®ä¸­ã§ä¼ç¤¾ã®æææ¨©ãåãé¤ããã¾ãã Alice ã¯å½¼å¥³ã®è³ç£ãæ±ºãã¦æãªãããªãããã«ãããã¨èãã¦ãã¾ãããããã£ã¦ãå½¼å¥³ã¯å½¼å¥³ã®è³ç£ã§ãã«ãã·ã°ã¢ã«ã¦ã³ããè¨­å®ãããã«ãã·ã°ã¢ã«ã¦ã³ããå¶å¾¡ããããã«2è¦ç´ èªè¨¼ã®å½¢æã¨ãã¦ã2ã¤ã®ã¢ã«ã¦ã³ã(ç½²åèã¢ã«ã¦ã³ã)ãè¨­å®ãã¾ããã ã¢ã«ã¦ã³ãã¯ ``25`` ãã«ãã·ã°ã¢ã«ã¦ã³ãã¾ã§ã®é£ç½²èã¨ãã¦è¨­å®å¯è½ã§ãã ã¢ã»ããã®æææ¨© å½¼å¥³ã®ç½²åèã¢ã«ã¦ã³ãã¯ä¸¡æ¹ã¨ããã©ã³ã¶ã¯ã·ã§ã³ãæ¿èªããå¿è¦ãããããã®ç½²åèã¢ã«ã¦ã³ãã¯ç°ãªããã¹ã¯ã¼ããæã¤ãç°ãªãã³ã³ãã¥ã¼ã¿ã«éç½®ããã¾ããããã¯æªæã®ããããã«ã¼ãã¦ã£ã«ã¹ãèªåã®ã¢ã«ã¦ã³ãã®ãã¡1ã¤ãä¾µå®³ããã¨ãã¦ããå½¼å¥³ã®è³éã¯ã¾ã å®å¨ã«ä¿ããã¾ãã å¶ç´ æ¬¡é : :doc:`ã¯ã­ã¹ãã§ã¼ã³ã¹ã¯ãã <cross-chain-swaps>` é£ç½²è ãã«ãã·ã°ã³ã³ãã©ã¯ãã®ä½æã¨å¤æ´ èª¬æ ä¾ ä¸æ­£æ¤ç¥ ãã®ç¬éãããã«ãã·ã°ã¢ã«ã¦ã³ãã¯ããèªä¿¡ãããã©ã³ã¶ã¯ã·ã§ã³ãã¢ãã¦ã³ã¹ã§ããªããªãã¾ããé£ç½²èã®ãã¡ 1 äººããã«ãã·ã°ã«é¢ä¿ãã :doc:`ã¢ã°ãªã²ã¼ããã©ã³ã¶ã¯ã·ã§ã³ <aggregate-transaction>` ã§ã©ãããããã©ã³ã¶ã¯ã·ã§ã³ãææ¡ããå¿è¦ãããã¾ãã ã¬ã¤ã ããã¯è£½é èãå»è¬è£½åãçºéããäºä¾ã§ãã å¸¸ã«ãã¹ã¦ã®é£ç½²èã«ãã«ãã·ã°ã«é¢ä¿ãããã©ã³ã¶ã¯ã·ã§ã³ã¸ã®é£ç½²ããããå¿è¦ã¯ããã¾ããã |codename| ã¯é£ç½²èã®åæã®æå°æ°ã®è¨­å®ãå¯è½ã§ããå¤§æµã®ãã¼ãºã«åããã¦ãããã®ãã­ããã£ã :ref:`ç·¨é <guide-modify-a-multisig-account-min-approval>` ãããã¨ãã§ãã¾ãã è£½é æ¥­ã¨ãµãã©ã¤ãã§ã¼ã³ è£½é æ¥­ã¨ãµãã©ã¤ãã§ã¼ã³ æå°æ¿èªæ°ã¨åé¤æ° è¤æ°è¦ç´ èªè¨¼ ãã«ãã·ã°ã¢ã«ã¦ã³ããä½¿ç¨ããè¤æ°è¦ç´ èªè¨¼ ãã«ãã·ã° :doc:`ã¢ã«ã¦ã³ã <account>` ã¯ã¢ã¯ã·ã§ã³/è»¢éãå®è¡ããããã«è¿½å ã®ç½²åãå¿è¦ã¨ãã¾ãã ãã«ãã·ã°ã¢ã«ã¦ã³ã ãã«ãã·ã°ã¢ã«ã¦ã³ãã¯ ``3`` éå±¤ã¾ã§ãä»ã®ãã«ãã·ã°ã¢ã«ã¦ã³ãã®é£ç½²èã«ãªããã¨ãã§ãã¾ãããã«ãã¬ãã«ãã«ãã·ã°ã¢ã«ã¦ã³ãã¯ãã«ãã·ã°ãã©ã³ã¶ã¯ã·ã§ã³ã« âAND/ORâ ã­ã¸ãã¯ãè¿½å ãã¾ãã ãã«ãã·ã°ã¢ã«ã¦ã³ãã¯å¼·åãªãã¼ã«ã§ããããã®ãã¼ã«ã®ä½¿ç¨ã¯æéã«è¡ã£ã¦ãã ãããé£ç½²èãã­ã¼ãç´å¤±ããæå°æ°ã®æ¿èªãå¾ãããªããªã£ãå ´åããã«ãã·ã°ã¢ã«ã¦ã³ããä¿æããè³ç£ã¸ã®ã¢ã¯ã»ã¹ãæ°¸ä¹ã«ä¸å¯è½ã«ãªãã¾ãããã®ç¶æ³ãåé¿ããã«ã¯ ``æå°éã®åé¤æ°`` ãã©ã¡ã¼ã¿ãé©åã«è¨­å®ãã¦ãã ããã ãã«ãã·ã°ã¢ã«ã¦ã³ããä½¿ç¨ãã¦è³ç£ã®æææ¨©ãè¡¨ããã¨ãã§ãã¾ãã ãã«ãã·ã°ã¢ã«ã¦ã³ãã¯ ``25`` é£ç½²èã¾ã§ãè¨­å®å¯è½ã§ãã é¢é£ãã©ã³ã¶ã¯ã·ã§ã³ åºè·ã³ã³ããåã®ã»ã³ãµã¼ãæ¸©åº¦ã5åãã¨ã«ã¬ãã¼ãããæ¥æ¬¡ã¬ãã¼ãã¨ãã¦ã¾ã¨ãã¾ãã ããã¤ãã®å®¶æã¯å°åã®åæåéå®¶å±åä½ã®ã¡ã³ãã¼ã§ãããåæãè³¼å¥ããããã«å±æã¢ã«ã¦ã³ããä½¿ç¨ãã¦ãã¾ãã å±æã¢ã«ã¦ã³ã åæ§ã«ãé£ç½²èã¯å®ç¾©ãããç¶æãæºããå ´åã« :ref:`ãã«ãã·ã°ã¸ã®åå ã«ä»ã®ã¢ã«ã¦ã³ããæå¾ <guide-modify-a-multisig-account-add-new-cosignatory>`  ã¾ãã¯  :ref:`åå èã«é¤åã®ææ¡ <guide-modify-a-multisig-account-removing-a-cosignatory>` ããããã¨ãã§ãã¾ãã ãã®è£½åã¯ããã­ãã¯ãã§ã¼ã³è¨é²ãç¤ºãè£½é æ¥æãå®å¨æ¤æ»ãæ­£ããæ¸©åº¦ã§åºè·ãããããç¤ºããã¨ãã ãã«ãåè³ªèªå¯ :doc:`ã¢ã¶ã¤ã¯ <mosaic>` ãååãã¾ãã ãããªãã¯ãããã¯ã¼ã¯ã¯ãã«ãã·ã°ã¢ã«ã¦ã³ãã«æ¬¡ã®å¶ç´ãå®ç¾©ãã¾ããå¤ã¯ :ref:`ãããã¯ã¼ã¯ãã¨ã«è¨­å®å¯è½ <config-network-properties>` ã§ãã ãã«ãã·ã°ã¢ã«ã¦ã³ãã«ã¯å¹åºãä¾¿å©ãªã¢ããªã±ã¼ã·ã§ã³ãããã¾ããä¸è¬çãªä½¿ç¨ä¾ã®ããã¤ããè¦ã¦ã¿ã¾ãããã ãã®ä¾ã§ã¯ãé«ãã»ã­ã¥ãªãã£ã¢ã«ã¦ã³ãã®æ±ããããã«ç°¡åã«ã§ããããç´¹ä»ãã¾ãã è³¼å¥ããã¹ãå¤ãåæã¨é©åãªä¾¡æ ¼ã®ãã¹ã¦ã«åæããããã«ãå½¼ãã¯ãã«ãã·ã°ã¢ã«ã¦ã³ããä½¿ç¨ãã¾ãããã®æ¹æ³ã§ã¯ãæ­£å½ãªãã©ã³ã¶ã¯ã·ã§ã³ã¨ãã¦ãã­ãã¯ãã§ã¼ã³ã«åãè¾¼ã¾ããåã«ãå±åä½ã®å¨å¡ããã©ã³ã¶ã¯ã·ã§ã³ã«åæãããã¨ãå¿è¦ã§ãã ãã®ãã©ã³ã¶ã¯ã·ã§ã³ããã­ãã¯ã«è¨é²ããã«ã¯ãä»ã®é£ç½²èã®åæãå¿è¦ã§ãã ãã©ã³ã¶ã¯ã·ã§ã³ã¯ãã¼ãã¦ã§ã¢ã¦ã©ã¬ããã¾ãã¯é»è©±ã¨ä¸æ­£æ¤ç¥ AI ã«ãã£ã¦ã®ã¿æ¿èªããã¾ããMLMA ã¯ãã­ãã³ã«ã¬ãã«ã§æ§ããªã»ã­ã¥ãªãã£è¨­å®ã«é©ç¨ã§ãããã¸ãã¹ãç¶­æãã¦é¡§å®¢ãããã­ã³ã°ããå®ãã¾ãã ã¢ã«ã¦ã³ãã®è­²æ¸¡ ã¿ã¤ã |codename| :doc:`ã¢ã«ã¦ã³ã <account>` ã¯ :doc:`ãã«ãã·ã°ã«å¤æãã <../guides/multisig/creating-a-multisig-account>` ãã¨ãã§ãã¾ãããã«ãã·ã°ã®é£ç½²è - ä»ã®ã¢ã«ã¦ã³ã - ã¯ãã®ã¢ã«ã¦ã³ãã®ããã¼ã¸ã£ã¨ãªãã¾ãã |codename| ã«ãããç¾å¨ã®ãã«ãã·ã°å®è£ã¯ *"M-of-N"* ã§ããã«ãã·ã°ã¢ã«ã¦ã³ãã® M ã¯ã¢ãã¦ã³ã¹ã«å¿è¦ãªé£ç½²èæ°ãN ã¯åè¨é£ç½²èæ°ã§ããããã¯ M ã N ä»¥ä¸ã®æ°å­ãåãå¾ããã¨ãæå³ãã¾ããä¾ãã° 1-of-4, 2-of-2, 4-of-9, 9-of-10 ãªã©ã§ãã 