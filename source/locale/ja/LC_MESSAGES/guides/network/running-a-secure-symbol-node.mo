Þ    M                    ì     í  i   ÿ     i  ·        ¼  y   =  V   ·  É     f   Ø     ?	  Z   H	  G   £	  L   ë	  H   8
  p   
  =  ò
  v   0     §     ¶     Ô  9   ï  !   )     K  	   a  Y   k     Å     Ø     æ     û       e   !                     4   ¶  3   ë  0     5   P       )     J   ¿  E   
  b   P  a   ³          )     >     [     b     j     z               ¥    ´  L  ½    
  Ý     Ù   y     S  L   q  u   ¾  l   4  h   ¡  +   
  $   6  Â   [          +  a   ;  b     á      U   â  w   8  ¯   °  Ä  `  
   %!  ¬   0!  ß   Ý!    ½"  u   À#     6$  w   Ê$    B%     T&     â&  `   ð&  e   Q'  d   ·'  j   (     (    )  £   ¯*     S+  .   o+  &   +  L   Å+  ?   ,     R,     e,  r   l,     ß,     ò,     -     -     =-     D-  W  Þ-  	   6/     @/  ´   Ô/  E   0  D   Ï0  A   1  3   V1     1  l   ¦1  e   2  j   y2     ä2     q3  $   þ3  !   #4  6   E4     |4     4     4  '   »4     ã4     ù4     5  <  5  ¤  \6  #  8  3  %:  ,  Y;     <  W    <     ø<     }=  R   >  6   _>  6   >  6  Í>     @     @  ¬   .@  ¬   Û@  &  A  h   ¯B     C    ³C   **Configuration** **Copy** the whole ``target`` directory to a pen drive (or other non-networked support) to be used later. **Create a** :ref:`custom preset file <symbol-bootstrap-presets>` for Symbol Bootstrap and name it ``custom.yml``. It must include, at least, these lines: **Create the main account profile**. This is the account that will receive all harvesting fees and whose :ref:`importance score <importance-calculation>` will be used when harvesting. **Disconnect the Configuration machine from the Internet** since private keys will be generated on this machine from this point. **Go to the directory** containing the ``target`` directory copied from the Configuration machine and **start the node**: **Install Symbol Bootstrap** as instructed in the :doc:`using-symbol-bootstrap` guide. **Install Symbol Bootstrap** as instructed in the :doc:`using-symbol-bootstrap` guide. Make sure you read also the **Configuration** section of that guide to get acquainted with presets and assemblies. **Install Symbol CLI** as instructed in the :doc:`symbol-cli <../../cli>` guide. You just need to run: **Node** **Run Symbol Bootstrap a first time**, so that it can download the required Docker images: **Run Symbol Bootstrap again**, this time with all required parameters: **Take note of the main account's private key and keep it in a safe place**. **The main account's private key is not present in any of these files**. **The purpose of this guide is making sure that this account's private key is never used on an online machine**. A node can also be setup in such a way that all harvesting rewards go to an **external account** without requiring this account's private key. This is known as a **non-custodial setup** and must be configured **once the node is up and running**, so a pointer to the appropriate guide is given at the end of this page. All transactions have a deadline, meaning that they must be announced (and confirmed) **before the deadline expires**. Announce links Announce the Remote key link: Announce the VRF key link: Announce the Voting key link (if yours is a voting node): Announces the setup transactions. Configuration machine Configure Copy ``payloads.txt`` to the pen drive where you previously copied the ``target`` folder. Copy configuration Copy payloads Create configuration Creates configuration files. Function If all key link transactions were confirmed the node is now configured and you can finally launch it. It is worth noting that Symbol Bootstrap enables :ref:`remote-harvesting` by default, meaning that the **main private key is never available in a plain text file** in the client. Only the remote key is, which acts as a proxy between the node and its main account. Machine No other parameters are required, the configuration is already present in the ``target`` directory and Symbol Bootstrap will use it. Now that Symbol Bootstrap has already used it in the ``config`` stage, there is no need for such a sensitive key to be lying around in a plain text file. Obtain the :ref:`accountkeylinktransaction` payload. Obtain the :ref:`votingkeylinktransaction` payload. Obtain the :ref:`vrfkeylinktransaction` payload. On the **Configuration machine**, while still online: Online machine Online to install software, then offline. Open ``custom.yml`` and **remove the line** containing ``mainPrivateKey``. Paste the first long text line from ``payloads.txt`` and press Enter: Paste the second long text line from ``payloads.txt`` and wait for the transaction to be accepted. Paste the third long text line from ``payloads.txt`` and wait for the transaction to be accepted. Permanently online. Prepare transactions Prepares setup transactions. Preset Profile Remote key link Running a secure node Runs the node. Setup Start the node Still in the offline Configuration machine, you are now going to **prepare a series of link transactions manually**. These transactions will be created by ``symbol-cli``, signed by your main account, and will be moved to an online machine to be announced later on. The **summary** of it is that the ``symbol-bootstrap start`` command is split into a ``config`` phase run offline, which generates a configuration folder, and the rest of the ``start`` command is then run on the destination online machine that will host the node. **The main account's private key never leaves the offline machine**. The :doc:`running-a-symbol-node` guide explains how to easily **create a node using Symbol Bootstrap**. In that guide, the setup process is conducted on the same machine that will host the node, meaning that private keys are generated on a machine connected to the Internet. If you need a **hardened level of security** you can follow this guide instead, at the cost of a more involved setup process. The commands below assume you want to create a **new** main account and use the ``profile create`` command. If you **already have an account** that you would like to use as main use the ``profile import`` command instead. The following commands all use ``--max-fee 1000000`` which means that **1 XYM** will be paid for each transaction. Feel free to use a different number after reading the :doc:`fees documentation <../../concepts/fees>`. The most common problems are: The node should start and a lot of debug output should appear on the screen. The output of this first run is irrelevant, that's why ``--noPassword`` is used and the ``target`` folder is removed. This generates a ``target`` directory containing an ``addresses.yml`` file and multiple configuration files. This is a known limitation which is `being tracked <https://github.com/symbol/symbol-cli/issues/373>`__. This key is only required for voting nodes. This key is required for harvesting. This step will create a ``symbol-cli`` profile to hold the main account and sign transactions using its private key. The machine is offline now, so you need to provide some network-related data. VRF key link Voting key link When prompted, enter a password to secure your profile and select the ``PrivateKey`` import type: When prompted, enter a password to secure your profile, and select the ``PrivateKey`` import type: You can read more about these properties in the `security mode section <https://github.com/symbol/symbol-bootstrap/blob/main/docs/presetGuides.md#user-content-private-key-security-mode>`__ in Symbol Bootstrap's documentation. You will be asked for the **password** to use to encrypt the **configuration files**. Your node should now be **up and running** and its main private key has never left the configuration (offline) machine. ``symbol-cli`` is now ready to be used later on. All transactions will be signed by your main account so make sure it has some funds to pay for the :doc:`../../concepts/fees`. Project-Id-Version: symbol-docs 0.22.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-11-22 12:01+0000
PO-Revision-Date: 2021-04-08 13:35+0000
Last-Translator: Yoshiyuki Ieyama <yukku0423+github@gmail.com>, 2021
Language: ja
Language-Team: Japanese (https://www.transifex.com/nemtech/teams/95744/ja/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **è¨­å®** å¾ã§ä½¿ç¨ããã®ã§ ``target`` ãã£ã¬ã¯ããªå¨ä½ããã³ãã©ã¤ã (ã¾ãã¯ãããã¯ã¼ã¯ã«ç¹ãã£ã¦ããªãåªä½) ã« **ã³ãã¼** ãã¾ãã Symbol Bootstrap ç¨ã« ``custom.yml`` ã¨å½åãã¦ :ref:`ã«ã¹ã¿ã ããªã»ãããã¡ã¤ã« <symbol-bootstrap-presets>` ã **ä½æ** ãã¾ããããã«ã¯æä½ã§ãæ¬¡ã®è¡ãå«ããå¿è¦ãããã¾ã: **ã¡ã¤ã³ã¢ã«ã¦ã³ãã®ãã­ãã¡ã¤ã«ãä½æ** ããã¯ãã¹ã¦ã®ãã¼ãã¹ãã£ã³ã°ææ°æãåãåãããã¼ãã¹ãæã« :ref:`ã¤ã³ãã¼ã¿ã³ã¹ã¹ã³ã¢ <importance-calculation>` ãä½¿ç¨ãããã¢ã«ã¦ã³ãã§ãã ãã®ãã·ã³ã§ç§å¯éµãçæãããã **è¨­å®ãã·ã³ãã¤ã³ã¿ã¼ãããããåæ­** ãã¾ãã **ãã£ã¬ã¯ããªã«ç§»å** æ§æãã·ã³ããã³ãã¼ãã ``target`` ãã£ã¬ã¯ããªãå«ãã¦ã **ãã¼ããéå§** ãã¾ã: :doc:`using-symbol-bootstrap` ã¬ã¤ãã§ç¤ºãããããã« **Symbol Bootstrap ãã¤ã³ã¹ãã¼ã«** ãã¾ãã :doc:`using-symbol-bootstrap` ã¬ã¤ãã«ç¤ºãããããã« **Symbol Bootstrap ã®ã¤ã³ã¹ãã¼ã«**  ããã¾ããããªã»ããã¨ã¢ã»ã³ããªã«ã¤ãã¦çè§£ããããã«ããã®ã¬ã¤ãã® **æ§æ** ã»ã¯ã·ã§ã³ãå¿ãç¢ºèªãã¦ãã ããã :doc:`symbol-cli <../../cli>` ã¬ã¤ãã§ç¤ºãããããã« **Symbol CLI ãã¤ã³ã¹ãã¼ã«** ãã¦ãæ¬¡ã®ããã«å®è¡ãã¾ã: **ãã¼ã** **ååã® Symbol Bootstrap ã®å®è¡** ã§ã¯ã¤ã¡ã¼ã¸ã®ãã¦ã³ã­ã¼ããå¿è¦ã§ã: **Symbol Bootstrap ãååº¦å®è¡** ä»åã¯å¿è¦ãªãã¹ã¦ã®ãã©ã¡ã¼ã¿ãä½¿ç¨ãã¾ã: **ã¡ã¤ã³ã¢ã«ã¦ã³ãã®ç§å¯éµãã¡ã¢ãã¦ãå®å¨ãªå ´æã«ä¿ç®¡ãã¦ãã ãã** **ã¡ã¤ã³ã¢ã«ã¦ã³ãã®ç§å¯éµã¯ããããã®ãã¡ã¤ã«ã®ãããã«ãå­å¨ãã¾ãã** **ãã®ã¬ã¤ãã®ç®çã¯ãã¢ã«ã¦ã³ãã®ç§å¯éµããªã³ã©ã¤ã³ãã·ã³ä¸ã§ä½¿ç¨ãããªãããã«ãããã¨ã§ã** ãã¼ãã¯ãã¹ã¦ã®ãã¼ãã¹ãå ±é¬ãããã®ã¢ã«ã¦ã³ãã®ç§å¯éµãå¿è¦ã¨ããã« **å¤é¨ã¢ã«ã¦ã³ã** ã«éãããããã«è¨­å®ãããã¨ãã§ãã¾ããããã¯ **éã«ã¹ããã£ã¢ã«ã»ããã¢ãã** ã¨å¼ã°ãã **ãã¼ããç¨¼åãã¦ãã** è¨­å®ããå¿è¦ãããããããã®ãã¼ã¸ã®æå¾ã«é©åãªã¬ã¤ãã¸ã®æ¡åãããã¾ãã ãã¹ã¦ã®ãã©ã³ã¶ã¯ã·ã§ã³ã«ã¯æéãããããã **æéãè¿ããåã«** ã¢ãã¦ã³ã¹ (ããã¦æ¿èª) ãããå¿è¦ãããã¾ãã ãªã³ã¯ãã¢ãã¦ã³ã¹ ãªã¢ã¼ãã­ã¼ãªã³ã¯ã®ã¢ãã¦ã³ã¹: VRF ã­ã¼ãªã³ã¯ã®ã¢ãã¦ã³ã¹: æç¥¨ã­ã¼ãªã³ã¯ãã¢ãã¦ã³ã¹ãã¾ã (æç¥¨ãã¼ãã®å ´å): ã»ããã¢ãããã©ã³ã¶ã¯ã·ã§ã³ã®ã¢ãã¦ã³ã¹ã ãã·ã³ã®è¨­å® è¨­å® ä»¥åã« ``target`` ãã©ã«ããã³ãã¼ãããã³ãã©ã¤ãã« ``payloads.txt`` ãã³ãã¼ãã¾ãã è¨­å®ãã³ãã¼ ãã¤ã­ã¼ãã®ã³ãã¼ è¨­å®ã®ä½æ è¨­å®ãã¡ã¤ã«ã®ä½æã æ©è½ ãã¹ã¦ã®ã­ã¼ãªã³ã¯ãã©ã³ã¶ã¯ã·ã§ã³ãæ¿èªããããããã¼ããè¨­å®ãããæçµçã«ã¯èµ·åãããã¨ãã§ãã¾ãã Symbol Bootstrap ã¯ããã©ã«ãã§ :ref:`remote-harvesting` ãæå¹ã«ãã¾ããã¯ã©ã¤ã¢ã³ãä¸ã§ **å¹³æãã­ã¹ããã¡ã¤ã«åã®ã¡ã¤ã³ã®ç§å¯éµãä½¿ç¨ãããã¨ã¯ãªã** ã¨ãããã¨ã§ãããã¼ãã¨ãã®ã¡ã¤ã³ã¢ã«ã¦ã³ãéã®ãã­ã­ã·ã¨ãã¦æ©è½ãããªã¢ã¼ãã­ã¼ã®ã¿ã§ãã ãã·ã³ ä»ã®ãã©ã¡ã¼ã¿ã¯å¿è¦ãªãããã§ã«è¨­å®ã¯ ``target`` ãã£ã¬ã¯ããªã«ããã Symbol Bootstrap ããããä½¿ç¨ãã¾ãã ãã§ã« Symbol Bootstrap ã¯ ``config`` ã¹ãã¼ã¸ã§ä½¿ç¨ããã®ã§ããã®ãããªæ©å¯ã­ã¼ããã¬ã¼ã³ãã­ã¹ããã¡ã¤ã«ã«ç½®ãå¿è¦ã¯ããã¾ããã :ref:`accountkeylinktransaction` ãã¤ã­ã¼ããåå¾ãã¾ãã :ref:`votingkeylinktransaction` ãã¤ã­ã¼ããåå¾ãã¾ãã :ref:`vrfkeylinktransaction` ãã¤ã­ã¼ããåå¾ãã¾ãã **ãã·ã³ã®è¨­å®** ä¸­ã¯ãªãã©ã¤ã³ã§ã: ãã·ã³ã®ãªã³ã©ã¤ã³ ã½ããã¦ã§ã¢ããªã³ã©ã¤ã³ã§ã¤ã³ã¹ãã¼ã«ãããããã®å¾ãªãã©ã¤ã³ã«ãã¾ãã ``custom.yml`` ãéãã¦ ``mainPrivateKey`` ãå«ã¾ãã **è¡ãåé¤ãã¦** ãã ããã ``payloads.txt`` ããæåã®é·ããã­ã¹ãè¡ãè²¼ãä»ãã¦ã Enter ã­ã¼ãæ¼ä¸ãã¾ã: ``payloads.txt`` ãã 2 ã¤ç®ã®é·ããã­ã¹ãè¡ãè²¼ãä»ãã¦ããã©ã³ã¶ã¯ã·ã§ã³ãæ¿èªãããã®ãå¾ã¡ã¾ãã ``payloads.txt`` ãã 3 ã¤ç®ã®é·ããã­ã¹ãè¡ãè²¼ãä»ãã¦ããã©ã³ã¶ã¯ã·ã§ã³ãæ¿èªãããã®ãå¾ã¡ã¾ãã æä¹çã«ãªã³ã©ã¤ã³ã§ãã ãã©ã³ã¶ã¯ã·ã§ã³ã®æºå ã»ããã¢ãããã©ã³ã¶ã¯ã·ã§ã³ã®æºåã ããªã»ãã ãã­ãã¡ã¤ã« ãªã¢ã¼ãã­ã¼ãªã³ã¯ ã»ã­ã¥ã¢ãªãã¼ãã®ç«ã¡ä¸ã ãã¼ãã®èµ·åã ã»ããã¢ãã ãã¼ãã®éå§ ãªãã©ã¤ã³ã®æ§æãã·ã³ã§ **ä¸é£ã®ãªã³ã¯ãã©ã³ã¶ã¯ã·ã§ã³ãæåã§æºå** ãã¾ãããããã®ãã©ã³ã¶ã¯ã·ã§ã³ã¯ ``symbol-cli`` ã«ãã£ã¦ä½æãããã¡ã¤ã³ã¢ã«ã¦ã³ãã§ç½²åããå¾ã«ã¢ãã¦ã³ã¹ããããã«ãªã³ã©ã¤ã³ãã·ã³ã¸ç§»åãã¾ãã ãã® **è¦ç´** ã¯ ``symbol-bootstrap start`` ã³ãã³ãã ``config`` ãã§ã¼ãºã«åå²ãã¦ããªãã©ã¤ã³ã§å®è¡ããè¨­å®ãã©ã«ããçæãããããä»¥å¤ã® ``start`` ã³ãã³ãã¯ãã¼ãã®ãã¹ãåã§ããããªã³ã©ã¤ã³ã®ãã·ã³ã§å®è¡ããã¾ãã **ã¡ã¤ã³ã¢ã«ã¦ã³ãã®ç§å¯éµããªãã©ã¤ã³ãã·ã³ä»¥å¤ã«æ´é²ããããã¨ã¯ããã¾ãã** ã :doc:`running-a-symbol-node` ã¬ã¤ãã§ã¯ **Symbol Bootstrap ãä½¿ç¨ãã¦ãã¼ããç°¡åã«ä½æ** ããæ¹æ³ã«ã¤ãã¦èª¬æãã¦ãã¾ãããã®ã¬ã¤ãã§ã¯ãã»ããã¢ãããã­ã»ã¹ã¯ãã¼ãããã¹ããããã·ã³ä¸ã§å®è¡ããã¾ããã¤ã¾ããç§å¯éµã¯ã¤ã³ã¿ã¼ãããã«æ¥ç¶ããããã·ã³ã§çæããã¾ãã **ããå¼·åºãªã¬ãã«ã®ã»ã­ã¥ãªãã£** ãå¿è¦ãªå ´åã¯ããã®ã¬ã¤ãã«å¾ãã¾ãããããè¤éãªã»ããã¢ããæé ãè¦æ±ããã¾ãã ä»¥ä¸ã®ã³ãã³ãã¯ã **æ°ãã** ã¡ã¤ã³ã¢ã«ã¦ã³ããä½æãããã¨ãåæã« ``profile create`` ã³ãã³ããä½¿ç¨ãã¾ããã¡ã¤ã³ã¨ãã¦ä½¿ç¨ããã **ã¢ã«ã¦ã³ã** ãæ¢ã«ããå ´åã¯ãä»£ããã« ``profile import`` ã³ãã³ããä½¿ç¨ãã¦ãã ããã æ¬¡ã®ã³ãã³ãã§ã¯å¨ã¦ãåãã©ã³ã¶ã¯ã·ã§ã³ã« **1 XYM** ãæ¯æããã¨ãæå³ãã ``--max-fee 1000000`` ãä½¿ç¨ãã¾ãã :doc:`fææ°æãã­ã¥ã¡ã³ã <../../concepts/fees>` ãçè§£ãã¦ãããªããèªç±ã«ç°ãªãæ°å­ãä½¿ç¨ãã¦ã¿ã¦ãã ããã ããçºçããåé¡: ãã¼ããèµ·åããã¨å¤ãã®ãããã°åºåãç»é¢ã«è¡¨ç¤ºããã¾ãã ãã®æåã®å®è¡ã®åºåã¯ä½¿ç¨ããªããã ``--noPassword`` ãä½¿ç¨ãã ``target`` ãã©ã«ãã¯åé¤ãã¾ãã ããã«ããã ``addresses.yml`` ãã¡ã¤ã«ã¨è¤æ°ã®æ§æãã¡ã¤ã«ãå«ã ``target`` ãã£ã¬ã¯ããªãçæããã¾ãã `è¿½è·¡ä¸­ <https://github.com/symbol/symbol-cli/issues/373>`__ ã®æ¢ç¥ã®å¶é ãã®ã­ã¼ã¯æç¥¨ãã¼ãã«ã®ã¿å¿è¦ã§ãã ãã®éµã¯ãã¼ãã¹ãã£ã³ã°ã«å¿è¦ã§ãã ãã®ã¹ãããã§ã¯ãã¡ã¤ã³ã¢ã«ã¦ã³ããä¿æãããã®ç§å¯éµãä½¿ç¨ãã¦ãã©ã³ã¶ã¯ã·ã§ã³ã«ç½²åãã ``symbol-cli`` ãã­ãã¡ã¤ã«ãä½æãã¾ãããã·ã³ã¯ç¾å¨ãªãã©ã¤ã³ãªã®ã§ããããã¯ã¼ã¯é¢é£ã®ãã¼ã¿ãæä¾ããå¿è¦ãããã¾ãã VRF ã­ã¼ãªã³ã¯ æç¥¨ã­ã¼ãªã³ã¯ ãã­ã³ãããè¡¨ç¤ºããããããã­ãã¡ã¤ã«ãä¿è­·ããããã®ãã¹ã¯ã¼ããå¥åãã¦ ``PrivateKey`` ã¤ã³ãã¼ãã¿ã¤ããé¸æãã¾ãã ãã­ã³ãããè¡¨ç¤ºããããããã­ãã¡ã¤ã«ãä¿è­·ããããã®ãã¹ã¯ã¼ããå¥åãã¦ ``PrivateKey`` ã¤ã³ãã¼ãã¿ã¤ããé¸æãã¾ãã ãããã®ãã­ããã£ã®è©³ç´°ã«ã¤ãã¦ã¯ãSymbol Bootstrap ã®ãã­ã¥ã¡ã³ãã® `ã»ã­ã¥ãªãã£ã¼ã¢ã¼ãã®ã»ã¯ã·ã§ã³ <https://github.com/symbol/symbol-bootstrap/blob/main/docs/presetGuides.md#user-content-private-key-security-mode>`__ ãåç§ãã¦ãã ããã **è¨­å®ãã¡ã¤ã«** ã®æå·åã«ä½¿ç¨ãã **ãã¹ã¯ã¼ã** ã®å¥åãæ±ãããã¾ãã ããã§ãã¼ãã¯ **ç¨¼åä¸­** ã«ãªãããã®ã¡ã¤ã³ç§å¯éµãè¨­å®ãã (ãªãã©ã¤ã³) ãã·ã³ãé¢ãããã¨ã¯ããã¾ããã ``symbol-cli`` ãå¾ã«ä½¿ç¨ã§ããããã«ãªãã¾ããããã¹ã¦ã®ãã©ã³ã¶ã¯ã·ã§ã³ã¯ã¡ã¤ã³ã¢ã«ã¦ã³ããç½²åããããã :doc:`../../concepts/fees` ã®æ¯æãã«ããããã®è³ç£ããããã¨ãç¢ºèªãã¦ãã ããã 