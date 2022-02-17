Ū          ü               Ü  _   Ũ  o   =     ­  *  -  G   X  Í      ¸   n  O   '  #   w  )        Å    Ü     ņ  E   ö  Ļ   <  Û   ã  ũ   ŋ	     Ŋ
     É
     Ú
  Ģ   į
          &    G  Ā   K  A       N  Ä  ^     #     ž  ŋ   D      U       Ũ  ô   ú  f   ī  %   V  K   |     Č    Ū  	   g  d   q  é   Ö  "  Ā  ?  ã     #     3     L  û   h     d    ų  3  !    Á"  Ŗ  Æ#  !   j%   **Maximize-fees**: Most common in public networks. Include first transactions with higher fees. **Minimize-fees**: Philanthropic nodes. Include first the transactions that other nodes do not want to include. **Prefer-oldest**: Preferred for networks with high transaction throughput requirements. Include first the oldest transactions. A node owner :ref:`can configure the fee multiplier <node-properties>` to all positive values, including zero. The ``fee_multiplier`` is stored in the :ref:`block header <block-header>` when the node harvests a new block, determining which was the effective fee paid for every transaction included. A quick way of retrieving this information is pointing your browser to: Announcing :doc:`transactions <transaction>` has an associated cost. This cost is necessary to provide an incentive for the :doc:`harvesters <harvesting>` who secure the network and run the infrastructure. Before announcing the transaction, the sender must specify during the transaction definition a ``max_fee``, indicating the maximum fee the account allows to spend for this transaction. By default, fees are paid in the underlying currency of the |codename| network. Continue: :doc:`Receipt <receipt>`. Default network currency per network type Dynamic fee multiplier Each block added to the blockchain has a different fee multiplier, set by the node that harvested it. The network also defines the **dynamic fee multiplier** as the **median** of the last :ref:`maxDifficultyBlocks <config-network-properties>` harvested blocks (60 by default). Fees For example, the sender could set the transaction max_fee as follows: If a block did not include any transaction, a value of :ref:`defaultDynamicFeeMultiplier <config-network-properties>` (100 by default) is used to avoid 0 multipliers. If the ``effective_fee`` is smaller or equal to the ``max_fee``, a harvester could opt to include the transaction in the block. The harvesting nodes :ref:`can set their transaction inclusion strategy <node-properties>`: It is not guaranteed that the transaction will get confirmed if the multiplier used is too low. To have better chances, the sender of the transaction could opt to use any value between ``medianNetworkFeeMultiplier`` and ``highestFeeMultiplier`` instead. Mosaic name Network currency Network type Private chains :ref:`can edit the network configuration <config-network-properties>` to eliminate fees or use another :doc:`mosaic <mosaic>` that better suits their needs. The current value of the dynamic fee multiplier can be found in the ``medianFeeMultiplier`` property returned by the :doc:`REST Gateway <../api>`: The fee associated with a transaction primarily depends on the size (in bytes) of the transaction. The effective fee deducted from the account sending the transaction is calculated as the product of the size of the transaction and a fee multiplier set by the node that harvests the block. This value approximates the most common fee multiplier that nodes and transaction creators have agreed upon in the most recent blocks, and is used in the calculation of :ref:`namespace <namespace-rental-fee>` and :ref:`mosaic <mosaic-rental-fee>` rental fees. To determine an :doc:`aggregate bonded transaction <aggregate-transaction>` size, it is required to know beforehand the number of participant accounts that will need to cosign the transaction. To ensure that the transaction will get included without setting a ``max_fee`` unnecessarily high, the sender of the transaction can ask the :doc:`REST Gateway <../api>` for the median, average, highest, or lowest multiplier of the network over the last 60 blocks (:ref:`maxDifficultyBlocks <config-network-properties>`). Transaction fee Project-Id-Version: symbol-docs 0.22.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-10-30 22:34+0000
PO-Revision-Date: 2019-11-13 15:09+0000
Last-Translator: Yoshiyuki Ieyama <yukku0423+github@gmail.com>, 2021
Language: ja
Language-Team: Japanese (https://www.transifex.com/nemtech/teams/95744/ja/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **Maximize-fees**: ãããĒãã¯ãããã¯ãŧã¯ã§æãä¸čŦįã§ããããéĢãææ°æãŽæåãŽããŠãŗãļã¯ãˇã§ãŗãåĢãŋãžãã **Minimize-fees**: æåäēæĨ­ãĒããŧããäģãŽããŧããåĢããããĒãæåãŽããŠãŗãļã¯ãˇã§ãŗãåĢããžãã **Prefer-oldest**īŧéĢãããŠãŗãļã¯ãˇã§ãŗãšãĢãŧããããčĻæąããããããã¯ãŧã¯ãĢéŠããĻããžããæãå¤ãããŠãŗãļã¯ãˇã§ãŗãæåãĢåĢããžãã ããŧãææčã¯ :ref:`ææ°æäšæ° <node-properties>` ã 0 ãåĢãããšãĻãŽæ­ŖãŽå¤ãĢč¨­åŽã§ããžããããŧããæ°ãããã­ãã¯ãããŧããšãããã¨ã ``fee_multiplier`` ã¯ :ref:`ãã­ãã¯ããããŧ <block-header>` ãĢæ ŧį´ãããåĢãžããããŠãŗãļã¯ãˇã§ãŗããšãĻãĢå¯žããĻæ¯æãããæåšãĒææ°æãæąēåŽããžãã ããŽæå ąãååžããį°ĄåãĒæšæŗã¯ãæŦĄãããŠãĻãļã§įĸēčĒããžã: :doc:`ããŠãŗãļã¯ãˇã§ãŗ <transaction>` ãŽãĸããĻãŗãšãĢã¯éĸéŖãŗãšãããããžãããŗãšãã¯ãããã¯ãŧã¯ãåŽå¨ãĢäŋãĄãã¤ãŗããŠãéį¨ããĻãã :doc:`ããŧããšãŋ <harvesting>` ã¸ãŽã¤ãŗãģãŗããŖããŽæäžã¨ããĻåŋé ã§ãã ããŠãŗãļã¯ãˇã§ãŗãéäŋĄããåãĢãããŠãŗãļã¯ãˇã§ãŗåŽįžŠãŽä¸­ã§ ``max_fee`` ãæåŽããåŋčĻããããããã¯ãĸãĢãĻãŗããããŽããŠãŗãļã¯ãˇã§ãŗãĢč˛ģãããæå¤§ææ°æãį¤ēããĻããžãã ãããŠãĢãã§ã¯ãææ°æã¯ |codename| ãããã¯ãŧã¯åēčģ¸éč˛¨ã§æ¯æãããžãã æŦĄé : :doc:`ãŦãˇãŧã <receipt>` ãããã¯ãŧã¯ãŋã¤ããã¨ãŽãããŠãĢããããã¯ãŧã¯éč˛¨ åįææ°æäšæ° ãã­ãã¯ãã§ãŧãŗãĢčŋŊå ãããåãã­ãã¯ãĢã¯ããããåéããããŧããĢããŖãĻč¨­åŽãããį°ãĒãææ°æäšæ°ããããžãããžãããããã¯ãŧã¯ã¯ **åįææ°æäšæ°** ããæįĩãŽ :ref:`maxDifficultyBlocks <config-network-properties>` ããŧããšããã­ãã¯ãŽ **ä¸­å¤Žå¤** (ãããŠãĢãã§ã¯ 60) ã¨ããĻåŽįžŠããžãã ææ°æ ãã¨ãã°ãéäŋĄčã¯ããŠãŗãļã¯ãˇã§ãŗãŽ max_fee ãæŦĄãŽãããĢč¨­åŽã§ããžã: ãã­ãã¯ãĢããŠãŗãļã¯ãˇã§ãŗãåĢãã§ããĒãå ´åãäšæ°ã 0 ãĢãĒããŽãéŋãããããĢ :ref:`defaultDynamicFeeMultiplier <config-network-properties>` (ãããŠãĢãã§ã¯ 100) ãŽå¤ãäŊŋį¨ããžãã ``effective_fee`` ã ``max_fee`` äģĨä¸ãŽå ´åãããŧããšãŋã¯ããŠãŗãļã¯ãˇã§ãŗããã­ãã¯ãĢåĢããé¸æãã§ããžããããŧããšããŖãŗã°ããŧãã¯ããããŽ :ref:`ããŠãŗãļã¯ãˇã§ãŗã¤ãŗã¯ãĢãŧãæĻįĨ <node-properties>` ãč¨­åŽã§ããžã: č¨­åŽããäšæ°ãå°ãĒãããå ´åãããŠãŗãļã¯ãˇã§ãŗãæŋčĒããããã¨ãäŋč¨ŧã§ããžãããæŋčĒãããå¯čŊæ§ãéĢãããããĢã¯ãããŠãŗãļã¯ãˇã§ãŗéäŋĄčã ``medianNetworkFeeMultiplier`` ã¨ ``highestFeeMultiplier`` ãŽéã§äģģæãŽå¤ãäŊŋį¨ããĻãã ããã ãĸãļã¤ã¯å ãããã¯ãŧã¯éč˛¨ ãããã¯ãŧã¯ãŋã¤ã ããŠã¤ããŧããã§ãŧãŗã§ã¯ãããŧãēãĢåããããããĢææ°æãįĄãããããäģãŽ :doc:`ãĸãļã¤ã¯ <mosaic>` ãäŊŋį¨ãããããĢ  :ref:`ãããã¯ãŧã¯ãŽč¨­åŽãįˇ¨é <config-network-properties>` ã§ããžãã įžå¨ãŽåįææ°æäšæ°å¤ã¯ :doc:`REST ã˛ãŧããĻã§ã¤ <../api>` ãčŋå´ãã ``medianFeeMultiplier`` ãã­ãããŖãĢãããžã: ããŠãŗãļã¯ãˇã§ãŗãĢéĸéŖããææ°æã¯ãä¸ģã¨ããĻããŠãŗãļã¯ãˇã§ãŗãŽ (ãã¤ã) ãĩã¤ãēãĢããŖãĻį°ãĒããžããããŠãŗãļã¯ãˇã§ãŗãéäŋĄãããĸãĢãĻãŗãããåˇŽãåŧãããåŽåšææ°æã¯ããŠãŗãļã¯ãˇã§ãŗãŽãĩã¤ãēã¨ãã­ãã¯ãããŧããšãããããŧããĢããŖãĻč¨­åŽãããææ°æäšæ°ãŽįŠã¨ããĻč¨įŽãããžãã ããŽå¤ã¯ãããŧãã¨ããŠãŗãļã¯ãˇã§ãŗäŊæčããææ°ãã­ãã¯ã§åæããæãä¸čŦįãĒææ°æäšæ°ãĢčŋäŧŧããĻ :ref:`ããŧã ãšããŧãš <namespace-rental-fee>` ãããŗ :ref:`ãĸãļã¤ã¯ <mosaic-rental-fee>` ãŽãŦãŗãŋãĢææ°æãŽč¨įŽãĢäŊŋį¨ãããžãã :doc:`ãĸã°ãĒã˛ãŧãããŗãããããŠãŗãļã¯ãˇã§ãŗ <aggregate-transaction>` ãŽãĩã¤ãēãæąēåŽãããĢã¯ãããŠãŗãļã¯ãˇã§ãŗãĢįŊ˛åããåŋčĻãããåå čãĸãĢãĻãŗããŽæ°ãäēåãĢįĨãŖãĻããåŋčĻããããžãã ``max_fee`` ãä¸åŋčĻãĢéĢãč¨­åŽãããĢããŠãŗãļã¯ãˇã§ãŗãįĸēåŽãĢåĢãžãããããĢãããããĢã¯ãããŠãŗãļã¯ãˇã§ãŗéäŋĄčã¯ :doc:`REST ã˛ãŧããĻã§ã¤ <../api>` ãĢį´čŋ 60 ãã­ãã¯  (:ref:`maxDifficultyBlocks <config-network-properties>`) ãŽãããã¯ãŧã¯ãŽäšæ°ãŽä¸­å¤Žå¤ãåšŗåå¤ãæéĢå¤ããžãã¯æäŊå¤ãåãåããããã¨ãã§ããžãã ããŠãŗãļã¯ãˇã§ãŗææ°æ 