Þ          ì               ¼     ½  <  Ý  C     V   ^  d   µ  u           '  ×   G      ©   9	  \   ã	  $   @
     e
  )   
  k   ©
  m          q          »     Ð   U     &     §     °  Ä  5  +   ú  ³  &  P   Ú  n   +  t          ?  ª  g  ê  õ   R  f  H  È   ¯  h   x  <   á       6   >  x   u     î  ¾   }  ¬   <     é  î   ö  
  å  ¥   ð      !     ©!   2-of-2 multisig account example An AggregateTransaction is *complete* if, before announcing it to the network, all required cosignatories have signed it. If valid, it will be included in a block. As only one cosignature is required (1-of-2), Alice can sign define the aggregate as **complete**, sign the transaction, and announce it to the network. Click on the â**Multisig**â tab on the left-side of the wallet. Complete :doc:`converting an account to multisig <creating-a-multisig-account>` guide. Define a **MultisigAccountModificationTransaction** to increase the ``minAprovalDelta`` by one unit. Follow :doc:`the next guide <adding-a-new-signer-to-a-multisig-account>` to add a new signer to the multisig account. If more than one cosignature is required to announce the transaction (e.g., the multisig is a **2-of-2** account), the transaction must be defined as aggregate **bonded**, and all other required multisig participants should cosign it in order to be confirmed. Follow the :doc:`next guide <../aggregate/sending-a-multisig-transaction>` to announce aggregate bonded transactions involving a multisig account. If the multisig account has the "**minimum approval**" set to a number greater than 1, log in to another cosignatory account and :doc:`cosign the transaction <../aggregate/signing-announced-aggregate-bonded-transactions>`. Repeat this step until the minimum approval number is satisfied. If you want to decrease the ``minApproval`` property, set ``minApprovalDelta`` with a negative value. For example, to reduce the number of required signers by one unit, you should set ``minApprovalDelta`` to ``-1``. Imagine that Alice and Bob are cosignatories of a 1-of-2 multisig account. This means that at least one of their account's signatures is required to authorize multisig transactions. In other words, we can say that the ``minApproval`` property of the multisig is currently set to 1. In this case, we want to make both cosignatories required, shifting to a **2-of-2 multisig** instead. To achieve this, we will be increasing **minApproval** by one unit. Log in to an account that is a cosignatory (Alice or Bob) of the account you want to modify. Method #01: Using the Desktop Wallet Method #02: Using the SDK Modifying a multisig account min approval Once confirmed, the ``minApproval`` value of the multisig will be set to 2, having our **2-of-2** multisig. Once the Aggregate Transaction is confirmed, you can check its new properties in the â**Multisig**â menu. One of the cosignatory accounts, for example Alice's, will announce a :ref:`multisigaccountmodificationtransaction` to increase ``minApprovalDelta``. Open a new file. Then, define Alice's account public key and the multisig account private key into new variables. Prerequisites Select the multisig wallet you want to modify from the dropdown menu from the top field. This will convert the â**Operation Type**â to â**Modifying account multisig properties**â. Select the new â**Min. Approval**â number. In this case, we want to change it to "**2**". Click â**Send**â. Review the information on the popup. Enter your wallet password and click â**Confirm**â. This guide will show you how to increase and decrease the minimum number of signatures needed to execute a multisig transaction. Use case Wrap the **MultisigAccountModificationTransaction** in an **AggregateTransaction**, attaching the multisig public key as the signer. Project-Id-Version: symbol-docs 0.22.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-10-30 22:34+0000
PO-Revision-Date: 2020-04-24 12:29+0000
Last-Translator: Yoshiyuki Ieyama <yukku0423+github@gmail.com>, 2021
Language: ja
Language-Team: Japanese (https://www.transifex.com/nemtech/teams/95744/ja/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 2-of-2 ãã«ãã·ã°ã¢ã«ã¦ã³ãã®ä¾ ãããã¯ã¼ã¯ã¸ã¢ãã¦ã³ã¹ãããåã«ãã¹ã¦ã®é£ç½²èãç½²åãããã¨ãAggregateTransaction ã¯ *ã³ã³ããªã¼ã* ã«ãªãã¾ããæ­£å½ã§ããã°ããã­ãã¯ã¸åãè¾¼ã¾ãã¾ããå¿è¦ãªç½²åã¯ 1 ã¤ã ã (1-of-2) ãªã®ã§ Alice ã¯ã¢ã°ãªã²ã¼ãã **ã³ã³ããªã¼ã** ã¨ãã¦å®ç¾©ãããã©ã³ã¶ã¯ã·ã§ã³ã«ç½²åãã¦ãããã¯ã¼ã¯ã¸ã¢ãã¦ã³ã¹ã§ãã¾ãã ã¦ã©ã¬ããå·¦å´ã® "**ãã«ãã·ã°**" ã¿ããã¯ãªãã¯ãã¾ãã :doc:`ãã«ãã·ã°ã¢ã«ã¦ã³ãã¸ã®å¤æ <creating-a-multisig-account>` ã¬ã¤ããå®äºãã¦ãã ``minApprovalDelta`` ã 1 åä½ãå¢å ããã **MultisigAccountModificationTransaction** ãå®ç¾©ãã¾ãã :doc:`æ¬¡ã®ã¬ã¤ã <adding-a-new-signer-to-a-multisig-account>` ã«å¾ã£ã¦ããã«ãã·ã°ã¢ã«ã¦ã³ãã«æ°ããç½²åèãè¿½å ãã¾ãã ãã©ã³ã¶ã¯ã·ã§ã³ã®ã¢ãã¦ã³ã¹ã«è¤æ°ã®ç½²åãå¿è¦ãª (ãã¨ãã° **2-of-2** ãã«ãã·ã°ã¢ã«ã¦ã³ã) ãã©ã³ã¶ã¯ã·ã§ã³ã¯ã¢ã°ãªã²ã¼ã **ãã³ããã** ã¨ãã¦å®ç¾©ããå¿è¦ããããã¾ããä»ã®ãã¹ã¦ã®å¿è¦ãªãã«ãã·ã°åå èã¯ãæ¿èªã®ããã«ç½²åããå¿è¦ãããã¾ãã :doc:`æ¬¡ã®ã¬ã¤ã <../aggregate/sending-a-multisig-transaction>` ã«å¾ã£ã¦ããã«ãã·ã°ã¢ã«ã¦ã³ãã«é¢é£ãããã¢ã°ãªã²ã¼ããã³ããããã©ã³ã¶ã¯ã·ã§ã³ãã¢ãã¦ã³ã¹ãã¾ãã ãã«ãã·ã°ã¢ã«ã¦ã³ãã® "**æå°æ¿èªæ°**" ã 1 ããå¤§ããæ°ã«è¨­å®ããã¦ããå ´åã¯ãå¥ã®é£ç½²èã¢ã«ã¦ã³ãã«ã­ã°ã¤ã³ã :doc:`ãã©ã³ã¶ã¯ã·ã§ã³ã«ç½²åãã¾ã <../aggregate/signing-announced-aggregate-bonded-transactions>` ãæå°æ¿èªæ°ãæºããããã¾ã§ããã®æé ãç¹°ãè¿ãã¾ãã ``minApproval`` ãã­ããã£ãæ¸å°ãããå ´åã¯ ``minApprovalDelta`` ãè² ã®å¤ã«è¨­å®ãã¦ãã ããããã¨ãã°ãå¿è¦ãªç½²åèã®æ°ã® 1 åä½ãæ¸ããã«ã¯ ``minApprovalDelta`` ã ``-1`` ã«è¨­å®ãã¾ãã Alice ã¨ Bob ã¯ 1-of-2 ãã«ãã·ã°ã¢ã«ã¦ã³ãã®é£ç½²èã§ãããã«ãã·ã°ãã©ã³ã¶ã¯ã·ã§ã³ãæ¿èªããã«ã¯ãå½¼ãã®ãã¡å°ãªãã¨ãä¸ã¤ã®ã¢ã«ã¦ã³ãã®ç½²åãå¿è¦ãªãã¨ãæå³ãã¾ããã¤ã¾ã ``æå°æ¿èªæ°`` ãã­ããã£ãç¾å¨ã¯ 1 ã«è¨­å®ããã¦ããã¨ãããã¨ã«ãªãã¾ãã ãã®ã±ã¼ã¹ã§ã¯ãä¸¡æ¹ã®é£ç½²èãå¿è¦ã¨ããããã« **2-of-2** ãã«ãã·ã°ã¸å¤æ´ãã¾ãããããéæããããã« **minApproval** ã 1 åä½ã ãå¢å ãã¾ãã å¤æ´ããã¢ã«ã¦ã³ãã®é£ç½²è (Alice ã¾ãã¯ Bob) ã¢ã«ã¦ã³ãã«ã­ã°ã¤ã³ãã¾ãã æ¹æ³ #01: ãã¹ã¯ãããã¦ã©ã¬ãããä½¿ç¨ãã æ¹æ³ #02: SDK ãä½¿ç¨ãã ãã«ãã·ã°ã¢ã«ã¦ã³ãã®æå°æ¿èªã®å¤æ´ æ¿èªãããã¨ããã«ãã·ã°ã® ``æå°æ¿èªæ°`` ã¯ 2 ã¨ãªã **2-of-2** ãã«ãã·ã°ã«ãªãã¾ãã ã¢ã°ãªã²ã¼ããã©ã³ã¶ã¯ã·ã§ã³ãç¢ºèªãããã¨ "**Multisig**" ã¡ãã¥ã¼ã§æ°ãããã­ããã£ãç¢ºèªã§ãã¾ãã é£ç½²ã¢ã«ã¦ã³ãã®ãã¡ã®ä¸ã¤ã®ãä¾ãã° Alice ã ``minApprovalDelta`` ãå¢å ãããããã« :ref:`multisigaccountmodificationtransaction` ãã¢ãã¦ã³ã¹ãã¾ãã æ°ãããã¡ã¤ã«ãéãã¾ããããã¦ã Alice ã®ã¢ã«ã¦ã³ãã®å¬ééµã¨ãã«ãã·ã°ã¢ã«ã¦ã³ãã®ç§å¯éµãæ°ããå¤æ°ã¸æ ¼ç´ãã¾ãã åææ¡ä»¶ ä¸é¨ã®ãã£ã¼ã«ãã®ãã­ãããã¦ã³ã¡ãã¥ã¼ããå¤æ´ãããã«ãã·ã°ã¦ã©ã¬ãããé¸æãã¾ããããã«ãã "**Operation Type**" ã "**Modifying account multisig properties**" ã«å¤æããã¾ãã æ°ãã "**æå°æ¿èª**" æ°ãé¸æãã¾ããä»åã¯ "**2**" ã«å¤æ´ãã¾ãã"**éä¿¡**" ãã¯ãªãã¯ãã¾ãããããã¢ããã®æå ±ãç¢ºèªãã¾ããã¦ã©ã¬ãããã¹ã¯ã¼ããå¥åãã¦ "**ç¢ºèª**" ãã¯ãªãã¯ãã¾ãã ãã®ã¬ã¤ãã§ã¯ããã«ãã·ã°ãã©ã³ã¶ã¯ã·ã§ã³ãå®è¡ããããã«å¿è¦ãªç½²åã®æå°æ°ãå¢æ¸ããæ¹æ³ã«ã¤ãã¦èª¬æãã¾ãã ã¦ã¼ã¹ã±ã¼ã¹ **MultisigAccountModificationTransaction** ã **AggregateTransaction** ã§ååãããã«ãã·ã°ã®å¬ééµãç½²åèã¨ãã¦æ·»ä»ãã¾ãã 