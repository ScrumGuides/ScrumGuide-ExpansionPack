---
# title: Scrum Guide Expansion Pack
title: スクラムガイド拡張パック
# description: The Scrum Guide Expansion Pack is a comprehensive companion to the 2020 Scrum Guide, created to help professionals navigate today’s complex product environments. It deepens understanding of core Scrum principles by offering additional guidance on complexity, product thinking, systems of work, and leadership; while remaining true to Scrum’s ethos of empiricism and self-management. It’s not a rewrite, but a strategic amplification to support long-term, value-driven delivery in modern teams.
description: スクラムガイド拡張パックは、2020年版スクラムガイドの包括的な副読本として、現代の複雑なプロダクト環境を歩むプロフェッショナルの手助けとなるべく作成された。複雑性・プロダクト思考・仕事のシステム的捉え方・リーダーシップについて、追加のガイダンスを提供することで、スクラムの核となる原則の理解を深める。同時に、経験主義と自己管理というスクラムの精神に忠実であり続ける。これはスクラムガイドの改訂ではなく、現代のチームが長期的かつ価値駆動型のデリバリーを実現するための戦略的な補足である。
# keywords:
#   - Scrum
#   - modern Scrum
#   - Product Management
#   - empirical product development
#   - Scrum in complex environments
#   - Scrum and AI
keywords:
  - スクラム
  - モダンスクラム
  - プロダクトマネジメント
  - 経験的プロダクト開発
  - 複雑な環境でのスクラム
  - スクラムとAI
author:
  - Ralph Jocham
  - John Coleman
  - Jeff Sutherland
translators:
  - name: 内山遼子
    githubUsername: RyokoUchiyama
    url: https://www.linkedin.com/in/ryoko-uchiyama-0b870aa1/
    role: translator
    weight: 1
  - name: 川⼝恭伸
    githubUsername: kawaguti
    url: https://www.linkedin.com/in/yasunobu-yesno-kawaguchi-b78ab65/
    role: translator
    weight: 2
  - name: 長沢智治
    githubUsername: tomoharunagasawa
    url: https://nagasawa.social/
    role: translator
    weight: 3
  - name: 山本尊人
    githubUsername: Sonjin-Yamamoto
    url: https://www.linkedin.com/in/sonjin/
    role: translator
    weight: 4
  - name: 和⽥圭介
    githubUsername: k8skwada
    url: https://www.linkedin.com/in/wadak8sk/
    role: translator
    weight: 5   
date: 2025-06-11T09:00:00Z
type: guide
lang: ja
mainfont: "Times New Roman"
sansfont: "Arial"
monofont: "Courier New"
sitemap:
  priority: 1.0
aliases:
  - /scrum-guide-expansion-pack/latest/
---

<!-- based on the original [Scrum Guide](https://scrumguides.org/) by Ken Schwaber & Jeff Sutherland (40) -->
オリジナルの[スクラムガイド](https://scrumguides.org/)（Ken Schwaber & Jeff Sutherland著）(40)に基づく
<!-- **_Collected Resources for Scrum Guide Expansion Pack_** -->
**_スクラムガイド拡張パック収録資料_**

<!-- _This document is a collection of independent works. Each section retains its original license or copyright status, as indicated. Please refer to each section for specific usage rights and requirements._ -->
_本書は、独立した著作物を収録したものである。各セクションは記載の通り、オリジナルのライセンスや著作権状況を保持している。特定の使用権限と要件については、各セクションを参照して欲しい。_

<!-- **_Section 1: Scrum Guide Expansion Pack 1 (Adaptation)_** -->
**_セクション1：スクラムガイド拡張パック1（適応版）_**

<!-- _Title: Scrum Guide Expansion Pack Adaptation of: The original Scrum Guide_ -->
_タイトル：スクラムガイド拡張パック：オリジナルのスクラムガイドの適応版_

<!-- _Author: Ralph Jocham, John Coleman, and Jeff Sutherland._ -->
_著者：Ralph Jocham、John Coleman、Jeff Sutherland_

<!-- _Source: [2020 Scrum Guide](https://scrumguides.org/), [Scrum Guide Expansion Pack](https://scrumexpansion.org)_ -->
_出典：[2020年版スクラムガイド](https://scrumguides.org/)、[スクラムガイド拡張パック](https://scrumexpansion.org)_

<!-- _License: Creative Commons Attribution-ShareAlike 4.0 International ([CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/))._ -->
_ライセンス：クリエイティブ・コモンズ 表示-継承 4.0 国際（[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/)）_

<!-- © _2025 Ralph Jocham, John Coleman, and Jeff Sutherland._ -->
© _2025 Ralph Jocham、John Coleman、Jeff Sutherland_

<!-- _Modification Notice: This is an adaptation of the original [2020 Scrum Guide](https://scrumguides.org/). Changes have been made from the original._ -->
_改変通知：これは[2020年版スクラムガイド](https://scrumguides.org/)を今日に適応させるものであり、オリジナルとは異なる内容を含みます。_

<!-- _Disclaimer: No warranties are given. Use at your own risk._ -->
_免責事項：いかなる保証も提供されない。各自の責任で利用して欲しい。_

<!-- _This section is offered under the Attribution-ShareAlike 4.0 International license of Creative Commons._ -->
_このセクションは、クリエイティブ・コモンズの表示-継承4.0国際ライセンスの下で提供されている。_

<!-- _By using this Scrum Guide Expansion Pack, you agree to the terms of the [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) license._ -->
_このスクラムガイド拡張パックを使用することで、[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/)ライセンスの条項に同意したものとみなされる。_

<!-- ## Background {#background} -->
## 背景 {#背景}

<!-- Ken Schwaber and Jeff Sutherland led the development of the Scrum framework. The [2020 Scrum Guide](https://scrumguides.org/) (40) describes the Scrum Essentials. Tobias Mayer's [A Simple Guide to Scrum](https://scrum.academy/guide/) (58) is a shortened, edited version of the official Scrum Guide by Ken Schwaber and Jeff Sutherland. The [Scrum Hexis](https://thecynefin.co/product/hexi-scrumorg/?srsltid=AfmBOorcohLYeVy0qBsQFI6mK_bZtJA_uGC6hPL2BdptiTwNmMwpKTQv%20) (52) elaborate on the 2020 Scrum Guide (40) from a 2025 perspective. For mass adoption, the Scrum Guide (40) needed to be simple. -->
Ken SchwaberとJeff Sutherlandがスクラムフレームワークの開発を主導した。[2020年版スクラムガイド](https://scrumguides.org/)(40)はスクラムの本質を説明している。Tobias Mayerの[A Simple Guide to Scrum](https://scrum.academy/guide/)(58)は、Ken SchwaberとJeff Sutherlandによる公式スクラムガイドの短縮編集版である。[スクラム ヘキシス](https://thecynefin.co/product/hexi-scrumorg/?srsltid=AfmBOorcohLYeVy0qBsQFI6mK_bZtJA_uGC6hPL2BdptiTwNmMwpKTQv%20)(52)は2025年の視点から2020年版スクラムガイド(40)を詳述している。スクラムが広い範囲で採用されるために、スクラムガイド(40)はシンプルである必要があった。

<!-- ## Purpose of the Scrum Guide Expansion Pack {#purpose-of-the-scrum-guide-expansion-pack} -->
## スクラムガイド拡張パックの目的 {#スクラムガイド拡張パックの目的}

<!-- For a more successful adoption, this Expansion Pack offers additional guidance for current times, based on the 2020 Scrum Guide by Ken Schwaber and Jeff Sutherland (40). Ralph Jocham's contribution (89) to the 2020 Scrum Guide provided additional depth in bringing the original ideas of the 2020 Scrum Guide (40) into this expansion pack. -->
スクラムの導入をより成功させるため、この拡張パックは、Ken SchwaberとJeff Sutherlandによる2020年版スクラムガイド(40)を基に、現在の状況に合わせた追加のガイダンスを提供する。Ralph Jochamの2020年版スクラムガイド(40)への貢献(89)により、2020年版スクラムガイド(40)のオリジナルなアイデアをさらに深掘りした内容がこの拡張パックに追加された。

<!-- This Scrum Guide Expansion Pack explains the _what_ and _why_ of each element of Scrum through a future-looking lens. Each element serves a specific purpose and contributes to the overall value and results realized with Scrum. This Expansion Pack will evolve regularly. The reader is expected to read the document sequentially, at least the first time. -->
このスクラムガイド拡張パックは、未来を見通すレンズを通じてスクラムの各要素の _何_ と _なぜ_ を説明する。各要素は特定の目的を担い、スクラムで実現される全体的な価値と結果に貢献する。この拡張パックは継続的に進化していく予定だ。読者には前から順に読んでいくことを期待している。少なくとも一度目はそうしてほしい。

<!-- This document assumes some fluency with Scrum and its related language. It could be helpful to read the 2020 Scrum Guide first before reading this document. References are included for attribution purposes. The appendix and references provide an opportunity for the reader to explore, research and learn to gain a broader and deeper understanding. -->
本書は、スクラムおよび関連用語について、ある程度理解している読者を想定している。この文書を読む前に、2020年版スクラムガイドを読んでおくと役立つだろう。出典明示のため、参考文献を記載している。付録と参考文献は、読者がより広く深い理解を得るために探求し、研究し、学習する機会を提供する。

<!-- Practitioners and stakeholders should adopt Scrum when appropriate, with agency, urgency, courage, transparency, inspection, adaptation, rhythm, and resilience, and continually improve to support goals for the product and the organization. It is hoped that Scrum adoptions will surpass the guidance presented here—across theory, roles, artifacts, events, scaling, and every other facet addressed in this document—and, in doing so, inspire a lasting curiosity to explore, question, and continually improve. -->
実践者とステークホルダーは、以下を満たす場合にスクラムを採用すべきである。すなわち、主体性・緊急性・勇気・透明性・検査・適応・リズム・回復力を持って、プロダクトと組織の目標を支援すべく継続的に改善している場合である。スクラムを適用することで、この文書で提示されたガイダンスを超越することを期待している。すなわち、理論・役割・作成物・イベント・スケーリング・その他のすべての面である。持続的な好奇心を持って、探求・問い・継続的な改善へと繋げてほしい。

<!-- This Expansion Pack is designed to support all aspects of product delivery by a self-managing team (49) driven by stakeholder needs or wants in response to a problem or opportunity. This includes (but is not limited to) product discovery, development, delivery, and value realization. While originally rooted in software product development, Scrum has been widely adopted across various domains, enabling the delivery of value through complex (30-35) work. As its use expands, professionals such as engineers, programmers, researchers, analysts, lawyers, marketers, and scientists increasingly apply Scrum successfully to their fields. -->
この拡張パックは、自己管理チーム(49)によるプロダクトデリバリーのすべての側面を支援するよう設計されている。そうしたチームは、問題や機会に対するステークホルダーのニーズや要望を原動力としている。これにはプロダクト発見・開発・デリバリー・価値実現が含まれる（ただしこれらに限定されない）。もともとソフトウェアプロダクト開発から始まったスクラムは、現在は多様な領域で幅広く採用され、複雑な(30-35)仕事を通じた価値の提供を可能にしている。利用が拡大するにつれ、エンジニア・プログラマー・研究者・アナリスト・弁護士・マーケター・科学者などの専門家が、それぞれの分野でスクラムを効果的に適用する例が増えている。

<!-- Stakeholder value refers to any perceived need that a stakeholder (including but not limited to customers, decision-makers, and users) considers important and that a team delivers. However, stakeholders may not always be aware of what could be valuable to them. Observation or evidence could intentionally or unintentionally surface value and influence priorities. As new information arises, potentially valuable items should be identified, inspected, refined, and adapted. Value remains an assumption until confirmed by evidence, such as observation or measured outcomes. -->
ステークホルダー価値とは、ステークホルダーが重要と考え、チームが提供する、あらゆるニーズである（ステークホルダーには顧客、意思決定者、ユーザーを含むがこれらに限定されない）。ただしステークホルダー自身が、自分たちにとって価値あるものが何であるかを、かならずしも認識しているわけではない。観察やエビデンスを通じて、意図的もしくは意図しないところで価値が顕在化し、それが優先順位に影響を与えることがある。新しい情報が出てきたら、潜在的に価値のあるアイテムを特定し、検査し、リファインし、適応させるべきである。価値とは、観察や測定されたアウトカムなどのエビデンスによって確認されるまでは、あくまで仮説にすぎない。

<!-- ## Scrum in a Nutshell {#scrum-in-a-nutshell} -->
## スクラム早わかり {#スクラム早わかり}

<!-- Scrum is a framework for complex (30-35) Product delivery, where expertise is valuable but more than expertise is needed, and cause and effect are only coherent in retrospect. Scrum addresses the full Product lifecycle, which includes (but is not limited to) creating, replacing, sustaining, adapting, continuously changing, maintaining, and retiring Products or features. Scrum helps individuals, teams, and organizations become and stay flexible and create value by adapting to change. -->
スクラムは、複雑な(30-35)プロダクトデリバリーのためのフレームワークである。専門性の価値を認めつつも、専門性を超えたものが必要であり、原因と結果の関係は、後から振り返ってこそ見えてくるものである。スクラムは、プロダクトライフサイクル全体をカバーする。そこには、プロダクトや機能の作成・置換・維持・適応・継続的変更・保守・廃止が含まれる(ただしこれらに限定されない)。スクラムは、個人・チーム・組織が変化に適応し、柔軟性を保ちながら価値を創造するのを支援する。

<!-- Scrum fosters a setting for understanding and coherently responding to Stakeholder needs. Scrum's iterative and incremental approach reduces risk and fosters continuous improvement. Scrum helps a team to strike a balance between exploring problems, discovering Stakeholder (including but not limited to customer) needs, delivering solutions, proactively managing risk, and validating value. -->
スクラムはステークホルダーのニーズを理解し、一貫して対応するための環境を育む。スクラムのイテレーティブ（反復的）でインクリメンタル（漸進的）なアプローチはリスクを削減し、継続的改善を促進する。スクラムはチームが問題の探求、ステークホルダー（顧客を含むがこれに限定されない）のニーズの発見、ソリューションの提供、積極的なリスク管理、価値の検証のバランスを取ることを支援する。

<!-- 
A risk is any factor that could result in a future adverse consequence.
Since risk exposure remains unpredictable even as time elapses, 
    anticipation is key. 
Risk exposure can include (but is not limited to) 
    market risk, problem-solution fit, Product-market fit, 
    technology, signal detection, responsiveness, compliance, 
    remediation, poor trade-off decisions, etc. 
Scrum supports proactive risk management and opportunity discovery.
-->
リスクとは、今後不利な結果をもたらしうる何らかの要因のことである。
時間が経過してもリスクエクスポージャー（リスクの影響度）は予測不可能であり、
    あらゆる状況を見越した備え（anticipation）が鍵になる。
リスクエクスポージャーには、次のものが含まれる（ただしこれらに限定されない）。
    市場リスク、プロブレム-ソリューションフィット、プロダクト-マーケットフィット、
    技術、シグナル検出、応答性、コンプライアンス、
    修復・再発防止、不適切なトレードオフ判断など。
スクラムは積極的なリスク管理と機会発見を支援する。

<!-- Scrum encourages a reduction in the existing separation between Stakeholders who present problems or opportunities and the people solving them. -->
スクラムは、問題や機会を提示するステークホルダーとそれらを解決する人々の間にある距離を縮めることを奨励する。

<!-- In a nutshell, Scrum is based on an environment where: -->
一言で言うと、スクラムは以下のような環境に基づいている：

<!-- 1. Supporting Stakeholders, hereafter referred to as Supporters, doing what is requested to proactively support and enhance the adoption of Scrum, guided and supported by the Scrum Master. -->
<!-- 2. A Product Owner sets the Product Goal, instrumental in fulfilling Stakeholder value. -->
<!-- 3. The self-managing Scrum Team (49) defines, refines, and turns the selection of work into valuable outcomes. -->
<!-- 4. The Scrum Team and Stakeholders inspect the results during the Sprint and adapt. -->
<!-- 5. Supporters help the Scrum Team to thrive. -->
<!-- 6. _Repeat._ -->
1. サポートステークホルダー（以下、サポーター）は、スクラムマスターの指導と支援のもと、要求されたことを実行し、スクラムの採用を積極的に支援し、促進する。
2. プロダクトオーナーがプロダクトゴールを設定し、ステークホルダー価値の実現に貢献する。
3. 自己管理スクラムチーム(49)が、選択された作業を定義し、リファインメントし、価値あるアウトカムに変える。
4. スクラムチームとステークホルダーがスプリント中に結果を検査し、適応する。
5. サポーターがスクラムチームの成長と発展を支援する。
6. _繰り返し。_

<!-- A release is the process of making a new or updated version of a Product available to Stakeholders (including but not limited to customers, decision-makers, and end users). It marks an inflection point in the development cycle and represents the transition of the Product from development to availability for use and the potential realization of Stakeholder value. -->
リリースとは、プロダクトの新バージョンや更新版をステークホルダーが利用できるようにするプロセスである（ステークホルダーには顧客・意思決定者・エンドユーザーを含むが、これらに限定されない）。これは開発サイクルにおける転換点となる。プロダクトが開発段階から実際に使用可能な状態に移行し、ステークホルダー価値の可能性を具現化する。

<!-- Scrum is intentionally incomplete. Instead of prescribing detailed processes, it provides a framework that guides relationships and purposeful interactions. Various processes, techniques, and methods can complement Scrum, but their application depends on the context and varies across different uses of Scrum. -->
スクラムは意図的に不完全である。詳細なプロセスを規定する代わりに、関係性および意図的な相互作用を導くフレームワークを提供する。様々なプロセス・技術・手法によってスクラムを補完することができる。しかし、そうしたものの適用は文脈に依存し、スクラムの用途ごとに異なるものになる。

<!-- Scrum integrates with existing practices or, in some cases, makes them unnecessary or obsolete. By transparently assessing the effectiveness of the Scrum Team, Supporters, current management, work environment, and techniques, Scrum enables continuous improvement. -->
スクラムは既存の他のプラクティスと融合するが、場合によってはそれらを不要にしたり、置き換えることもある。スクラムチーム・サポーター・現在のマネジメント・作業環境・技術の効果性を、透明性高く評価することによって、スクラムは継続的な改善を可能にする。

<!-- In the context of knowledge work, the term Scrum, borrowed from the game of rugby, was coined by Takeuchi and Nonaka (29) to describe teams that worked this way and where knowledge was spread rapidly throughout an enterprise to deliver outstanding Products. -->
知識労働の文脈において、スクラムという用語は、竹内弘高と野中郁次郎(29)がラグビーというゲームから借用して考案したものである。これまでに述べたような働き方をし、優れたプロダクトを提供するため、企業全体に知識を急速に広めるチームを説明するために用いられている。

<!-- ## Supporting and Complementary Theory {#supporting-and-complementary-theory} -->
## 支援・補完理論 {#支援・補完理論}

<!-- Scrum is founded on a self-managing Scrum Team (49), emergence, empiricism (67), and lean thinking (63). It is underpinned by the supporting and complementary theory below and ideas such as: -->
スクラムは自己管理スクラムチーム(49)、創発、経験主義(67)、リーン思考(63)に基づいている。以下の支援・補完理論とアイデアに支えられている：

<!-- - Accountability, -->
<!-- - The reduction of non-value-adding waste (including organizational inefficiencies), -->
<!-- - Framing work as problems or opportunities, -->
<!-- - Discovery, delivery, and value realization, and -->
<!-- - Continuous improvement. -->
- 説明責任
- 価値を生まない無駄の削減（組織の非効率性を含む）
- 作業を問題や機会として捉える
- ディスカバリー、デリバリー、価値実現
- 継続的改善

<!-- ### Complexity–The Case for Scrum {#complexity–the-case-for-scrum} -->
### 複雑性-スクラムである理由 {#複雑性-スクラムである理由}

<!--
For complex work, like building Products, 
    there are more unknowns than knowns, 
    expertise alone is valuable but insufficient, 
    and cause and effect are only coherent in retrospect. 
Complexity thinking (30-35) 
    provides valuable tools and ideas 
    and facilitates insights. 
The Scrum Team members 
    require time to think, help each other, do rework, or pivot. 
Cognitive diversity and empiricism 
    can help deal with complex work.
-->
プロダクト構築のような複雑な作業においては、
    既知よりも未知のことが多く、
    専門知識だけでは価値があるものの不十分で、
    原因と結果の関係は後から振り返って初めて明確になる。
複雑性思考(30-35)は
    価値あるツールとアイデアを提供し、
    洞察を促進する。
スクラムチームのメンバーには、
    考える時間・互いに助け合う時間・
    やり直しや方向転換の時間が必要である。
認知的多様性と経験主義は
    複雑な仕事に対応するための手助けになる。

<!-- Everything believed to be 'known,' 
    including the market and Stakeholders (including but not limited to customers) 
    can be wrong. 
Some expectations, needs, or wants 
    emerge or fade away in relative importance or urgency over time. 
An empirical approach 
    provides mechanisms for testing assumptions 
    and inspecting and adapting.
-->
「既知」と信じられているすべてのことは、
    市場やステークホルダー（顧客を含むがこれに限定されない）を含めて、
    間違っている可能性がある。
期待、ニーズ、要求といったものは
    時間の経過とともに現れたり薄れたりし、
    相対的な重要性や緊急性も変化する。
経験主義的アプローチは
    仮説を検証し、
    検査と適応を行うためのメカニズムを提供する。

<!-- 
Generally, nothing stays in the same space forever. 
The Scrum Team might be on the edge of chaos, 
    researching and working on something unprecedented, never done before. 
After a while, as they discover patterns and heuristics, 
    it becomes less chaotic and more complex. 
After another while, for the situation at hand, 
    the Scrum Team might move closer to the ordered space, 
    something which is not easy but plannable. 
Or things can go in reverse. 
It is a good practice for the Scrum Team 
    to pause and reflect if it's really in the space it thought it was in 
    for the situation at hand. 
The key point is that Product development often deals with unpredictability, 
    and Scrum can be a more useful approach 
    than those with delusions of predictability.
-->
一般的に、何事も同じ状況に永続的にとどまることはない。
スクラムチームはカオスの縁（the edge of chaos）にいて、
    前例のない、これまでに行われたことのないことを
    研究し、取り組んでいるかもしれない。
しばらくして、スクラムチームがパターンや経験則を発見すると、
    カオス（混沌）な領域を脱し、複雑な領域に近づく。
さらにしばらくして、目前の状況において、
    スクラムチームは秩序ある領域に近づき、
    簡単ではないが計画可能なものとなっていく。
あるいは、物事は逆方向に進む可能性もある。
目前の状況において、
    本当に自分たちが考えていた領域にいるかどうか
    立ち止まって振り返ることは、
スクラムチームにとって良いプラクティスである。
重要な点は、
    プロダクト開発はしばしば予測不可能性に対処する必要があり、
    スクラムは予測可能性の幻想に基づくアプローチよりも、
    もっと有用なアプローチになり得るということである。

<!--
The opportunities from emergence 
    through Inspection and adaptation 
        of the _who_, _why_, _what_, _how_, _where_, and _when_ 
    are plentiful. 
It's important 
    to dampen what does not work 
    and amplify what works. 
Transparency, Inspection, and Adaptation 
    towards set goals, 
        informed by result feedback (and unintended consequences), 
    provide value creation, insights, risks, and challenged assumptions; 
    this can foster continuous improvement.
-->
機会は創発から生まれる。
    誰が（_Who_）、なぜ（_Why_）、何を（_What_）、どのように（_How_）、どこで（_Where_）、いつ（_When_）の
    検査と適応を通じて、
    豊富な機会が芽吹く。
重要なことは
    うまくいかないことを抑制し、
    うまくいくことを拡大することである。
結果からのフィードバック（結果フィードバック）（および意図しない結果）に基づいて
    設定された目標に向けた
    透明性・検査・適応は
    価値創造、洞察、リスク、挑戦された仮定を提供する。
こうして継続的な改善を促進することができる。

<!--
Build trust 
    through a self-managing team, 
    Inspection, Adaptation, 
    delivering valuable work, and uncovering new insights.
-->
自己管理チーム・検査・適応・
価値ある作業の提供・新しい洞察の発見を通じて、
信頼を構築しよう。

<!-- ### Emergence {#emergence} -->
### 創発 {#創発}

<!--
Emergence (71) 
    is when meaningful patterns or behaviors arise 
    from interactions within complex (30-35) systems
    -patterns you can't predict just by looking at the parts alone. 
In Scrum, emergence isn't tightly controlled 
    but is guided by enabling constraints 
        like timeboxes, roles, and feedback loops, 
    which create the conditions for self-management and adaptability 
        without dictating exact outcomes. 
These structures act like 'islands' in a sea of unpredictability, 
    similar to how physical systems can spontaneously form organized patterns 
        amid randomness, 
    as described in Stephen Wolfram's work (38). 
The key is that the structure in Scrum 
    provides enough guidance for teams to self-manage 
        and for new solutions to emerge 
    rather than prescribing every detail.
-->
創発(71)とは、
    複雑な(30-35)システム内の相互作用から
    意味のあるパターンや行動が生じる現象である。
    パターンは、個々の部分を見ただけでは予測できない。
スクラムでは、創発は厳密に制御されるのではなく、
    タイムボックス、役割、フィードバックループなど、
    可能性を引き出す制約（enabling constraints）によって導かれる。
    これらの制約は厳密なアウトカムを定義することなく、
    自己管理と適応性を促す条件を作り出す。
このような構造は、予測不可能性の海における「島」のように機能する。
    Stephen Wolframの研究(38)で説明されているように、
    物理システムがランダムさの中から
    自発的に組織化されたパターン群を形成する現象に似ている。
重要なのは、スクラムの構造が、
    すべての詳細を定義するのではなく、
    チームが自己管理し、新しいソリューションを創発するのに
    十分なガイダンスを提供することである。

<!-- 
Scrum Teams, operating as complex adaptive systems, 
    are influenced, not directed, 
        through short, parallel, safe-to-fail experiments 
        and continuous feedback. 
Patterns (53) like _Swarming_, _Stable Teams_, and _Kaizen_ 
    help identify and shape emergent behavior. 
Rather than forcing results, 
    Scrum enables the Scrum Team to discover desirable patterns, 
        including but limited to innovative solutions or new ways of working, 
    and amplify them while dampening unhelpful ones.
-->
スクラムチームは複雑適応系として運営され、
    誰かから指示されるのではなく、
    短時間かつ並列かつ失敗しても安全な実験と、
    継続的なフィードバックに反応していく。
_スウォーミング_、_安定したチーム_、_カイゼン_ などのパターン(53)は、
    創発的行動を特定し、形作るのに役立つ。
スクラムは、なんらかの結果を強制するかわりに、
    スクラムチームが望ましいパターンを発見することを促す。
    そこには革新的なソリューションや新しい働き方などを含むがこれらに限定されない。
    それらを増幅しながら、
    役に立たないパターンを抑制することを可能にする。

<!--
This approach recognizes that self-management (49) 
    is not something to be designed top-down 
    but something to be discovered 
        in the right environment
        —an environment that feels purposeful, coherent, and alive, 
        echoing Christopher Alexander's 'Quality Without a Name' (39). 
Ultimately, Scrum treats emergence 
    not as a risk to be eliminated 
    but as a force to be cultivated for excellence in Product development.
-->
このアプローチは、自己管理(49)が
    トップダウンで設計されるものではなく、
    適切な環境の中で
    発見されるものであることを認識している。
    目的意識があり、一貫性があり、生き生きとした環境。
    これはChristopher Alexanderの「無名の質」（39)を反映している。
つまるところ、スクラムは創発を
    排除すべきリスクとしてではなく、
    プロダクト開発における卓越性のために育むべき力として扱うのである。

<!-- ### Self-Managing Scrum Team {#self-managing-scrum-team} -->
### 自己管理スクラムチーム {#自己管理スクラムチーム}

<!--
A self-managing (49) Scrum Team 
    checks whether they are on track, 
    takes action when not on track, 
    decides how to work, 
    resolves Scrum Team conflict, 
    and fixes problems in the Scrum Team. 
This means that, generally, managers (111), 
    if they are part of the landscape, 
    do not tell the Scrum Team what to do 
        or decide which Scrum Team member needs to be taken aside 
            to fix issues, directly or indirectly. 
If managers exist 
    it's generally better if they demonstrate leadership.
-->
自己管理（49）スクラムチームは、
    軌道に乗っているかをチェックし、
    軌道に乗っていない時にアクションを取り、
    どのように働くかを決定し、
    スクラムチーム内の対立を解決し、
    スクラムチーム内の問題を修正する。
これは一般的に、マネージャー(111)
    がいる場合においても、
    スクラムチームに何をすべきかを告げたり、
    問題の修正にあたって
    スクラムチーム内のどのメンバーが対応する必要があるのかを、
    マネージャーが決めることはない、ということである。
    直接的、間接的にかかわらずだ。
マネージャーがいる場合、
    彼らがリーダーシップをみせることは一般的に状況をよりよくする。

<!--
Self-managing Scrum Teams organized around value 
    are crucial for creative problem-solving and capturing emergence; 
reliance on non-self-managing Scrum Teams 
    hinders the ability to deal with complexity (30-35). 
Self-managing Scrum Teams (49) 
    are not to be confused with individual self-management. 
It is the seamless interplay 
    that allows a great team to emerge. 
The facilitation of team autonomy and more efficient decision-making 
    within a non-hierarchical structure 
    could help Scrum Teams improve their self-management.
-->
価値を中心に組織された自己管理スクラムチームは、
    創造的な問題解決と創発を捉えることにとって不可欠である。
非自己管理スクラムチームに頼りきっていると、
    複雑性（30-35）に対処する能力が妨げられる。
自己管理スクラムチーム(49)と
    個人の自己管理とを混同しないこと。
シームレスな相互作用こそが、
    優れたチームによる創発を可能にする。
非階層的な組織構造のもとでチームの自律性を促進し、
    意思決定の効率化を図ることは、
    スクラムチームが自己管理を向上させるのに役立つ。

<!-- ### Professionalism {#professionalism} -->
### プロフェッショナリズム {#プロフェッショナリズム}

<!-- Professionalism is about striving for excellence and working together to deliver value in a respectful, transparent, and accountable way. Being professional means that one will always do certain things and others never, regardless of the circumstances. -->
プロフェッショナリズムとは、優秀性を追求し、尊敬・透明性・説明責任を持って価値を提供するために協働することである。プロフェッショナルであるということは、状況に関係なく常にやることと絶対にやらないことがあるということである。

<!-- Being Professional means taking full accountability for the Product, from the cradle to the grave, throughout its entire life cycle. Being professional includes maintenance, often in the form of operations, and provides excellent engineering result feedback learning opportunities for the Product Developers. -->
プロフェッショナルであることは、プロダクトのライフサイクル全体、つまりゆりかごから墓場まで、プロダクトに対して全面的に説明責任を負うことを意味する。プロフェッショナルであることには、開発だけではなく運用や保守が含まれ、プロダクト開発者がフィードバックを得て学習する機会を提供する。

<!--
In a software development context, 
   professionalism includes but is not limited to technical excellence (112). 
Technical excellence encompasses but is not limited to, the following: 
   Specification by Example, Clean Code, Unit Testing, Test-Driven Development, 
   Test Automation, Continuous Integration, Continuous Delivery, 
   Architecture and Design, Acceptance Testing, 
   and purposeful and intentional consideration of testing.
-->
ソフトウェア開発の文脈においては、
   プロフェッショナリズムには技術的卓越性(112)が含まれる（が、これに限定されない）。
技術的卓越性には次のようなプラクティスがあるが、これらがすべてではない。
   実例を用いた仕様化、クリーンコード、単体テスト、テスト駆動開発、
   テスト自動化、継続的インテグレーション、継続的デリバリー、
   アーキテクチャと設計、受け入れテスト、
   目的や意図を明確にしたテストの検討などである。

<!-- ### Lean Thinking {#lean-thinking} -->
### リーン思考 {#リーン思考}

<!-- 
'Lean thinking (63) 
    reduces waste 
        in the work and how it is carried out, 
    and focuses on 
        the flow of value and continuous improvement.' 
The Lean principles are built on 
    continuous improvement and respect for people. 
By focusing on the Lean principles, 
    organizations can improve effectiveness 
        at the lowest long-term costs 
    and deliver better value to customers 
    while fostering a climate 
        of ongoing learning and development. 
-->
リーン思考(63)は、
    作業とその実行方法におけるムダを削減し、
    価値の流れと継続的改善に焦点を当てる。
リーン原則は、
    継続的改善と人々への敬意の上に築かれている。
リーン原則に焦点を当てることで、
    組織は長期的なコストを最小限に抑えながら効果性を高めることができる。
    そして、顧客によりよい価値を届けながら、
    同時に持続的な学習・開発の
        風土を育むことができる。

<!-- ### Empiricism {#empiricism} -->
### 経験主義 {#経験主義}

<!-- Empiricism (67) is the principle of making decisions informed by objective or observable evidence in learning cycles, often exploratory. It can be useful in situations where more than expertise is needed. Scrum is founded on empiricism. Decisions are informed by evidence or what is observed. An empirical approach involves ongoing observations, theory development/refinement, operationalization, and testing/modification to establish effective feedback loops. -->
経験主義(67)は、しばしば探索的な学習サイクルにおいて、客観的または観察可能なエビデンスに基づいて意思決定を行う原則である。専門知識以上のものが必要な状況で有用である。スクラムは経験主義に基づいている。決定はエビデンスまたは観察されたものに基づいて行われる。経験的アプローチには、効果的なフィードバックループを確立するための継続的な観察、理論開発/洗練、運用化、テスト/修正が含まれる。

<!-- Empiricism can help Scrum Teams deliver something that Stakeholders find valuable when the _what_ or the _how_ is uncertain. Scrum is about making the improbable probable by discovering, delivering, and realizing value; this often includes but is not limited to trade-offs or experimentation. Experiments are generally based on testable hypotheses but sometimes on educated hunches. A key response to experimentation is evidence-informed decision-making. -->
経験主義は、何を作るか（_What_）またはどのように作るか（_How_）が不確実な状況において、スクラムチームがステークホルダーにとって価値ある成果を届けるときに役立つ。スクラムは価値を探索し、提供し、実現することで、ありえないことをありえることに変えることである。この過程にはトレードオフや実験などが含まれるがこれらに限定されない。実験は一般的に検証可能な仮説に基づくが、経験に裏付けされた直感に基づくこともある。実験では、エビデンスに基づく意思決定が重要となる。

<!-- Pausing and reflecting combine elements of empiricism and lean thinking, create the basis for transparency, inspection, and adaptation toward the Product Goal, and help the Scrum Team and Supporters improve themselves and their environment. -->
立ち止まって振り返ることは、経験主義とリーン思考の要素を組み合わせたものであり、プロダクトゴールに向けた透明性、検査、適応の基盤を作る。これにより、スクラムチームとサポーターが自身と自身の環境を改善することを促進する

<!-- An effective Scrum adoption reduces the distance between Stakeholders who present problems or opportunities and the people dealing with them by keeping objectives tangible and meaningful and delivering value quickly and frequently. Stakeholders often have a mistaken sense of certainty about the _what_ and the _how_. The Scrum Team often has a mistaken sense of certainty about _who_ is impacted. Inspecting and adapting should be more valued than keeping promises or serving the wrong Stakeholders. All assumptions can be wrong. -->
効果的なスクラムの適用は、問題や機会を提示するステークホルダーとそれに取り組む人々の間の距離が縮まり、ゴールがより具体的で意味のあるものになり、価値を迅速かつ頻繁に届けられるようになる。ステークホルダーは何を（_What_）やどのように（_How_）について誤解していることがある。一方でスクラムチームは誰（_Who_）が影響を受けるかについて誤解していることがある。約束を守ることや間違ったステークホルダーに仕えることよりも検査と適応に価値を置くべきである。すべての仮説は間違っている可能性がある。

<!-- ### Cadence {#cadence} -->
### ケイデンス {#ケイデンス}

<!-- Working in Sprints provides a consistent rhythm that helps the Scrum Team focus on clear, short-term goals. This cadence supports regular inspection and adaptation, enabling the Scrum Team to learn and adjust informed by feedback. Over time, it builds a sustainable pace of delivery, improving predictability and fostering continuous improvement. -->
スプリントで働くことは、スクラムチームが明確で短期的なゴールに集中するための一貫したリズムを提供する。このケイデンスは定期的な検査と適応を促進し、スクラムチームがフィードバックに基づいて学習し調整することを可能にする。時間の経過とともに、持続可能なデリバリーペースを構築し、予測可能性を向上させ、継続的改善を促進する。

<!-- ## The Three Pillars of Scrum's Empirical Process Control {#the-three-pillars-of-scrum's-empirical-process-control} -->
## スクラムの経験的プロセス制御の三本柱 {#スクラムの経験的プロセス制御の三本柱}

<!-- Empiricism, at its core, is the philosophy that knowledge comes from experience and observation. Valuable insights emerge from curiosity, experience, experimentation, data, visualization, and observation. Empirical process control (64-66) is a method of managing complex (30-35) processes, like those in Scrum, by adapting informed by observed results, relying on the three pillars of transparency, inspection, and adaptation. -->
経験主義とは、本質的には知識は経験と観察から得られるという哲学である。好奇心、経験、実験、データ、可視化、そして観察を通じて、価値ある洞察は生まれる。経験的プロセス制御(64-66)は、透明性・検査・適応という三本柱に基づき、観察された結果をもとに適応していくことで、スクラムのような複雑なプロセス(30-35)を管理する手法である。

<!-- ### Transparency {#transparency} -->
### 透明性 {#透明性}

<!-- 
Transparency is a pillar of Scrum. 
It reveals reality and work clarity, and enables empiricism. 
Transparency 
    reveals a more accurate perception of reality 
    and is the entry point for Inspection and Adaptation. 
The emergent process, work, and results 
    must be visible to those performing the work 
        or receiving 
        the inputs in the form of goals, Product Backlog Items, 
        and associated outputs in the form of Increments.
-->
透明性はスクラムの三本柱の一つである。
現実と作業の明確性を明らかにし、経験主義を実現する。
透明性によって、
    現実をより正確に認識できる。
    それは、検査と適応への入り口となる。
創発的プロセス・作業・結果は、
    人々に向けて、可視化されなければならない
    すなわち、作業を実行する人々、
    ゴールやプロダクトバックログアイテムの形でインプットを受け取る人々、
    インクリメントの形でアウトプットを受け取る人々である。

<!-- 
Important decisions are based on 
    the artifacts, experiments, releases, or result feedback. 
Low Transparency can impair Inspection, 
    leading to decisions that diminish value and increase risk. 
Transparency enables Inspection.
-->
重要な決定は、
    作成物・実験・リリース・結果からのフィードバック（結果フィードバック）に基づいて行われる。
透明性が低いと検査が損なわれやすい。
    価値を下げ、リスクを増やす決定につながる。
透明性は検査を可能にする。

<!-- 
Result feedback is data, 
    ideally both quantitative and qualitative, 
    that might result from changes to the Product or environment. 
It contributes to Stakeholder value, effort, resources, or costs. 
People are not resources.
-->
結果からのフィードバック（結果フィードバック）は、
    プロダクトや環境の変化から生まれるデータである。
    理想的には定量的・定性的データの両方を含む。
それは、
    ステークホルダーにとっての価値・工数・リソース・コストに影響する。
ただし、人はリソースではない。

<!-- 
Achieving Transparency is unrealistic 
        and potentially inapplicable 
    if there are institutional inefficiencies 
        or there is a lack of trust. 
As a corollary, 
    Scrum can make institutional inefficiencies transparent, 
    and with collective will, trust can be built.
-->
組織内で非効率な制度があったり信頼が欠如している場合、
    透明性の達成は非現実的であり、
    おそらく実現不可能である。
しかし逆に、
    スクラムは制度面での非効率性を明らかにすることができる。
    そして集団としての意志があれば、信頼を築くことができる。

<!-- ### Inspection {#inspection} -->
### 検査 {#検査}

<!--
Inspection is a pillar of Scrum. 
Inspection is looking at reality, 
    given the direction of the Product (the Product Goal) 
    and the effectiveness of the Scrum Team and Stakeholders. 
Inspection enables Adaptation. 
Inspection is about looking at reality intentionally 
    and is informed by the things that were made transparent, 
        including evidence or observation. 
To foster Inspection and Adaptation, 
    Scrum provides cadence in the form of its events.
-->
検査はスクラムの三本柱の一つである。
検査とは、現実を見ることである。
    プロダクトの方向性（プロダクトゴール）と
    スクラムチーム・ステークホルダーの効果性を確認する。
検査によって適応が可能となる。
検査とは、現実を直視することであり、
    エビデンスや観察など、
    透明化されたものに基づいている。
検査と適応を促進するために、
    スクラムはイベントの形でケイデンスを提供する。

<!-- 
The Scrum Artifacts, associated commitments, and progress toward agreed goals 
    must be inspected frequently and diligently 
    to detect emergence (71). 
Inspection of the artifacts, experiments, releases, marketplace, or result feedback 
    may yield learnings or side effects. 
Side effects are unexpected or unintended results or consequences.
-->
スクラムの作成物・関連するコミットメント・合意されたゴールに向けた進捗は、
    頻繁かつ入念に検査されなければならない。
    これは、創発(71)を検出するために行う。
作成物・実験・リリース・市場・結果からのフィードバック（結果フィードバック）の検査は、
    学習や副作用をもたらす可能性がある。
副作用とは、予期しない結果や意図しない結果、その影響である。

<!-- 
Inspection without Transparency 
    is ill-informed, misleading, and wasteful. 
-->
透明性を欠いた検査は、
    情報不足であり、誤解を招き、無駄である。

<!-- ### Adaptation {#adaptation} -->
### 適応 {#適応}

<!--
Adaptation is a pillar of Scrum. 
Given the direction of the Product, 
    the Scrum Team and Stakeholders are expected to adapt to reality 
        the moment improvement opportunities emerge, 
        such as experiment outcomes, insights, risks, or opportunities. 
Adaptation becomes more difficult 
    when institutional inefficiencies exist 
    or when the people involved are not ready, willing, or able 
        to do what needs to be done.
-->
適応はスクラムの三本柱の一つである。
プロダクトの方向性を踏まえて、
    スクラムチーム・ステークホルダーは現実に適応することが期待される。
    実験のアウトカム・洞察・リスク・機会など、
    改善の機会が現れた瞬間に行う。
組織に非効率な制度が存在する場合や、
    関係者がすべきことをする
    準備・意志・能力が不足していると、
    適応はより困難になる。

<!--
Adaptation starts with accepting 'reality,' informed by evidence. 
Adaptation typically occurs in 
    the Scrum Artifacts, associated commitments, 
    Scrum Team, Stakeholders, leaders, and organization. 
If any aspects deviate outside acceptable limits or boundaries, 
    or the resulting Product is unacceptable, 
    adjustments must be made as soon as possible to course-correct.
-->
適応は、エビデンスに基づいて「現実」を受け入れることから始まる。
適応は通常、
    スクラムの作成物・関連するコミットメント・
    スクラムチーム・ステークホルダー・リーダー・組織で発生する。
いずれかの点が許容範囲や基準から逸脱した場合、
    または結果のプロダクトが受け入れられない場合、
    軌道修正のため可能な限り速やかに調整を行わなければならない。

<!-- 
Without Adaptation, 
    Transparency and Inspection are meaningless. 
-->
適応を行わないなら、
    透明性にも検査にも意味がない。

<!-- ## The Scrum Values {#the-scrum-values} -->
## スクラムの価値基準 {#スクラムの価値基準}

<!-- The Scrum Values _—focus_, _openness_, _commitment_, _courage_, and *respect—*help create a Scrum Team environment that supports psychological safety and positive collaboration, which align with principles identified in neuroscience as beneficial for learning and effective teamwork. Consider the context. -->
スクラムの価値基準である、集中（_Focus_）、公開（_Openness_）、確約（_Commitment_）、勇気（_Courage_）、尊敬（_Respect_）は、心理的安全性と積極的なコラボレーションを促進するスクラムチームの環境をつくり、学習と効果的なチームワークに有益であると神経科学で特定された原則と整合している。

<!-- The Scrum Values foster transparency and trust, ensuring that words and actions align. Together, they create a strong foundation for collaboration, performance, and coherence within a Scrum Team. -->
スクラムの価値基準は透明性と信頼を育み、言葉と行動の一致を確保する。スクラムの価値基準を組み合わせることで、スクラムチーム内でのコラボレーション、パフォーマンス、一貫性のための強固な基盤が築かれる。

<!-- Successful Scrum adoption depends on the Scrum Team and Supporters (and other Stakeholders) leading by example as professionals. The Scrum Values can help improve trust among the Scrum Team and Stakeholders. The Scrum Values also encourage ethics (57), vocabulary, tone, work, behavior, and action that foster trust. They also help reduce or avoid a gap between words and actions. -->
スクラムの適用が成功するか否かは、スクラムチームとサポーター（およびその他のステークホルダー）がプロフェッショナルとして模範を示すことができるかどうかに依る。スクラムの価値基準は、スクラムチームとステークホルダー間の信頼を向上させるのに役立つ。スクラムの価値基準はまた、信頼を育む倫理(57)、語彙、トーン、作業、行動、アクションを促進する。それらはまた、言葉と行動の間のギャップを減らしたり避けたりすることを支援する。

<!-- The Scrum Team and Supporters agree to be _open_ about all the work and the challenges. Humility supports _Openness_. _Openness_ requires trust, and trust requires _Openness_. The Scrum Team and Supporters should request and share constructive feedback. They routinely collaborate and learn through high-bandwidth conversations and qualitative or quantitative feedback. -->
スクラムチームとサポーターは、すべての作業と課題について _公開_ であることに同意する。謙虚さは _公開_ を支える。 _公開_ は信頼を必要とし、信頼は _公開_ を必要とする。スクラムチームとサポーターは建設的なフィードバックを要求し、共有すべきである。彼らは日常的に帯域幅の太い会話と定性的または定量的フィードバックを通じてコラボレーションし、学習する。

<!-- High-bandwidth conversations are conversations that foster communication in ways that allow for the richest, fastest, and clearest exchange of information. This typically involves face-to-face discussions-either in person, via video calls, visual management, or whiteboards (physical or digital), where participants can use not just words, but also tone of voice, facial expressions, drawing, or body language to fully understand each other. -->
帯域幅の太い会話とは、最も豊富で、最も速く、最も明確な情報交換を可能にする方法でコミュニケーションを促進する会話である。これは通常、対面での議論 —— 対面、ビデオ通話、視覚的管理、またはホワイトボード（物理的またはデジタル）を通じて —— を含み、参加者は言葉だけでなく、声のトーン、表情、描画、またはボディランゲージを使用して互いを完全に理解することができる。

<!-- 
As Sprints are short, 
    any failures should be small and quick, 
    and risk is identified and managed 
        through fast and _open_ feedback. 
Perhaps, the only real failure is the lack of learning.
-->
スプリントは短いため、
    小さく速く失敗すべきだ。
    リスクは迅速でオープン（_公開_）なフィードバックを通じて
    特定され、管理される。
おそらく、真の失敗は唯一、学習の欠如だけである。

<!-- The Scrum Team and Supporters should have the _Courage_ to do the right thing and face tough challenges. They should be courageous in exploring the unknown, changing direction, requesting and sharing information, and engaging in courteous disagreements, e.g., healthy conflict and constructive dissent. The Scrum Team should ask Supporters and leaders for help if needed. -->
スクラムチームとサポーターは正しいことを行い、困難な課題に直面する _勇気_ を持つべきである。彼らは、未知の領域を探求し、方向転換を恐れず、情報の要求・共有を積極的に行い、真っ当な議論 —— 例えば、健全な対立や建設的な反対意見の表明など —— を交わす勇気を持つべきである。スクラムチームは必要に応じてサポーターとリーダーに助けを求めるべきである。

<!-- 
The Scrum Team _Commits_ to achieving the Sprint Goal and supporting each other. 
Commitment means 
    getting relevant work toward the Sprint Goal 
    to comply with the Definition of Output Done 
    at the latest by the end of the Sprint, preferably much earlier. 
Commitment also means 
    getting to desired outcomes through value realization.
-->
スクラムチームは、
    スプリントゴールの達成とお互い助け合うことを _確約_ する。
確約とは、
    スプリントゴールに向けた関連作業を、
    遅くともスプリント終了時までに、できればもっと早く、
    アウトプット完成の定義に準拠させることである。
また確約とは、価値実現を通じて、
    望ましいアウトカムに近づいていくことでもある。

<!--
Their primary _Focus_ is 
    making the best possible progress toward the Sprint Goal. 
Their secondary Focus is 
    making the best possible progress toward the Product Goal. 
The Supporters _Commit_ to providing a psychologically safe space and environment 
    for the Scrum Team to deliver Increments; 
within their _Focus_, 
    the Scrum Team and Supporters _Commit_ to creating time 
    for continuous learning and Adaptation, 
    and the transfer of learning between Scrum Teams 
    to ensure long-term effectiveness. 
The Scrum Team and Stakeholders 
    should be intentional about addressing trade-offs, 
    including consideration of short-term wins with long-term consequences.
-->
スクラムチームが第一に _集中_ すべきことは、
    スプリントゴールに向けて可能な限り最善の進捗を遂げることである。
スクラムチームが第二に _集中_ すべきことは、
    プロダクトゴールに向けて可能な限り最善の進捗を遂げることである。
スクラムチームがインクリメントを届けるために、
    サポーターは心理的安全性の高い空間と環境を提供することを _確約_ する。
その _集中_ を通じて、
    スクラムチーム・サポーターは
    継続的学習・適応および
    スクラムチーム間での学習の移転
    の時間を作ることを _確約_ する。
    これらは長期的な効果性を確実にするためである。
スクラムチームとステークホルダーは、
    短期的成果と長期的影響を考慮するなどの
    トレードオフに意図的に取り組むべきである。

<!-- The Scrum Team and Supporters (and other Stakeholders) _Respect_ each other as skilled professionals; they _Respect_ each other's differing expertise and perspectives and are constructive when disagreeing. Respectful behavior supports trust. The Scrum Team and Supporters should critique the idea or the approach to find more effective options, not the person(s). -->
スクラムチームとサポーター（および他のステークホルダー）は、熟練したプロフェッショナルとして互いを _尊敬_ する。お互いの異なる専門知識と視点を _尊敬_ し、意見の相違に対して建設的に対応する。尊敬ある行動は信頼を支える。スクラムチームとサポーターは、より効果的な選択肢を見つけるためにアイデアやアプローチを批評すべきであり、人を批判すべきではない。

<!-- _Respect_ helps protect against the weaponization of the other Scrum Values. Demonstrations of _Respect_ can include (but are not limited to) genuine praise, support for each other, humility, psychological safety, constructive disagreement, and cognitive diversity. -->
_尊敬_ は他のスクラムの価値基準が攻撃的に利用されることを防ぐ役割を果たす。_尊敬_ の実践には、心からの称賛、互いへの支援、謙虚さ、心理的安全性、建設的な意見の相違、認知的多様性などが含まれるがこれらに限定されない。

<!-- Scrum Team members and Stakeholders can look at the Scrum Values through the lens of John Boyd's OODA (99, 100, 102). OODA was created by U.S. Air Force Colonel John Boyd to help pilots make quick, smart decisions in fast-changing situations by moving through four steps: Observe, Orient, Decide, and Act. It's a simple, continuous, iterative, powerful, if often subconscious way to handle uncertainty—like noticing market changes (Observe), analyzing trends and risks (Orient), choosing Product features to test (Decide), and delivering them (Act). OODA helps individuals stay flexible and respond well to whatever comes their way. Scrum can improve OODA. -->
スクラムチームメンバーとステークホルダーは、John BoydのOODA(99,100,102)の視点を通してスクラムの価値基準を見ることができる。OODAは、4つのステップ：観察（Observe） 、状況判断（Orient）、意思決定（Decide） 、行動（Act）を踏むことで、パイロットが急速に変化する状況で迅速かつ賢明な判断を行うことを支援するためにアメリカ空軍大佐John Boydによって作成された。OODAは不確実性を扱うためのシンプルで、継続的で、反復的で、強力な方法であり、しばしば無意識に活用される。例えば、市場変化に気づく（観察）、トレンドとリスクを分析する（状況判断）、テストするプロダクトフィーチャーを選択する（意思決定）、それらを提供する（行動）などである。OODAは個人が柔軟性を維持し、どんな状況にも適切に対応するのに役立つ。スクラムはOODAを改善できる。

<!-- Individual Scrum Team members can look at the Scrum Values through the lens of John Boyd's OODA, using Scrum to foster emergent solutions. In a Scrum context, the Scrum Values apply across all of OODA, and in particular, help as follows: -->
スクラムチームメンバーはJohn BoydのOODAの視点からスクラムの価値基準を理解し、スクラムを活用して創発的なソリューションを育むことができる。スクラムの文脈では、スクラムの価値基準はOODAのすべてに適用され、特に以下のように支援する：

<!-- - Observe—Openness and Respect can foster the gathering of all relevant evidence, and diverse perspectives. -->
<!-- - Orient—Courage is needed to interpret reality, navigate uncertainty, and agree to adapt or pivot, potentially using a reflective pause to challenge assumptions and provoke new insights. -->
<!-- - Decide—Deciding what to do requires timely analysis, such as backlog refinement, bringing potential next steps into Focus through parallel safe-to-fail experiments to test hypotheses, like small-scale probes (probes should be small, parallel, and designed so that failure is survivable and informative). -->
<!-- - Act—With clarity on what needs to be done, why, and by whom, Commitment can drive the team to execute effectively within enabling constraints like time-boxed sprints, fostering emergent solutions. -->
- 観察：公開と尊敬は、関連するすべてのエビデンスと多様な視点の収集を促進する。
- 状況判断：現実を解釈し、不確実性を乗り越え、適応または方向転換に合意するには勇気が必要である。仮説を検証し新しい洞察を導き出すために、立ち止まって振り返ることもある。
- 意思決定：何をするかを決めるには、タイムリーな分析が求められる。バックログリファインメントなどを通じて、仮説を検証するための安全に失敗できる実験を並行して行い、次のステップに集中できるようにする（これらの実験は小さく、並行して実行ができ、失敗しても致命的でなく、かつ有益な情報をもたらすよう設計するべきである）。
- 行動：何を・なぜ・誰が行うかが明確であれば、コミットメントによりタイムボックス化されたスプリントなどの制約条件のもとでチームが効果的に行動し、創発的なソリューションを育むことができる。

<!-- ## More Supporting and Complementary Theory {#more-supporting-and-complementary-theory} -->
## さらなる支援・補完理論 {#さらなる支援・補完理論}

<!-- ### Product Thinking {#product-thinking} -->
### プロダクト思考 {#プロダクト思考}

<!-- People consume Products (including services), not projects. A Product is the conduit to deliver value, balancing the short- and long-term. This is why Scrum has a Product Owner and not a Project Owner. Products are long-term and need to be taken care of for their entire existence, whereas a project is time-boxed and often leaves an orphaned Product behind once the project is completed. -->
人々が実際に使うのはプロジェクトではなく、プロダクト（サービスを含む）である。プロダクトは、ユーザーに価値を届けるためのものであり、短期的な成果と長期的な視点の両方が求められる。そのため、スクラムでは「プロジェクトオーナー」ではなく「プロダクトオーナー」の役割が設けられている。プロダクトは長期間にわたって継続的に管理・改善していく必要があるが、プロジェクトはタイムボックスが決まっており、プロジェクトが完了するとプロダクトが十分にサポートされず放置されてしまうことがよくある。

<!-- Product thinking (86-88) deals with the tension (111) that Products often need to _Focus_ on growth in the short-term but also need to address long-term concerns, e.g., gaining traction with early adopters, 'crossing the chasm' (5), expanding, updating Product versions, continuous change, customer lifetime value and total cost of ownership. -->
プロダクト思考(86-88)とは、プロダクトが短期的な成長に _集中_ する必要がある一方で、長期的な課題にも対応しなければならないという葛藤(111)を扱う考え方である。たとえば、短期的には、アーリーアダプターを獲得し勢いを得ながら、プロダクトの利用を広げることが重要である。一方で、長期的には「キャズム（普及の壁）を超え」(5)、プロダクトを拡張し、バージョンアップや継続的な改善を行いながら、顧客のライフタイムバリュー（生涯価値）や総所有コストといった観点にも目を向ける必要がある。

<!-- To 'cross the chasm,' a strategy shift is needed from targeting savvy, risk-taking customers to winning over more pragmatic, risk-averse buyers, decision-makers, users, or other Stakeholders by focusing on a specific niche market or target and delivering a complete, reliable solution that solves real problems. This step is crucial for a Product's transition from niche success to widespread adoption, as it moves from appealing to early adopters to attracting the early majority. The early majority often requires clear evidence of the Product's reliability and problem-solving capabilities within a specific context. By focusing on a niche and providing a complete solution, a company can build credibility, create reference customers, and establish a strong market position, effectively bridging the 'chasm' between early adopters and the mainstream market. -->
「キャズムを超える」には、新しいもの好きでリスクをいとわない顧客をターゲットにする戦略から、より現実的でリスク回避傾向が強い購入者や意思決定者、ユーザー、または他のステークホルダーを獲得するための戦略へとシフトする必要がある。そのためには、特定のニッチな市場やターゲット層に焦点を当て、実際の課題を解決できる、信頼性の高い完成度のあるソリューションを提供することが重要である。このステップは、一部のアーリーアダプターから、アーリーマジョリティに広く使われるようになるための分岐点となる。アーリーマジョリティは、特定の状況や用途でそのプロダクトが本当に信頼でき、問題解決に役立つという明確なエビデンスを求める傾向がある。ニッチな市場に集中し、完成度の高いソリューションを提供することで、企業は信頼を築き、他の顧客に紹介できる実績ある顧客（リファレンス顧客）を作り、市場での強固なポジションを確立できる。こうすることで、アーリーアダプターとメインストリームの市場の間にある「キャズム」を効果的に乗り越えることができる。

<!-- Product Owners need to master the handling of trade-offs between the _here_ and _now_ and the anticipated future (the _there_ and _then_) (148) through courage, humility, consultation, collaboration, healthy conflict, etc. -->
プロダクトオーナーは、勇気や謙虚さを持ち、周囲と相談したり協力したり、ときには建設的な意見のぶつかり合いを通じて、ここ（_Here_）と今（_Now_）と、予想される未来（そこ（_There_）とその時（_Then_））(148)の間のトレードオフを上手く扱う力が求められる。

<!-- Suppose the people involved are purely short-term thinkers. In that case, they will likely experience long-term side effects such as technical debt, low Scrum Team morale, busyness, output focus, etc. For that reason, mitigating factors would need to be put in place to support the long-term. -->
もし関係者が短期的な視点でのみ行動してしまうと、技術的負債がたまったり、スクラムチームの士気が下がったり、常に忙しくなったり、アウトプットばかりを重視してしまうなど、長期的にさまざまな副作用を経験する可能性がある。そのため、長期的な視点を持つための工夫や対策をあらかじめ用意しておく必要がある。

<!-- 
Technical debt is the extra work 
    that builds up 
        – consciously or unconsciously – 
    when you take shortcuts 
        in implementation or design 
    to deliver something faster. 
Over time, 
    it slows you down, just like real debt
        —with interest—
    because it makes future changes 
        harder and riskier. 
Professionals strive to minimize 
    technical debt and sloppiness 
    as much as possible. 
If they decide to incur debt, 
    it should be transparent, 
    and if possible, 
    an emergent mitigation plan should be in place. 
-->
技術的負債とは、
    何かをより早く提供するために、
    実装や設計で近道をした際に
        （意識的にしても無意識でも）
    積み重なっていく追加作業のことである。
時間が経つにつれて、
    実際の借金のように
        （利子付きで）
    開発のスピードを落としてしまう。
    なぜなら、今後の変更を
        余計に難しく、リスクの高いものにするからである。
プロフェッショナルならば、
    技術的負債・ずさんな作業を
    できるだけ最小限に抑えるよう努める。
もし負債を負うことを決めたとしたら、
    それは透明性を持つべきであり、
    可能な限り、
    後から柔軟に対応できるような緩和策を用意しておくべきである。

<!-- For Products, Scrum supports feasibility, usability, desirability, value, and viability within ethical (57) boundaries through: -->
プロダクトに対して、スクラムは倫理的(57)な枠組みの中で、実現可能性、使いやすさ、魅力、価値、そして実行可能性を、以下を通じて支援する。

<!-- - Product design -->
<!-- - Product management -->
<!-- - Intentional consideration of the cohesive interplay of Stakeholders, research, goals, discovery, design, delivery, and continuous value realization -->
<!-- - In the specific case of technology Products, through Product engineering. -->
- プロダクト設計
- プロダクトマネジメント
- ステークホルダー、研究、ゴール、ディスカバリー、設計、デリバリー、継続的な価値実現といった要素が密接に連携し合うことを意識的に考慮すること
- 技術系プロダクトの場合は、プロダクトエンジニアリングを通じて

<!-- Scrum favors a healthy balance of the short-term and the long-term. Goal orientation enables potential outcomes through an emphasis on value and risk reduction. The Sprint Goal _(here_ and _now)_ should be a step toward the Product Goal _(there_ and _then)_, which enables pathways to the long-term. The Product Goal often supports the Product strategy and Product Vision. -->
スクラムは、短期と長期の健全なバランスを大切にする。ゴール指向で進めることで、価値の創出やリスク低減に重点を置き、潜在的なアウトカムを実現しやすくする。スプリントゴール（ここ（_Here_）と今（_Now_））は、プロダクトゴール（そこ（_There_）とその時（_Then_））に向かうための一歩であり、これが長期的な成長への道筋となる。プロダクトゴールは、プロダクト戦略やプロダクトビジョンを支える役割も果たす。

<!-- ### Systems Thinking {#systems-thinking} -->
### システム思考 {#システム思考}

<!-- Systems thinking (55) acknowledges the interconnectedness of elements within organizational and social contexts, recognizing that actions in one area ripple in ways that aren't always predictable or linear. Theory-informed experiments, feedback loops, and follow-up data analysis help surface valuable and actionable insights. Systems Thinking provides valuable tools and ideas and facilitates insights. -->
システム思考（55）は、組織や社会の文脈において様々な要素が相互に結びついていることに着目し、ある領域での行動が必ずしも予測可能ではなく、また線形ではない方法で波及していくことを重視する考え方である。理論に基づく実験、フィードバックループ、追跡的なデータ分析を通じて、価値ある実践的な知見が得られる。システム思考は有用なツールとアイデアを提供し、洞察を促進する。

<!-- For an organization to become adaptive (80), it is necessary to avoid local sub-optimizations such as reducing unit costs while increasing long-term costs, eroding quality goals only to lose customer trust, or improving a Scrum Team, workflow, or process that should not exist. For complex work (30-35), it's not always possible to link cause and effect, except in hindsight. It's helpful, nevertheless, to consider possible and actual upstream, cross-stream, and downstream effects of interventions. -->
適応力(80)のある組織になるためには、個々のコストを削減しながら長期コストを増加させる、品質目標を犠牲にして顧客信頼を失う、そもそも存在すべきでないスクラムチーム、ワークフロー、プロセスを改善するなどの局所的な部分最適化を避けることが必要である。複雑な作業(30-35)では、原因と結果を結びつけることは必ずしもできず、多くの場合、事後に初めて理解できるものである。それでもなお、アクションや施策がもたらす前工程や関連領域、後工程に対する実際的もしくは潜在的な影響を考慮することは有用である。

<!-- ### Discovery {#discovery} -->
### ディスカバリー {#ディスカバリー}

<!-- Discovery (50-51) often starts with understanding people's expectations, needs, and wants through observation, analysis, conversations, and synthesis toward a desired outcome. Once a Scrum Team has gathered insights, it frames the problem or opportunity and orders them by potential value. The Scrum Team crowdsources possible solutions without judging them too quickly. If the potential value is high but there is a lack of evidence that the value can be realized, the Scrum Team should do research, assumption testing, or build simple prototypes they can test with real customers, decision-makers, or users. Discovery is never over; consider regular interviews or observations of customers, decision-makers, or users. -->
ディスカバリー(50-51)は、多くの場合、観察・分析・対話・統合を通じて人々の期待やニーズ、要望を把握し、望ましい成果を明確にすることから始まる。スクラムチームが十分な洞察を得たら、問題や機会を整理し、それらに潜在的な価値の大きさで優先順位を付ける。チームは急いで結論を出すことはせず、可能性のあるソリューションについて広くアイデアを集める。もし潜在的な価値が高いにもかかわらず、その価値が本当に実現できるというエビデンスが足りない場合は、追加の調査や仮説検証をする、あるいは実際の顧客・意思決定者・ユーザーに試せるシンプルなプロトタイプをつくるべきである。ディスカバリーは終わりのない活動であり、顧客や意思決定者、ユーザーへの定期的なインタビューや観察を続けることが推奨される。

<!-- Discovery is about learning toward a desired outcome through prioritizing, doing, avoiding, or constantly improving ideas informed by user observation, feedback, or other learnings. Discovery emphasizes collaboration, creativity, and not being afraid to fail and try again. Discovery frames work as problems or opportunities and helps the Scrum Team to create, prioritize, and test solution options that balance what people desire, what's technically possible, and what makes business sense—all while having fun. -->
ディスカバリーとは、ユーザー観察やフィードバック、その他の学びをもとに、アイデアの優先順位付け、実行、不要なものの見送り、そして継続的な改善を通じて、望ましい成果に向かって学び続ける活動である。ディスカバリーは、チームのコラボレーションや創造性を大切にし、失敗を恐れずに何度でも挑戦する姿勢を重視する。また、ディスカバリーによって、チームは作業を問題や機会として捉え直し、人々が望むもの・技術的に実現可能なこと・ビジネスとして意味があることのバランスを取りながら、さまざまな解決策の選択肢を生み出し、優先順位をつけて試すことができるようになる。そして、こうした活動全般をチームは楽しみながら行う。

<!-- If discovery is needed, it should (insofar as it is possible) be included in a manner that is consistent with Scrum. For example, discovery work is made transparent in the Product Backlog and Sprint Backlog, Scrum Team members practice discovery and other skills, learnings are discussed during the Sprint and at the Scrum events, and at least one Increment is produced (and ideally released) every Sprint, regardless of how much discovery is done. There is a balance to be struck: discovery can help avoid building the wrong thing, but it can be overdone, and, in the end, the result feedback matters the most. -->
ディスカバリーが必要な場合は、可能な限りスクラムと整合した形で取り入れるべきである。たとえば、ディスカバリーの作業はプロダクトバックログやスプリントバックログで可視化され、スクラムチームのメンバーはディスカバリーやその他のスキルを実践し、学びはスプリント中やスクラムイベントで議論される。そして、どれだけディスカバリーを行ったかに関わらず、毎スプリントで少なくとも一つのインクリメントが必ず作り出され（理想的にはリリースされ）るべきである。バランスを取ることが重要であり、ディスカバリーは間違ったものを作ることを防ぐのに役立つが、やりすぎることもあり得る。最終的には、結果からのフィードバック（結果フィードバック）が最も重要である。

<!-- ### Leadership {#leadership} -->
### リーダーシップ {#リーダーシップ}

<!-- Leadership is the ability to influence, guide, and inspire a group of people to achieve a common goal while avoiding demotivation. It inspires thoughts, actions, and passion and fosters clear strategic directions. It embraces purposeful and intentional Go See, Listen, and Understand, collecting facts and observations to inform decisions, better known as Genchi Genbutsu (84). -->
リーダーシップとは、共通のゴールを達成するために、人々の意欲を低下させずに良い影響を与え、導き、鼓舞する能力である。それは思考、行動、情熱を刺激して、明確な戦略的方向性を育む。それは目的意識と意図を持って、現場を見る、聞く、理解するということを実践し、事実と観察結果を収集して意思決定に反映させるプロセスであり、現地現物(84)として知られている。

<!-- Leadership is a dynamic social process involving responsibility, relationship building, and empowerment. Successful leadership results in co-creating a direction of travel, effective alignment of resources and people needed, and mutual _Commitment_ among group members. -->
リーダーシップは、責任・人間関係構築・エンパワーメントを含んだ、動的で社会的なプロセスである。効果的なリーダーシップにより、進むべき方向の共創・必要なリソースと人材の効果的な配置・グループメンバー間の相互の _コミットメント_ が実現される。

<!-- Scrum strives for a particular leadership, that is, leadership for resilience, a set of qualities, not a management position. Thus, leadership needs to include but not be limited to cultivating the environment for self-managing Scrum Teams, clarity, trust, transparency, emergence (71) in a direction, fulfillment at work, embracing uncertainty (72) and failures, gathering evidence for better decisions, proactively managing risk, and removing organizational inefficiencies. -->
スクラムにおけるリーダーシップとはすなわち、レジリエンスを重視するリーダーシップであり、管理職の地位ではなく一連の資質を指す。したがって、リーダーシップには、自己管理型スクラムチームの育成、明確さ、信頼、透明性、方向性における創発(71)、仕事における充実感、不確実性(72)と失敗の受け入れ、より良い意思決定のためのエビデンスの収集、積極的なリスク管理、組織の非効率性の除去などが含まれるが、これらに限定されない。

<!-- Leadership happens from all angles, should be at all levels, and fosters reflection at the right times. Leadership should drive ruthlessly for value, yet be compassionate and ethical. Leadership requires persistent agency to change workflows, processes, systems, and the work environment; this includes (but is not limited to) HR, finance, and vendor management. A leader is someone who demonstrates leadership. -->
リーダーシップはあらゆる方向から生まれ、すべてのレベルで存在すべきものであり、適切なタイミングで自らを振り返る契機ともなる。真のリーダーシップとは、価値の実現に向けて徹底的に取り組む姿勢を持ちつつも、常に思いやりと倫理観を忘れないことが求められる。リーダーシップには、ワークフロー、プロセス、システム、そして職場環境をより良くするための持続的な主体性が求められる。その取り組みは、人事、財務、ベンダー管理も含まれる（ただしこれらに限定されない）。
つまり、リーダーとは、こうした姿勢をもってリーダーシップを発揮する人のことを指す。

<!-- Product Owners and Scrum Masters balance leadership, authority, and subtle control by providing clear intent, fostering initiative, and reinforcing accountability. They guide rather than micromanage, ensuring the Scrum Team understands the vision and goals, has the autonomy to execute, and remains accountable for outcomes. When intervention is needed, they step in decisively while preserving the Scrum Team's ownership of their accountabilities. Product Developers demonstrate leadership with their self-managing team orientation, professionalism, and goal orientation; self-management comes with responsibilities. Supporters demonstrate leadership by supporting short- and long-term impediment removal, improving the coherence of management processes with Scrum, and supporting emergent change in a powerful direction when requested. -->
プロダクトオーナーとスクラムマスターは、明確な意図を示し、自主性を促進し、責任感を高めることで、リーダーシップ・権威・そして微妙なコントロールのバランスを取る。彼らはマイクロマネジメントに陥ることなく、スクラムチームがビジョンとゴールを理解し、それを自律的に実行しながらアウトカムに対する説明責任を持ち続けるよう導く。介入が必要な場合は、スクラムチームのオーナーシップを保持させた上で、断固とした対応をとる。開発者は、自己管理チーム指向、専門性、そしてゴール指向を通じてリーダーシップを発揮する。自己管理には責任が伴う。サポーターは、短期と長期の障害物除去の支援、スクラムとの整合性を高める管理プロセスの改善、要求に応じて明確な方向性に基づいた創発的な変化を後押しすることで、リーダーシップを発揮する。

<!-- ### First Principles Thinking {#first-principles-thinking} -->
### 第一原理思考 {#第一原理思考}

<!-- First principles thinking is a method of problem-solving that involves breaking down challenges into their most fundamental truths and discovering solutions from the ground up. Instead of relying on analogy or established conventions, this approach asks, _'What do we know for certain?'_ and reconstructs understanding and solutions from those basic elements. Examples could include but are not limited to: -->
第一原理思考は、課題をその最も基本的な真実に分解し、根本から解決策を導き出す問題解決方法である。類推や確立された慣例に依存する代わりに、このアプローチは「確実に知っていることは何か？」と問い、それらの基本要素から理解と解決策を再構築する。例には以下が含まれるがこれらに限定されない：

<!-- - Encouraging the Scrum Team to _Focus_ on the core drivers of effectiveness, adaptiveness (80), and timeliness \-such as autonomy, transparency, and adaptation- rather than blindly following processes or copying what others have done. -->
- スクラムチームが盲目的にプロセスに従ったり、他チームの前例を模倣するよりも、自律性、透明性、適応といった効果性、適応性(80)、適時性を高める中核的要因に _集中_ することを促進する。

<!-- - Questioning every assumption and reconstructing solutions based on facts and essential principles, which can enable breakthroughs. -->
- あらゆる前提に疑問を持ち、事実と基本原理に基づいて解決策を再構築することで、ブレークスルーを可能にする。

<!-- - Advocating original thinking, continuous improvement, and the _Courage_ to challenge the status quo-unlocking creativity and enabling transformative results. -->
- 独創的な思考、継続的改善、現状に挑戦する _勇気_ を奨励し、創造性を解放し、変革を実現可能とする。

<!-- ### People and Change {#people-and-change} -->
### 人と変化 {#人と変化}

<!-- 
The level of difficulty in adopting Scrum 
    should not be underestimated. 
Scrum 
    offers some guiding principles 
    through its elements. 
It offers an approach 
    to go back to first principles. 
-->
スクラム適用の難しさを
    過小評価すべきではない。
スクラムは
    各構成要素を通じて
    いくつかの道しるべとなる原則（guiding principles）を提供する。
第一原理に立ち返るための
    アプローチを提供している。

<!-- Scrum is not about adopting tools, short term delivery that sacrifices long term value. Often, incorrectly, Scrum practitioners only focus on short term impediment removal. Scrum requires change agency that balances the short term with the long term. -->
スクラムは、ツールの導入や長期的な価値を犠牲にした短期的なデリバリーの追求を目的とするものではない。スクラム実践者は、短期的な障害物の除去だけに終始してしまうことがよくある。しかしスクラムに必要なのは、短期と長期のバランスを取る変革推進力である。

<!-- スクラムとは、
    単なるツールの導入ではない。
障害物の除去だけに終始するものでもない。
スクラムにおける障害物とは、
    進捗を阻害または遅延させるあらゆる要因を指す。 -->
<!-- A work related problem in Scrum could be anything that blocks or slows down progress, often addressed by self-managment of the Product Onwer and Product Developers. An impediment is a type of problem in Scrum and is anything that blocks or slows down progress and cannot be solved by the Developers & Product Owner.  -->
スクラムにおける仕事上の問題とは、進捗を阻害または遅延させるあらゆるものを指し。多くの場合、プロダクトオーナーやプロダクト開発者による自己管理によって対処されるものである。障害物とはスクラムにおけるスクラムにおける問題の一種であり、進捗を阻害または遅延させるものであり、開発者やプロダクトオーナーだけでは解決できないものを指す。

<!-- It is crucial to be
    intentional, unrelenting, and tenacious 
    about people, change, and communications. 
The change often includes 
    people development, designs, workflows, 
    processes, systems, attitudes, behaviors, 
    language, habits, and the work climate. 
Culture is an emerging result. 
-->
人・変化・コミュニケーションについて、
    意図的に、手を緩めず、粘り強く
    取り組むことが必要不可欠である。
変化には様々な要素が含まれる。
    人材開発、設計、ワークフロー、
    プロセス、システム、態度、行動、
    言語、習慣、職場環境などである。
文化とは、
    そうした変化の創発的な結果である。

<!-- 
An effective Scrum adoption 
    uses an emergent approach, 
    has effective change agents, 
    and engages enthusiastic support 
        from those affected by it or affecting it. 
Intentionality and daily progress 
    with the adoption 
    are crucial; 
    the adoption work should not be the last thing 
        that is worked on 
        after everything else is finished. 
-->
効果的なスクラムの適用には、
    創発的なアプローチの活用や
    効果的なチェンジエージェントの存在、
    そして、スクラムの影響を受ける人や影響を与える人たちの
        熱心な協力を得ることが必要である。
スクラムの導入においては、
    意図的な取り組みと日々の進捗が重要であり、
    他のすべての作業が終わった後に
        最後に取りかかるものとしてはならない。

<!-- 
Start with disciplined emergent change 
    in a direction. 
Strive to make emergent change so normal 
    that it eventually becomes 
    part of the scheduled work. 
A Scrum adoption has direction 
    but not a predefined destination. 
The change is emergent 
    and therefore not predictable. 
Curiosity enables a pattern of 
    sense, listen, learn, and adapt 
    in a direction. 
It's important to 
    foster relationships and 
    understand perspectives, 
    and to listen to 
        what is not being said and 
        what is not happening. 
Change is hard work, 
    yet fulfilling. 
-->
方向性を持ち、
    規律ある創発的変化から始めよう。
創発的変化を当たり前にして、
    最終的に定常的な仕事の一部になるまで
    進めることを目指す。
スクラムの適用には方向性があるが、
    事前に定められた目的地はない。
変化とは創発的なものであり、
    それゆえ予測できない。
好奇心は、
    方向性を持った上で、
    感じる・聴く・学ぶ・適応する
    というパターンを可能にする。
関係性を育み、
    多様な視点を理解し、
    語られていないことや
    起こっていないことに
    耳を傾けることが重要である。
変化は困難だが、
    やりがいのある作業である。

<!-- ## The Scrum Roles in the Expansion Pack {#the-scrum-roles-in-the-expansion-pack} -->
## 拡張パックにおけるスクラムの役割 {#the-scrum-roles-in-the-expansion-pack}

<!-- [2020 Scrum Guide: 'The entire Scrum Team is accountable for creating a valuable, useful Increment every Sprint. Scrum defines three specific accountabilities within the Scrum Team: the Developers, the Product Owner, and the Scrum Master.' An accountability is a list of expectations that one is accountable for, e.g., the Product Owner accountable for value, the Scrum Master for the Scrum Team’s effectiveness, and Developers for creating the usable Increment. A role does not necessarily have accountabilities.] -->
[2020年版スクラムガイド: 「スクラムチーム全体が、スプリントごとに価値のある有⽤なインクリメントを作成する責任を持つ。スクラムはスクラムチームにおいて、開発者、プロダクトオーナー、スクラムマスターという 3 つの明確な責任を定義する。」責任（説明責任）とは、それぞれが説明責任を負うことになる期待事項のリストである。例えば、プロダクトオーナーは価値に対して説明責任を持ち、スクラムマスターはスクラムチームの効果性に対して説明責任を持ち、開発者は有用なインクリメントの作成に対して説明責任を持つ。役割が必ずしも説明責任を伴うとは限らない。]

<!-- Not all roles have accountabilities, i.e. Stakeholder. The four Scrum roles are Product Owner, Product Developer, Scrum Master, and Stakeholder. They give, reward, and earn trust and enable coherent leadership. Only the three accountabilities, Product Owner, Product Developer, and Scrum Master, are in the Scrum Team. -->
すべての役割が説明責任を持つわけではなく、その一例がステークホルダーである。スクラムの4つの役割とは、プロダクトオーナー・プロダクト開発者・スクラムマスター・ステークホルダーである。これらは信頼を与え、信頼に報い、信頼を獲得し、一貫したリーダーシップを可能にする。

<!-- The four Scrum roles are Product Owner, Product Developer, Scrum Master, and Stakeholder. They give, reward, and earn trust and enable coherent leadership. Only the three accountabilities, Product Owner, Product Developer, and Scrum Master, are in the Scrum Team. -->
<!-- スクラムの4つの役割とは、プロダクトオーナー・プロダクト開発者・スクラムマスター・ステークホルダーである。これらは信頼を与え、報い、獲得し、一貫したリーダーシップを可能にする。スクラムチームには、プロダクトオーナー、開発者、スクラムマスターの3つの説明責任のみが含まれる。 -->

<!-- A person can hold more than one Scrum role. By taking on more than one role, one must be careful not to overstep. The Scrum roles are designed to keep check and balances in place. -->
1人が複数のスクラムの役割を担うことができる。複数の役割を担う場合、越権行為をしないよう注意しなければならない。スクラムの役割は、チェック・アンド・バランスを保つよう設計されている。

<!-- A Scrum Team is a team that practices Scrum, addresses three Scrum _accountabilities,_ namely, Scrum Master, Product Owner, and Product Developers, deals with Stakeholder (including but not limited to customer or user) problems or opportunities, and delivers useful, usable, and potentially valuable Increments from the perspectives of the Scrum Team and Stakeholders toward the Product Goal. For complex (30-35) work, a Scrum Team should be small, cognitively diverse, and self-managing, where human Scrum Team members, often assisted by technology, care about each other's work and learn how to do each other's work. -->
スクラムチームは、スクラムを実践し、スクラムマスター、プロダクトオーナー、プロダクト開発者というスクラムの3つの _説明責任_ を担い、ステークホルダー（顧客やユーザーを含むがこれらに限定されない）の問題や機会に対応し、スクラムチームとステークホルダーの視点から、プロダクトゴールに向けて有用で利用可能かつ潜在的に価値のあるインクリメントをデリバリーするチームである。複雑な(30-35)作業においては、スクラムチームは小規模で認知的多様性を持ち、自己管理型であるべきであり、人間のスクラムチームメンバーは、技術的な支援を受けながら、お互いの作業を気にかけ、お互いの作業のやり方を学ぶ。

<!-- The Scrum Team should be cross-functional, which means it is multidisciplinary, including technical and business domain skills. There is no explicit hierarchy within the Scrum Team. The Scrum Team should have all the skills and support needed to: -->
スクラムチームは機能横断型であるべきで、これは技術とビジネスドメインのスキルを含む多分野にわたることを意味する。スクラムチーム内に明示的な階層は存在しない。スクラムチームは以下に必要なすべてのスキルとサポートを備えるべきである：

<!-- - Discover (including research and design) as needed, -->
- 必要に応じてディスカバーする（調査と設計を含む）
<!-- - Deliver (including engineering when appropriate); and, -->
- デリバリーする（適切な場合はエンジニアリングを含む）；そして
<!-- - Validate value realization (and additionally usability, desirability, and viability within ethical (57) boundaries). -->
- 価値実現（および使いやすさ・魅力・倫理的な(57)境界内での実現可能性）を検証する。

<!-- The Scrum Team, supported by the Supporters, collectively takes care of the problem or opportunity domain, Product discovery, delivery, verification and built-in quality, go-to-market, and value validation toward the Product Goal. The Scrum Team strives for net improvements; being self-managing (49), they decide _who_ does _what_, _how_, _when,_ and _where_. -->
スクラムチームは、サポーターの支援を受けながら、問題や機会の領域、プロダクトのディスカバリー、デリバリー、検証、作り込み品質、市場投入、そしてプロダクトゴールに向けた価値検証に共同で取り組む。
このチームは実質的な改善を目指し、自己管理(49)をしているため、_誰が_、_何を_、_どのように_、_いつ_、_どこで_、行うのかを自ら決定する。

<!--
Value validation 
    is the confirmation (or disconfirmation) 
    within given boundaries 
    that the expected outcome(s) has been achieved.
-->
価値検証とは、
    与えられた範囲内で、
    期待される結果が達成されたかどうかを
    確認（または棄却）することである。

<!-- The Scrum Team delivers an Increment(s) every Sprint, continuously self-manages (49) to find and fix problems, synchronizes continuously, and releases frequently. The Scrum Team is small enough to remain nimble and large enough to complete significant work within a Sprint. Often, smaller Scrum Teams communicate better and are more productive. -->
スクラムチームは毎スプリントでインクリメントを提供し、問題を発見して修正するために継続的に自己管理し(49)、継続的に同期し、頻繁にリリースする。スクラムチームは、俊敏性を保つのに十分な小ささと、スプリント内で重要な作業を完了するのに十分な大きさを持つ。多くの場合、より小さなスクラムチームの方がよりよくコミュニケーションを取り、より生産的である。

<!-- Scrum is built on self-managing Scrum Teams (49) within a defined organizational or Product structure. Autonomy exists, but it is bounded by Scrum events, accountabilities, artifacts, commitments, pillars, values, and organizational needs. -->
スクラムは、定義された組織またはプロダクト構造内の自己管理スクラムチーム(49)に基づいて構築されている。自律性は存在するが、スクラムイベント・説明責任・作成物・コミットメント・三本柱・価値基準・組織のニーズによって境界が設けられている。

<!-- Scrum engages groups of people who collectively have or acquire all the skills and expertise to do the work and share such skills as needed. Intentional interactions, supported by leaders, are needed to help improve the chances of successful outcomes. -->
スクラムは、作業に必要なすべてのスキルと専門知識を集合的に保有または習得し、必要に応じてそれらのスキルを共有する人々のグループを関与させる。成功につながるアウトカムの可能性を高めるために、リーダーによって支援された意図的な相互作用が必要である。

<!-- The _Focus_ should remain on achieving the Product Goal in the most effective way, with the right amount of investment, while delivering valuable outcomes. -->
_集中_ は、価値あるアウトカムを提供しながら、適切な投資量で最も効果的な方法でプロダクトゴールを達成することに向けられるべきである。

<!-- Scrum fosters collaborative teamwork by encouraging continuous interaction and shared accountability rather than sequential, siloed work. This approach enables the Scrum Team and Stakeholders to embrace uncertainty (72), allowing for quicker adjustments informed by ongoing learning and feedback. The overlapping nature of discovery, development, and value validation ensures a more adaptive (80), value-driven approach to Product development. -->
スクラムは、逐次的でサイロ化された作業ではなく、継続的な相互作用と共有説明責任を奨励することで、協調的なチームワークを促進する。このアプローチにより、スクラムチームとステークホルダーは不確実性(72)を受け入れることができ、継続的な学習とフィードバックに基づくより迅速な調整が可能になる。発見、開発、価値検証の重複する性質は、より適応的(80)で価値駆動型のプロダクト開発アプローチを保証する。

<!-- Overlapping work fosters shared accountability among the Scrum Team, enhancing engagement and commitment. The Scrum Team directs attention to addressing challenges and opportunities, encourages proactive behavior, cultivates a diverse skill set, and increases awareness of market dynamics among all participants. -->
重複する作業は、スクラムチーム内における説明責任の共有を促進し、エンゲージメントとコミットメントを高める。スクラムチームは、課題や機会への対応に意識を向け、自発的な行動を促し、多様なスキルセットを育成し、すべての関係者に市場動向への意識を高める。

<!-- The Scrum Team addresses all Product-related activities, from Stakeholder collaboration to value validation, including verification, maintenance, operation, experimentation, research and development, and anything else that might be required. The Scrum Team instills quality. Supporters ensure the organization structures the climate and the work environment and empowers the Scrum Team to self-manage (49). Working in Sprints at a sustainable pace improves _Focus_ and consistency. -->
スクラムチームは、ステークホルダーとの連携から価値検証に至るまで、検証、保守、運用、実験、研究開発、その他必要とされるあらゆるプロダクト関連の活動を行う。スクラムチームは品質を作り込む。サポーターは、組織が適切な環境と作業環境を整備し、スクラムチームが自己管理(49)できるように支援する。持続可能なペースでスプリントで作業することは、_集中_ と一貫性を向上させる。

<!-- The Scrum Team and Stakeholders don't know what they will learn. Some learning provides greater certainty, and some creates more uncertainty (72). Some things could emerge, fade away, drop out, or become less of a priority. -->
スクラムチームとステークホルダーは、何を学ぶことになるかを事前には知り得ない。ある学びは確実性を高める一方で、ある学びはさらなる不確実性(72)を生み出すこともある。いくつかのことは出現し、消え去り、脱落したり、優先度が低下したりする可能性がある。

<!-- A Scrum Team has aligned autonomy. Aligned autonomy means the Scrum Team has the freedom to decide how to solve problems while staying focused on shared goals and outcomes, enabling both innovation and organizational coherence. Fostering a cognitively diverse Scrum Team is essential. Cross-pollination is more likely when the Scrum Team members collaborate, trust each other, and can self-reflect. -->
スクラムチームは、整合性の取れた自律性を有している。整合性の取れた自律性とは、スクラムチームが共通の目標とアウトカムに集中しながらも、課題の解決方法を自ら決定できる自由を持つ状態を指し、イノベーションと組織としての一貫性の両立を可能にするものである。認知的多様性を持つスクラムチームを育成することは不可欠である。スクラムチームのメンバーが互いに協働し、信頼し合い、自己を内省できるとき、他家受粉がより促進される。

<!-- For successful outcomes, the Scrum Team and Supporters should cultivate a willingness to unlearn outdated principles. Inspection and Adaptation require a climate that anticipates and tolerates mistakes. It is essential to _Focus_ criticism on ideas rather than individuals. All Scrum Team members 'play on the same field' with coherently overlapping work, and are all accountable for success. -->
成功につながるアウトカムのためには、スクラムチームおよびサポーターが時代遅れの原則を手放す姿勢、すなわちアンラーンする意欲を育むことが求められる。検査と適応を実現するには、間違いを予期し許容する風土が不可欠である。批判は個人ではなく、アイデアに対して向けることに _集中_ する必要がある。スクラムチームのすべてのメンバーは「同じフィールドでプレーする」存在であり、作業は一貫性をもって重なり合い、成功に対して全員が責任を負う。

<!-- ### Stakeholder {#stakeholder} -->
### ステークホルダー {#stakeholder}

<!-- Stakeholder is a role. A Stakeholder is an entity, individual, or group interested in, affected by, or impacting inputs, activities, and outcomes. Stakeholders have a direct or indirect interest inside or outside the organization, its Products, or services. -->
ステークホルダーは役割の一つである。ステークホルダーとは、インプット・活動・アウトカムに関心を持ち、そこから影響を受けたり影響を与える存在・個人・グループである。ステークホルダーは、組織・プロダクト・サービスの内外に直接的・間接的な利害関係を持つ。

<!-- Examples of Stakeholders include (but are not limited to) customers, decision-makers, users, vendors, influencers, managers, colleagues, leaders, legislators, financial sponsors, subject matter experts, and governance oversight. Inanimate, non-human Stakeholders such as the law or AI should not be ignored. Some Stakeholders have more impact or are more impacted than others, and each can favor different factors. Each Stakeholder has a different degree of power or influence. -->
ステークホルダーには、顧客、意思決定者、ユーザー、ベンダー、インフルエンサー、マネージャー、同僚、リーダー、立法者、資金提供者、特定分野のエキスパート、ガバナンス監督者が含まれるが、これらに限定されない。法律やAIなどの無機物で人間ではないステークホルダーも無視すべきではない。ステークホルダーは、他のステークホルダーよりも影響力が強かったり、影響を受けたりする場合があり、優先する要素がそれぞれ異なる。ステークホルダーごとに権力や影響力の程度が異なる。

<!-- A customer is any Stakeholder who receives value from the Product by purchasing and/or selecting it. Customers may include buyers (those who pay for or acquire the Product), decision-makers (those who approve or authorize its adoption), and end users (those who interact directly with the Product). Sometimes, the customer is not the same as the end-customer, e.g., in B2B2C (79) or B2B2B (78). -->
顧客とは、プロダクトを購入や選択することにより価値を受け取るステークホルダーの一種である。顧客には、購入者（プロダクトを購入または取得する人）、意思決定者（プロダクトの採用を承認または決定する人）、エンドユーザー（プロダクトを直接利用し、相互作用する人）が含まれる。B2B2C(79)やB2B2B(78)などのように、顧客と最終顧客が異なることがある。

<!-- For a successful Scrum adoption, it's crucial to have regular intentional interactions between Stakeholders (including but not limited to customers and users) and the Scrum Team. -->
スクラムの適用を成功させるためには、ステークホルダー（顧客とユーザーを含むがこれらに限定されない）とスクラムチームとの間で相互作用を生むやり取りを意図的かつ定期的に持つことが重要である。

<!-- A user is a Stakeholder who directly interacts with the Product to achieve specific goals or solve problems. Users experience the Product firsthand, whether it is a service, platform, or experience, and their feedback and satisfaction are crucial for ongoing Product improvement. Users may or may not have a say in purchasing decisions, but their adoption and engagement are essential for the Product's continued success. Sometimes, the user is not the same as the end-user, e.g., in B2B2C or B2B2B. For a successful Scrum adoption, it's crucial to have regular intentional interactions between users (and possibly end-users) and the Scrum Team. -->
ユーザーとは、特定の目標を達成するまたは課題を解決するためにプロダクトと直接相互作用するステークホルダーの一種である。ユーザーはサービス、プラットフォーム、体験などのプロダクトを実際に利用する。そのフィードバックや満足度はプロダクトの継続的改善に不可欠である。ユーザーは購入決定に発言権を持つ場合もあれば持たない場合もあるが、ユーザーによるプロダクトの利用とエンゲージメントはプロダクトの成功にとって重要である。B2B2CやB2B2Bなどのように、ユーザーとエンドユーザーが異なる場合もある。スクラムの適用を成功させるためには、ユーザー（必要に応じてエンドユーザーも）とスクラムチームとの間で相互作用を生むやり取りを意図的かつ定期的に持つことが重要である。

<!-- A decision-maker (called a 'chooser' by Jeff Patton) (82) is a Stakeholder with the authority to approve, select, or authorize the adoption or purchase of the Product. The decision-maker is responsible for evaluating options and making the final call, often considering the needs of both users and the broader organization. Decision-makers may or may not use the Product themselves, but their choices directly impact which Products are adopted and how value is delivered to other Stakeholders. For a successful Scrum adoption, it's often better to proceed with imperfect information, and capture emerging result feedback. -->
意思決定者(82)は、プロダクトの採用や購入を承認、選択、または決定する権限を持つステークホルダーの一種である。Jeff Pattonは「チューザー（選択者）」と呼んでいる。意思決定者は選択肢を評価し、最終判断を下す責任を負い、多くの場合、ユーザーや組織全体のニーズを考慮する。意思決定者自身がプロダクトを使用する場合もしない場合もあるが、彼らの選択はどのプロダクトが採用され、他のステークホルダーにどのように価値が提供されるかに直接影響する。スクラムの適用を成功させるためには、不完全な情報でも行動し、創発的な結果からのフィードバック（結果フィードバック）を捉えていくことが効果的である。

<!-- Legislators (plus, for the purpose of this document, external or internal policy makers) establish rules, policies, and boundaries for a Product's operation. They define legal, regulatory, or organizational frameworks that shape the Product's value delivery to Stakeholders and professionalism standards. They ensure the Product aligns with external or internal mandates, guiding its evolution and sustainability. For a successful Scrum adoption, it's crucial not to exaggerate or underestimate legal requirements. -->
立法者（加えて、この文書の目的に向けた外部または内部のポリシー立案者）は、プロダクトの運用に関するルール、ポリシー、境界を策定する。立法者はステークホルダーへのプロダクトの価値提供やプロフェッショナリズムの基準を形成する法的、規制的、または組織内の枠組みを定義する。立法者はプロダクトが外部や内部の要件に沿って進化し持続可能であるように導く。スクラムの適用を成功させるためには、法的要件を過大評価も過小評価もせず、適切に対応することが重要である。

<!-- Financial sponsors provide funding and resources for Product development, launch, and improvement. They assess the Product's viability, value, and feasibility, investing informed by its potential to deliver continuous value to Stakeholders. Financial sponsors influence the Product vision, strategy, and goals to ensure alignment with return on investment and long-term sustainability. For a successful Scrum adoption, it's crucial to have a flexible attitude and flexible funding as new information comes to light. -->
資金提供者は、プロダクト開発、リリース、改善のために資金やリソースを提供する。資金提供者はプロダクトの実現可能性、価値、実行可能性を評価し、ステークホルダーに継続的に価値を提供できる可能性を見極めて投資を行う。資金提供者は投資回収や長期的な持続性との整合を確かなものとするため、プロダクトのビジョン、戦略、目標に影響を与える。スクラムの適用を成功させるためには、新しい情報が明らかになるにつれて、柔軟に姿勢や資金運用を変えることが求められる。

<!-- Subject matter experts contribute deep knowledge or unique skills essential to Product creation, evolution, and maintenance. Whether focused on technology, design, compliance, or a specific domain, subject matter experts support the Product's usability, feasibility, professionalism, and extendability but do not get in the way of self-managing Scrum Teams (49). They can help address satisfaction gaps and contribute to the Product's ability to adapt and identify, represent, or measure emergence (71). For a successful Scrum adoption, it's crucial to foster regular transfer of learning from subject matter experts to and across the Scrum Team. -->
特定分野のエキスパートは、プロダクトの作成、進化、保守に不可欠な深い知識や独自のスキルを提供する。技術、設計、コンプライアンス、特定ドメインなどの分野で、特定分野のエキスパートはプロダクトの使いやすさ、実現可能性、プロフェッショナリズム、拡張性を支援するが、自己管理スクラムチーム(49)を妨げてはならない。特定分野のエキスパートは満足度ギャップを解消し、プロダクトが適応しやすくなるよう支援し、創発(71)を特定、表現、測定する役割を担う。スクラムの適用を成功させるために、特定分野のエキスパートからスクラムチームへ、そしてスクラムチーム全体への定期的な学びの移転を促進することが重要である。

<!-- The term satisfaction gap means the difference between what Stakeholders experience now and what they wish their experience was. In other words, it's the gap between how satisfied Stakeholders are with a Product today and how satisfied they could be. -->
満足度ギャップとは、ステークホルダーが現在体験していることと彼らが体験したいと望むこととの差を指す。言い換えれば、ステークホルダーが現在のプロダクトにどれだけ満足しているかと、ここからどれだけ満足させられるかとの間のギャップである。

<!-- Governance refers to structures, standards, regulations, norms, processes, and practices that consciously constrain and guide a Product's direction, decision-making, and accountability. Governance fosters transparency and guides adherence to standards of value, viability, and professionalism. It provides mechanisms for managing risks and adapting the Product to changing needs or environments, supporting its long-lived and evolutionary nature. For a successful Scrum adoption, it's crucial that governance is coherent with Scrum, e.g., a single point of contact per governance area, who has intentional interactions around quality and compliance with the Scrum Team, regular Inspection and Adaptation of the governance, and no surprises. -->
ガバナンスとは、プロダクトの方向性、意思決定、説明責任を意図的に制約する構造、標準、規制、規範、プロセス、プラクティスを指す。ガバナンスは透明性を促進し、価値、実現可能性、プロフェッショナリズムの基準への遵守を促進させる。ガバナンスはリスク管理を支援し、変化するニーズや環境に合わせてプロダクトを適応させるメカニズムを提供し、プロダクトを長期的に成長させ続ける土台を提供する。スクラムの適用を成功させるために、ガバナンスがスクラムと一貫性を持つことが重要である。たとえば、ガバナンス領域ごとに単一の連絡窓口を設定し、品質やコンプライアンスに関する意図的な対話をスクラムチームと行い、ガバナンス自体を定期的に検査・適応し、予期せぬ事象が生じないようにすることが重要である。

<!-- ### Supporter {#supporter} -->
### サポーター {#supporter}

<!-- Supporter is a specific Stakeholder type. Supporters are supporting Stakeholders and change agents. Supporters are often part of a powerful guiding coalition (83), who inspire and remove demotivating factors. Supporters support the Scrum Team to thrive and influence the organization's workflows, processes, systems, Products, services, and work environment to become coherent with a Scrum adoption and emergence (71). Supporters should participate when and where needed or as requested. Value creation often requires effective and constructive collaboration with other Stakeholders. -->
サポーターは特定のステークホルダータイプである。サポーターは支援するステークホルダーでありチェンジエージェントである。サポーターはしばしば強力な指導連合(83)の一部であり、インスピレーションを与え、やる気をそぐ要因を取り除く。サポーターは、スクラムチームが繁栄することを支援し、組織のワークフロー・プロセス・システム・プロダクト・サービス・作業環境がスクラム適用と創発(71)と一貫するよう影響を与える。サポーターは必要な時と場所で、または要求に応じて参加すべきである。価値創造はしばしば他のステークホルダーとの効果的で建設的なコラボレーションを必要とする。

<!-- Depending on the size of the organization, examples of Supporters include (but are not limited to) colleagues, decision-makers, financial sponsors, governance oversight, managers, subject matter experts, marketing, HR, finance, procurement, and early adopters. Supporters who do not empower Scrum Teams to do what is recommended in this document are not really Supporters. Executives and board members have a crucial role in fostering a climate where Supporters support. Supporters should demonstrate leadership that the Scrum Team appreciates. -->
組織の規模に応じて、サポーターの例には、同僚、意思決定者、資金提供者、ガバナンス監督、マネージャー、特定分野のエキスパート、マーケティング、HR、財務、調達、スクラム導入経験者が含まれる（ただしこれらに限定されない）。この文書で推奨されることをスクラムチームができるようにエンパワーメントしないサポーターは、サポーターとはいえない。経営層と役員は、サポーターが支援できる環境を育むうえで、重要な役割を持つ。サポーターは、スクラムチームにとって価値のあるリーダーシップを発揮すべきである。

<!-- ### Artificial Intelligence {#artificial-intelligence} -->
### 人工知能 {#artificial-intelligence}

<!-- Artificial Intelligence (AI) is increasingly part of the work environment and may significantly expand a Scrum Team's capabilities in discovery, decision-making, Product development, and value realization. -->
人工知能（AI）はますます作業環境の一部となり、ディスカバリー、意思決定、プロダクト開発、価値実現におけるスクラムチームの能力を大幅に拡張する可能性がある。

<!-- AI may enhance Scrum through: -->
AIは以下を通じてスクラムを強化する可能性がある：

<!--
- Empirical Process Control (64-66): AI-driven analytics improve transparency, inspection, and adaptation.
- Cognitive Augmentation: AI allows human Scrum Team members to focus on strategic, creative, and ethical considerations.
- Continuous Value Adaptation: AI could update and reprioritize Product Backlog Items informed by live user feedback and trends.
- Systems Insight: AI identifies hidden interdependencies, improving data-informed decision-making.
-->
- 経験的プロセス制御(64-66)：AI駆動の分析により、透明性・検査・適応が改善される。
- 認知的拡張：AIにより、人間のスクラムチームメンバーは戦略的・創造的・倫理的な検討に集中できる。
- 継続的な価値適応：AIは、リアルタイムのユーザーフィードバックとトレンドに基づき、プロダクトバックログアイテムの更新と再優先順位付けを行うことができる。
- システム洞察：AIは隠れた相互依存関係を特定し、データに基づいた意思決定を改善する。

<!-- The possibilities are endless. Scrum Teams could leverage AI to: -->
可能性は無限である。スクラムチームは以下のためにAIを活用できる：

<!--
- Discover ambiguities in text and continuously inspect its own recommendations and results for bias, errors, and unintended consequences.
- Regularly validate and adapt models and applications.
- Foster transparency in Product Backlog ordering (sequencing).
- Create agents as AI team members.
- AI can be helpful to deliberately test and challenge the existing thinking.
-->
- テキスト内の曖昧さを見つけ出し、自らの推奨や結果に偏り、誤り、意図しない結果が含まれていないかを継続的に検査する。
- モデルとアプリケーションを定期的に検証し適応させる。
- プロダクトバックログの順序付け（シーケンス化）における透明性を促進する。
- AIチームメンバーとしてエージェントを作成する。
- AIは既存の思考を意図的にテストし挑戦するのに役立つ。

<!--
The dangers are also endless. 
Maintain clear human accountability for all outcomes (guided by the accountabilities from Scrum), 
   using AI as a powerful but supervised decision-making partner. 
This is known as keeping the 'human in the loop.' 
While AI can enhance innovation and effectiveness at the lowest costs, 
   it does not replace human accountability. 
AI should support—not override—Scrum's empirical process control (64-66) and ethical (57) decision-making. 
The Scrum Team remains accountable for delivering valuable outcomes, 
   assessing evidence, and upholding professionalism.
-->
危険もまた、無限にあるものだ。
すべてのアウトカムに対して、人間に説明責任があることを明確に維持した上で（スクラムにおける説明責任に従う）、
   強力だが監督された意思決定パートナーとしてAIを使う。
これは「ヒューマン・イン・ザ・ループ」として知られている。
AIによって、最小のコストでイノベーションと効果性を高めることができる。
   しかし、人間の説明責任を置き換えることはできない。
AIはスクラムにおける経験的プロセス制御(64-66)と倫理的(57)意思決定を支援すべきであり、
   上書きしてしまってはならないのだ。
スクラムチームは、
    価値あるアウトカムの提供・エビデンスの評価・プロフェッショナリズムを守ることに対して、
    引き続き説明責任を負う。

<!--
AI can be a supporting tool if used with good intent. 
AI tools should be evaluated 
  like any other contributor 
    to psychological flow (70) and learning: 
Do they improve feedback loops? 
Do they help validate assumptions faster? 
Do they act, 
   and when they do, 
   is it ethical (57) action?
-->
AIは善意に基づいて使用されれば、人を支援するツールになりうる。
AIツールは、
  他の貢献者を評価する際と同様に
    心理学的フロー(70)や学習において、評価されるべきである。
フィードバックループを改善するだろうか？
仮説をより迅速に検証するのに役立つだろうか？
行動するだろうか？
  行動するならば、
    倫理的(57)な行動といえるだろうか？


<!-- Psychological flow (70) is a state of complete absorption and enjoyment in an activity, where action and awareness merge, and time seems to pass differently. -->
心理学的フロー(70)は、活動への完全な没頭と楽しみの状態であり、行動と認識が融合し、時間が異なって過ぎるように見える。

<!-- Scrum encourages the Scrum Team to experiment with AI responsibly using small, sometimes reversible trials. Adaptation and inspection apply not only to the Product but also to how AI is integrated into delivery. -->
スクラムは、スクラムチームが小さく、時には可逆的な試行を使用してAIを責任を持って実験することを奨励する。適応と検査は、プロダクトだけでなく、AIが提供にどのように統合されるかにも適用される。

<!-- The focus should remain on the human dynamics of teamwork and collaboration, with AI positioned as a potential aid. -->
焦点は、チームワークとコラボレーションの人間の力学に留まるべきであり、AIは潜在的な支援として位置付けられる。

<!-- ### Product Developer {#product-developer} -->
### プロダクト開発者 {#product-developer}

<!-- 'Product Developer' is a role and an accountability. All Product Developers together should possess all the skills needed to create Increments. The combined skill set is often referred to as cross-functional. -->
「プロダクト開発者」は役割および説明責任の一つである。すべてのプロダクト開発者はインクリメントを作成するために必要な一通りのスキルを合わせ持つべきである。これらのスキルセットは機能横断型とよく呼ばれる。

<!-- A Product Developer may be human or automated. Human Product Developers are _Committed_ to creating, researching, inspecting, and adapting any aspect of a releasable Increment each Sprint. Their primary _Focus_ is on the current Sprint. Some capacity is often invested into future-looking refinement and examining result feedback, side effects, or other learning. -->
プロダクト開発者は人間でも自動化された存在でもよい。人間のプロダクト開発者は、リリース可能なインクリメントのあらゆる側面をスプリント毎に作成、調査、検査、適応することを _確約_ している。彼らの主な _集中_ は現在のスプリントにある。ただし、プロダクト開発者の一部のキャパシティは将来に向けたリファインメントや、結果からのフィードバック（結果フィードバック）、副次的影響、その他の学習の検査に投資されることが多い。

<!-- Product Developers adhere to the Definition of Output Done and strive for net improvement. The Product Developers achieve the best results if they _Focus_ solely on one Product. If, at a given point in time, the Product Owner or Scrum Master actively works on items in the Sprint Backlog, they perform that work as Product Developers. -->
プロダクト開発者はアウトプット完成の定義を遵守し、実質的な改善を目指す。プロダクト開発者は、1つのプロダクトに _集中_ することで最良の結果を達成する。ある時点でプロダクトオーナーまたはスクラムマスターがスプリントバックログのアイテムに対する作業に取り組む場合、その作業はプロダクト開発者として実行する。

<!-- The Product Developers should adopt appropriate behaviors depending on the situation; these include (but are not limited to) collaborator, creator, and a champion of technical quality, discovery, delivery, and value validation. -->
プロダクト開発者は状況に応じて適切な行動を取る必要がある。例えば、協力者、クリエイター、技術的品質、探索、デリバリー、価値検証の推進者として行動するなどがあるが、これらに限定されない。

<!-- _At least one Product Developer should be human._ Multiple human Product Developers often improve cognitive diversity, helpful for addressing complexity. -->
_少なくとも1人のプロダクト開発者は人間であるべきである。_ 複数の人間のプロダクト開発者は多くの場合に認知的多様性を向上させ、複雑性への対応に役立つ。

<!-- Product Developers are always collectively accountable for: -->
プロダクト開発者は常に以下に対して説明責任を負う：

<!-- - Creating an emergent plan in the Sprint Backlog for achieving the Sprint Goal; -->
- スプリントゴール達成のための創発的な計画をスプリントバックログ内で作成する
<!-- - Instilling quality by adhering to and improving the Definition of Output Done; -->
- アウトプット完成の定義を遵守し改善することで品質を作り込む
<!-- - Creating at least one usable Increment every Sprint; -->
- 毎スプリント少なくとも1つの使用可能なインクリメントを作成する
<!-- - Learning, often through data that is guided by the Definition of Outcome Done; -->
- アウトカム完成の定義により導かれるデータなどを通じて学習する
<!-- - Adapting their plan each day toward the Sprint Goal; -->
- スプリントゴールに向けて日々計画を適応させる
<!-- - Holding each other accountable as professionals; and, -->
- プロフェッショナルとしてお互いに責任を負う
<!-- - Net improvement. -->
- 実質的な改善

<!-- Context matters, it is crucial to consider the specific circumstances. But as a rule of thumb, a Product Developer who is neither willing nor ready nor able to be a professional should step down as a Product Developer. -->
文脈は重要であり、その場で起きている特定の状況を考慮することが重要である。しかし経験則として、プロフェッショナルとしての意志、準備、能力がないプロダクト開発者は、その役割から退くべきである。

<!-- ### Product Owner {#product-owner} -->
### プロダクトオーナー {#product-owner}

<!-- Product Owner is a role and an accountability. The Product Owner must be human. To be effective, the Product Owner should be a leader for the Product. The Product Owner maximizes long-term value and needs to know where the value is and when it is needed. The Product Owner is expected to work at all levels and across all relevant business areas. The Product Owner collaborates with Stakeholders, the Scrum Master, and the Product Developers to create value. -->
プロダクトオーナーは役割および説明責任の一つである。プロダクトオーナーは人間でなければならない。効果的であるために、プロダクトオーナーはプロダクトのリーダーであるべきである。プロダクトオーナーは長期価値を最大化し、価値がどこにあり、いつ必要かを知る必要がある。プロダクトオーナーは、すべてのレベルおよび関連するすべてのビジネス領域において業務を行うことが求められる。プロダクトオーナーは、ステークホルダー・スクラムマスター・プロダクト開発者と協働して価値を創出する。

<!-- The Product Owner uses the Product Backlog to define what gets built and in what approximate order. The Product Owner always keeps the Product Goal in mind; their primary _Focus_ is to maximize long-term value at every step. -->
プロダクトオーナーは、プロダクトバックログを用いて、何を構築するか、そしておおよそどの順序で構築するかを定義する。
プロダクトオーナーは常にプロダクトゴールを念頭に置いており、主要な _集中_ は、あらゆる段階で長期的な価値を最大化することである。

<!--
The Product Owner is not defined by analyzing and writing detailed Product Backlog Items. 
Every minute spent not trusting the Product Developers is a missed chance 
    to think more strategically, work more with Stakeholders, or create more value. 
The Product Owner should adopt appropriate behaviors depending on the situation; 
    these include (but are not limited to) 
    being a visionary, customer representative, collaborator, influencer, 
    experimenter, decision maker, 
    and champion of Stakeholder engagement, clarity, Product quality, and value realization.
-->
プロダクトオーナーは、詳細なプロダクトバックログアイテムの分析と記述によって定義されるものではない。
プロダクト開発者を信頼せずに細かく管理・監督することに費やす分だけ、
    より戦略的に思考し、よりステークホルダーと連携し、
    より価値を生み出すための機会が奪われるのである。
プロダクトオーナーは状況に応じて適切な行動を取るべきであり、
    それには以下が含まれる（ただしこれらに限定されない）。
    ビジョナリー、顧客代表、協力者、影響者、
    実験者、意思決定者、
    そしてステークホルダーエンゲージメント・明確性・プロダクト品質・価値実現の推進者など。

<!-- The Product Owner is always accountable for: -->
プロダクトオーナーは常に以下に対して説明責任を負う：

<!-- - Stakeholder engagement, understanding Stakeholders, their power, expectations, needs, and wants; -->
<!-- - Continuously sensing, listening, learning, and adapting as needed; -->
<!-- - Continuously balancing trade-offs, including but not limited to: -->
<!--   - Quality, speed, capability, risk reduction, value, simplicity (149); -->
<!--   - Stakeholders and their multiplicity of often competing expectations and limits; -->
<!--   - Value, work climate, potential customers; -->
<!-- - Developing and explicitly communicating the Product Goal; -->
<!-- - Developing and effectively communicating a coherent Product narrative; -->
<!-- - Creating and clearly communicating Product Backlog Items; -->
<!-- - Ordering Product Backlog Items; -->
<!-- - Ensuring that the Product Backlog is transparent and understood; -->
<!-- - Effectively communicating outcomes supported by measures in the Definition of Outcome Done; -->
<!-- - Having the final say on the Definition of Outcome Done; -->
<!-- - Fostering the high-quality creation, discovery, delivery, and validation of value; and, -->
<!-- - Other Product management activities as required. -->
- ステークホルダーエンゲージメント・ステークホルダーとその権力・期待・ニーズ・要望の理解。
- 必要に応じた継続的な感知・傾聴・学習・適応。
- 以下の事項（ただしこれらに限定されない）においてトレードオフのバランスを取り続けること：
  - 品質・速度・ケイパビリティ・リスク削減・価値・シンプルさ(149)。
  - ステークホルダー・しばしば相反する複数の期待と制約。
  - 価値・作業風土・潜在顧客。
- プロダクトゴールを策定し、それを明確に伝えること。
- 一貫性のあるプロダクトのナラティブを構築し、それを効果的に伝えること。
- プロダクトバックログアイテムの作成と明確なコミュニケーション。
- プロダクトバックログアイテムの並び替え。
- プロダクトバックログの透明性が高く、関係者に正しく理解されることの保証。
- アウトカム完成の定義において、測定指標に基づくアウトカムを効果的に伝えること。
- アウトカム完成の定義に対する最終決定権。
- 高品質な価値の創造・ディスカバリー・デリバリー・検証の促進。
- 必要に応じた他のプロダクトマネジメント活動。

<!-- The Product Owner may do the above work or collaborate with the Scrum Team to mutually agree on responsibilities for doing the above work. Regardless, the Product Owner remains accountable. -->
プロダクトオーナーは、上記の作業を自ら実施することもできるし、スクラムチームと協力してその作業に関する責任を相互に合意することもできる。いずれにしても、プロダクトオーナーが説明責任を負う。

<!-- For Product Owners to succeed, all Stakeholders and Supporters should _Respect_ their decisions. These decisions are visible in the content and ordering of the Product Backlog and through the inspectable Increment at the Sprint Review. The Product Owner has delegated authority from the organization. -->
プロダクトオーナーが成功するためには、すべてのステークホルダー・サポーターは、その意思決定を _尊敬_ すべきである。これらの意思決定は、プロダクトバックログの内容・順序・スプリントレビューで検査可能なインクリメント...を通じて可視化される。プロダクトオーナーは組織から権限を委譲されている。

<!-- Product Ownership requires strong Product management skills and domain skills. A Product Owner lacking these skills may need support and guidance until they develop the necessary expertise. Context matters. But as a rule of thumb, a Product Owner who is neither willing, ready, nor able to gain Product management skills should step down as Product Owner. A domain subject matter expert is not necessarily the best choice for a Product Owner as Product management skills and leadership are needed; for example, the Product Developer accountability is often more appropriate. -->
プロダクトオーナーシップには、優れたプロダクトマネジメントスキルおよびドメインに関するスキルが求められる。これらのスキルを欠くプロダクトオーナーは、必要な専門性を身につけるまでの間、支援とガイダンスを受ける必要がある。文脈は重要である。しかし経験則として、プロダクトマネジメントスキルを身につける意思・準備・能力のいずれも持たないプロダクトオーナーは、その職務を辞するべきである。特定分野のエキスパートが、必ずしもプロダクトオーナーに最適であるとは限らない。なぜなら、プロダクトマネジメントスキルとリーダーシップが求められるためである。例えば、プロダクト開発者の方が適切である場合も多い。

<!-- If the Scrum Team inadvisably works on multiple Products, platforms, or projects, each Product, platform, or project manager should be a Stakeholder (and Supporter) of the Product Owner and collaborate to maximize long-term value. Scrum encourages the Scrum Team to stay _Focused_ and _Committed_, helping it deliver valuable outcomes and avoid the pitfalls associated with operating as a 'feature-factory.' -->
スクラムチームが不適切に複数の製品、プラットフォーム、またはプロジェクトに取り組む場合、各プロダクト、プラットフォーム、またはプロジェクトのマネージャーはプロダクトオーナーのステークホルダー（およびサポーター）となり、長期的な価値を最大化するために協力する必要がある。スクラムはスクラムチームが _集中_ と _確約_ を維持することを奨励し、価値あるアウトカムを届け、「フィーチャーファクトリー」として運営するリスクを回避することを支援する。

<!-- The Product Owner is one person, not a committee or technology. Those wanting to change the Product Backlog need to convince the Product Owner. The Product Owner maximizes long-term value and often makes trade-offs in doing so. -->
プロダクトオーナーは一人の人間であり、委員会やテクノロジーではない。プロダクトバックログを変更したい人は、プロダクトオーナーを説得する必要がある。プロダクトオーナーは長期的な価値を最大化し、その過程でしばしばトレードオフを行う。

<!-- ### Scrum Master {#scrum-master} -->
### スクラムマスター {#scrum-master}

<!-- The Scrum Master is a role and an accountability. The Scrum Master must be human. The Scrum Master is a change agent who works at all organizational levels and across business areas. The Scrum Master leads by example and guides the effectiveness of the Product Owner, Scrum Team, Stakeholders, and Supporters in their adoption of Scrum. The Scrum Master understands complexity (30-35) and is skillful in enabling the next right thing. -->
スクラムマスターは役割および説明責任の一つである。スクラムマスターは人間でなければならない。スクラムマスターはチェンジエージェントであり、組織全体のあらゆるレベルや事業領域で活動する。スクラムマスターは模範を示してリードし、プロダクトオーナー、スクラムチーム、ステークホルダー、サポーターがスクラムを適用する際の効果性を高めるよう導く。スクラムマスターは複雑性(30-35)を理解し、次の正しい行動を可能にするスキルを備える。

<!-- The Scrum Master should adopt appropriate behaviors depending on the situation; these include (but are not limited to) being a guide, coach, mentor, teacher, observer, impediment remover, agent of change, effectiveness facilitator, and continuous improvement champion. The Scrum Master is neither a team administrator, status manager, taskmaster, rule-dictator, meeting-room booker, report dashboard administrator, chairperson, hero, coordinator, nor an in absentia Scrum Master, leaving everything to 'self-management.' -->
スクラムマスターは状況に応じて適切に振る舞う必要がある。これにはガイド、コーチ、メンター、教師、観察者、障害物除去者、チェンジエージェント、効果性のファシリテーター、継続的改善の推進者などが含まれるが、これらに限定されない。一方でスクラムマスターはチーム管理者、進捗管理者、タスク指示者、ルール決定者、会議室予約係、レポートやダッシュボードの管理者、議長、ヒーロー、調整役ではなく、すべてをチームの「自己管理」に任せて不在のスクラムマスターでもない。

<!-- The Scrum Master is accountable for the effectiveness of the Scrum Team, Stakeholders, Supporters, and the affected people in embracing empiricism (67), self-management, and Scrum adoption as described in this document. The Scrum Master addresses whatever impedes or slows a Scrum Team's progress and cannot be resolved by the Scrum Team. -->
スクラムマスターは、スクラムチーム・ステークホルダー・サポーター・影響を受ける人々が、本文書で説明されている経験主義(67)・自己管理・スクラム適用の効果性を高めることに説明責任を負う。スクラムマスターはスクラムチームが解決できない、進捗を阻害したり遅らせたりするあらゆる障害物の除去に取り組む。

<!-- The Scrum Master supports the Scrum Team, Product Owner, and Supporters in several ways, including: -->
スクラムマスターは、さまざまな形でスクラムチーム、プロダクトオーナー、サポーターを支援する：

<!-- - Helping everyone understand Scrum theory and practice, educating or coaching when needed; -->
- 全員がスクラムの理論と実践を理解できるよう支援する。そのために必要に応じて教育やコーチングを行う
<!-- - Enabling the Scrum Team and Supporters to improve in a variety of ways continuously; -->
- スクラムチームとサポーターが様々な方法で継続的に改善できるよう支援する
<!-- - Fostering timely, purposeful, and intentional interactions; -->
- タイムリーで意図的な目的を持った相互作用を促進する
<!-- - Ensures the Scrum Team has a suitable Definition of Output Done; -->
- スクラムチームが適切なアウトプット完成の定義を持てるよう努める
<!-- - Ensuring that all Scrum events take place and are constructive, productive, and kept within the timebox; -->
- すべてのスクラムイベントが実施され、建設的かつ生産的であり、タイムボックス内で完了するようにする
<!-- - Causing the removal of impediments to Product-related work and to effective Scrum adoption; -->
- プロダクトに関連する作業や効果的なスクラム適用を阻害する障害物を取り除く
<!-- - Coaching toward self-management (49) and cross-functionality; -->
- 自己管理（49）と機能横断な行動に向けたコーチング
<!-- - Helping the Scrum Team, Stakeholders, and Supporters understand their importance in supporting high-value Increments that meet the Definition of Output Done toward the Product Goal and Definition of Outcome Done; -->
- プロダクトゴールおよびアウトカム完成の定義の実現に向かうために、アウトプット完成の定義を満たす価値の高いインクリメントの作成をスクラムチーム、ステークホルダー、サポーターがサポートすることの重要性を理解できるように支援する
<!-- - Improving adaptiveness (80) and optimizing the flow of value; -->
- 適応性(80)を改善し、フロー（価値の流れ）を最適化する
<!-- - Fostering evidence-informed confidence but being compassionate and timely to avoid overconfidence; -->
- エビデンスに基づく自信を育みながらも、過信を避けるために相手の気持ちに共感しタイムリーであろうとする
<!-- - Fostering change agency and general agency by the Scrum Team and Supporters; -->
- スクラムチームやサポーターがチェンジエージェントとして振る舞い、あらゆることに主体的に行動するよう促す
<!-- - Encouraging helpful behaviors within the Scrum Team that are aligned with the Scrum Values to foster trust, collaboration, and high performance; and, -->
- 信頼、コラボレーション、高パフォーマンスを促進するスクラムの価値基準に沿ってスクラムチームが効果的に行動することを支援する
<!-- - Fostering the Scrum Team to deliver valuable work, get feedback, and do rework as needed, quickly and often. -->
- スクラムチームが価値ある作業を提供し、フィードバックを得て、必要に応じて迅速かつ頻繁に再作業をできるようにする

<!-- The Scrum Master supports the Scrum Team in several ways, including: -->
スクラムマスターは、さまざまな形でスクラムチームを支援する：

<!-- - Supporting the Scrum Team in its formation, upskilling, and continuous improvement; -->
- スクラムチームの立ち上げ、スキル向上、継続的改善を支援する
<!-- - Helping the Scrum Team understand the need for clear and concise Product Backlog Items that deliver value; and, -->
- 価値を提供する明確で簡潔なプロダクトバックログアイテムの必要性についてスクラムチームに理解してもらう
<!-- - Being vigilant that the entire Scrum Team is collaborating purposefully and intentionally with each other and Stakeholders, honoring the Definition of Output Done, and focused on creating high-value Increments according to the Definition of Outcome Done. -->
- スクラムチーム全体が互いに、そしてステークホルダーと意図的かつ目的を持って協力し、アウトプット完成の定義を尊重し、アウトカム完成の定義に沿って価値の高いインクリメントを作成することに集中できるよう常に意識を向ける。

<!-- The Scrum Master supports the Product Owner in several ways, including: -->
スクラムマスターは、さまざまな形でプロダクトオーナーを支援する：

<!-- - Helping find techniques for effective Product Goal definition and Product Backlog management; -->
- 効果的なプロダクトゴールの定義とプロダクトバックログ管理の⽅法を探すことを支援する
<!-- - Helping establish emergent Product planning for a complex (30-35) environment; -->
- 複雑な(30-35)環境における創発的なプロダクト計画の策定を支援する
<!-- - Helping the Product Owner to express outcomes as measures through the Definition of Outcome Done; -->
- アウトカム完成の定義に沿って測定されたアウトカムをプロダクトオーナーが表現できるようにする
<!-- - Helping the Product Owner understand the need for clear and concise Product Backlog Items that deliver value; and, -->
- 価値を提供する明確で簡潔なプロダクトバックログアイテムの必要性についてプロダクトオーナーに理解してもらう
<!-- - Helping the Product Owner to _Focus_ on value realization. -->
- プロダクトオーナーが価値実現に _集中_ できるよう支援する

<!-- The Scrum Master supports the Stakeholders in several ways, including: -->
スクラムマスターは、さまざまな形でステークホルダーを支援する：

<!-- - When more than expertise is needed, helping affected people and Stakeholders understand and adopt: -->
<!--   - An empirical approach for complex (30-35) work where cause and effect are only coherent in retrospect, -->
<!--   - Going beyond empirical process control, e.g., running multiple parallel safe-to-fail experiments, seeking fresh thinking, exaptation, or testing educated hunches. Exaptation means taking something that was made or used for one purpose and using it for a different purpose, especially when facing new or unclear situations. -->
<!-- - Fostering actions that support the mantra 'Stop putting items in progress; start finishing items;' -->
<!-- - Facilitating Stakeholder collaboration as requested or needed; -->
<!-- - Helping Stakeholders understand the need for clear and concise Product Backlog Items that deliver value; and, -->
<!-- - Helping the Stakeholders to _Focus_ primarily on value realization. -->
- 専門知識を超える取り組みが必要なとき、影響を受ける人やステークホルダーが以下を理解し採用することを手助けする：
  - 後から振り返ってはじめて因果関係が明らかになるような、複雑な(30-35)仕事における経験主義的アプローチ
  - 経験的プロセス制御の枠を超えたアプローチ。例えば、安全に失敗できる実験の複数並行した実行、新たな思考の追求、外適応、経験的な直感の試行。外適応（exaptation）とは、ある目的のために作成または使用されたものを、新たな状況や不透明な状況において、異なる目的に使用すること
- 「アイテムを仕掛中にするのはやめ、完成させる活動を始めよう」というモットーに沿う行動を促進する
- 要求・必要に応じて、ステークホルダーのコラボレーションを促進する
- 価値を提供する、明確で簡潔なプロダクトバックログアイテムの必要性についてステークホルダーの理解を手助けする
- ステークホルダーが価値実現に最も _集中_ できるよう手助けする

<!-- The Scrum Master works with the Supporters in several ways, including: -->
スクラムマスターは、さまざまな形でサポーターと協働する：

<!-- - Leading, training, and coaching the Supporters in the Scrum adoption; -->
<!-- - Clarifying what is getting in the way of an effective Scrum adoption; -->
<!-- - Facilitating disciplined emergent change in a direction to support the Scrum adoption; and, -->
<!-- - Fostering organizational changes toward ease of delivery vs ease of management. -->
- スクラム適用においてサポーターに対し指導・トレーニング・コーチする
- 効果的なスクラムの適用を阻害している要因を明確にする
- スクラム適用を支援する方向への規律ある創発的変化を促進する
- 管理の容易さからデリバリーの容易さを重視する組織への変革を促進する

<!-- The Scrum Master works with the organization in several ways, including: -->
スクラムマスターは、さまざまな形で組織と協働する：

<!-- - Leading, training, and coaching the organization in its Scrum adoption(s); -->
<!-- - Planning and advising Scrum adoptions within the organization; -->
<!-- - Working with related departments in how they could support the Scrum adoption; and, -->
<!-- - Removing barriers to the Scrum adoptions. -->
- 組織へのスクラム適用を指導・トレーニング・コーチする
- 組織内のスクラム適用計画を策定し助言する
- 関連部署とスクラム適用を支援する方法について協議する
- スクラムの適用を妨げる障害物を取り除く

<!-- Scrum Masters can team up with other Scrum Masters or Supporters to support the whole organization; they can also collaborate with other change agents or leaders when needed. The Scrum Master, as a change agent, is accountable for the quality of the Scrum adoption and should collaborate with other change agents to improve it. -->
スクラムマスターは組織全体を支援するために他のスクラムマスターやサポーターとチームを組むことができる。必要に応じて他のチェンジエージェントやリーダーと協力することもできる。スクラムマスターはチェンジエージェントとしてスクラム適用の品質に説明責任を負い、その品質を改善するために他のチェンジエージェントと協力して進めるべきである。

<!-- The Scrum Master is one person, not a committee or technology, and serves the Product Owner, Scrum Team, Stakeholders, and the larger organization. Being a change agent and leader, the Scrum Master should generally invite people to participate in the change. It is helpful if the Scrum Master has an understanding of the flow of value (68,69), lean (63), complexity theory (30-35), and other supporting and complementary theory in this document, as well as assisting people with the _how_. It is also helpful if the Scrum Master is unrelenting and has an insatiable appetite for learning and change. -->
スクラムマスターは1人の人間であり、委員会や技術ではない。スクラムマスターはプロダクトオーナー、スクラムチーム、ステークホルダー、より大きな組織に奉仕する。チェンジエージェントかつリーダーであり、一般的に人々を変革へ参加するよう招待すべきである。スクラムマスターが価値の流れ(68,69）、リーン(63)、複雑性理論(30-35)、そしてこの文書に記載されたその他の支援的・補完的理論を理解し、どのように（_How_）行動すべきかを人々に示すことが望ましい。粘り強く、学びと変化への飽くなき欲求を持っていることもスクラムマスターに求められる素養である。

<!-- Being a Scrum Master is a calling where helping others succeed is reward enough. A Scrum Master doesn't seek the spotlight. Like any good leader, they give credit to others and take responsibility when things go wrong. Staying in the role for a longer time helps guide the Scrum Team toward its full potential, but only if the Product Developers collectively develop self-management. Parent-style Scrum Master behavior does not foster a self-managing Scrum Team. Context matters. But as a rule of thumb, a Scrum Master who is neither willing, ready, nor able to be an agent of change should step down as a Scrum Master. -->
スクラムマスターは、他者の成功に貢献することを大きなやりがいとする役割である。スクラムマスターは目立とうとはしない。優れたリーダーと同様に、功績を他者に譲り、物事がうまくいかない時には責任を取る。長期的にスクラムマスターを務めることでスクラムチームの潜在能力を最大限引き出すことができるが、それはプロダクト開発者がチームとして自己管理を身につけた場合に限る。親のようなスクラムマスターの振る舞いは自己管理スクラムチームの成長を妨げる。文脈は重要だが、経験則として、変革の担い手となる意志、準備、能力がないスクラムマスターはその役割から退くべきである。

<!-- ## The Scrum Artifacts in the Expansion Pack {#the-scrum-artifacts-in-the-expansion-pack} -->
## 拡張パックにおけるスクラムの作成物 {#the-scrum-artifacts-in-the-expansion-pack}

<!-- Scrum's artifacts provide Transparency about what the Scrum Team and Stakeholders believe will deliver value. Thus, everyone can have the same basis for Inspection and Adaptation. -->
スクラムの作成物は、スクラムチームとステークホルダーが価値を生み出すと信じている内容について、透明性をもたらす。これにより、誰もが同じ基準で作業内容を検査し、必要に応じて適応できるようになる。

<!-- Each artifact contains a commitment: -->
また、各作成物には「確約（コミットメント）」が含まれている。

<!-- - For the Product serving the Stakeholders, it is the Definition of Outcome Done. -->
- ステークホルダーに提供するプロダクトについては、アウトカム完成の定義
<!-- - For the Increment that is a candidate update for the Product, it is the Definition of Output Done. -->
- プロダクトのアップデート予定であるインクリメントについては、アウトプット完成の定義
<!-- - For the Product Backlog, it is the Product Goal. -->
- プロダクトバックログについては、プロダクトゴール
<!-- - For the Sprint Backlog, it is the Sprint Goal. -->
- スプリントバックログについては、スプリントゴール

<!-- Upon release of the Increment (output), the Product is what creates value (outcomes). Value is the measurable or observable fulfillment or creation of expectations, needs, or wants from the Stakeholders' perspective. -->
インクリメント（アウトプット）がリリースされることで、プロダクトが価値（アウトカム）を生み出すことになる。ここでいう価値とは、測定可能または観察可能な形で、ステークホルダーの視点から見た、期待やニーズ、要望が満たされたり、新たに生み出されたりすることである。

<!-- These commitments reinforce the pillars of Transparency, Inspection, and Adaptation, enabling empirical process control (64-66). The Product Goal is fixed for as long as no contrary evidence or observations emerge in the observed Product's Definition of Outcome Done. The Definition of Output Done is not weakened during the Sprint. So what could be diminished or changed instead? It could be the Acceptance Criteria for a specific Product Backlog Item, the implementation or fidelity of a specific feature, or even alternative Product Backlog Items for achieving the Sprint Goal, etc. -->
これらのコミットメントは、透明性・検査・適応というスクラムの三本柱を強化し、経験的なプロセス制御を可能にする(64-66）。プロダクトゴールは、プロダクトのアウトカム完成の定義において反対のエビデンスや観察が現れない限り、固定される。アウトプット完成の定義はスプリント中に妥協されることはない。では、代わりに何が見直されたり変更されたりするのかというと、例えば、特定のプロダクトバックログアイテムの受け入れ基準や、特定の機能の実装内容や精度、あるいはスプリントゴール達成のための代替となるプロダクトバックログアイテムなどが挙げられる。

<!-- If the Product Goal shifts often, it could indicate that something is off, perhaps due to a lack of _Focus_ on what matters. _Focus_ is about being professional and deciding what to work on but also what not to work on. -->
もしプロダクトゴールが頻繁に変わるようであれば、それは何かがうまくいっていない兆候を示しており、重要なことに _集中_ できていない可能性がある。_集中_ とは、プロフェッショナルとして何に取り組むかだけでなく、何に取り組まないかを決めることでもある。

<!-- ### Product {#product} -->
### プロダクト {#product}

<!-- The Product is an artifact. A Product can be a holistic experience or a platform. It can also be a service, physical, digital, or hybrid, delivering continuous value to Stakeholders (including but not limited to users). -->
プロダクトは作成物の一つである。プロダクトは包括的な体験またはプラットフォームとなることができる。また、サービス、物理的、デジタル、またはハイブリッドであり、ステークホルダー（ユーザーを含むがこれに限定されない）に継続的な価値を提供する。

<!-- An experience is a specific solution designed to meet the needs of Stakeholders, including the user, ideally external to the organization. It provides a direct interaction that delivers value. It is typically focused on solving a particular problem or opportunity, or a set of them for Stakeholders, including but not limited to customers, decision-makers, and users. -->
体験とは、理想的には組織外のユーザーを含むステークホルダーのニーズを満たすように設計された特定のソリューションである。それは価値を提供する直接的な相互作用を提供する。ステークホルダーの特定の課題や機会、またはそれらの組み合わせを解決することに焦点を当てている。対象となるステークホルダーには、顧客、意思決定者、ユーザーなどが含まれるがそれらに限定されない。

<!-- A platform is an architectural device, foundational infrastructure, or set of tools that enables developers to build Products in order to provide an experience. Platforms provide a base for multiple Products to be developed upon, focusing on scalability, reliability, and flexibility for engineers rather than direct user interaction. -->
プラットフォームとは、体験を提供するためのプロダクトを開発者が構築することを可能にするアーキテクチャデバイス、基盤となるインフラストラクチャ、またはツールセットである。プラットフォームは複数のプロダクトを構築するための基盤を提供し、直接的なユーザーとの相互作用よりもエンジニアのためのスケーラビリティ、信頼性、柔軟性に重点を置く。

<!-- The Scrum Team and Stakeholders need to have a clear understanding at all times of what the Product is, who the customers, users, or decision-makers are, and the type of Product it is —like one for end-users, employees, or Scrum Teams—has different Stakeholders and ways it creates value. A Product is evolutionary and often long-lived. The Product needs a single Product Backlog to increase Transparency and maximize value. -->
スクラムチームとステークホルダーはこのプロダクトが何であるか、顧客、ユーザー、または意思決定者が誰であるか、そしてどのようなタイプのプロダクトなのか（エンドユーザー向け、従業員向け、スクラムチーム向けなど）を常に明確な理解を持つ必要がある。プロダクトのタイプにより異なるステークホルダーが存在し、価値創出の方法も異なることを理解する必要がある。プロダクトは進化的であり、しばしば長期にわたり存続する。透明性を高め、価値を最大化するために、プロダクトには単一のプロダクトバックログが必要である。

<!-- Context matters. But as a rule of thumb, for a Product to create and maintain traction, it helps if the Product: -->
文脈は重要である。しかし、経験則として、プロダクトが牽引力を生み出し、それを維持するためには、以下の条件を満たすことが有効である：

<!-- - Sufficiently addresses satisfaction gaps; -->
- 満足度のギャップに十分に対処している
<!-- - Is valuable, desirable, viable, usable, feasible, safe, and secure; -->
- 価値があり、望ましく、実行可能で、使用可能で、実現可能で、安全で、セキュアである
<!-- - Has professionalism built-in; -->
- プロフェッショナリズムが組み込まれている
<!-- - Has a compelling, clear, and outcome-metric-oriented Product Vision, Product strategy, and Product Goal, often including intent, rationale, and anti-goals; -->
- 明確で説得力があり、成果指標に基づくプロダクトビジョン、プロダクト戦略、プロダクトゴールを備えている。その中には意図、根拠、避けるべきゴールが含まれる事が多い
<!-- - Adapts and improves to identify, represent, or measure emergence (71); and, -->
- 創発(71)を特定、表現、測定するために適応し改善する
<!-- - Is extendable and maintainable. -->
- 拡張可能であり、保守可能である

<!-- The Product is the manifestation of _why_ we do _what_ we do. -->
プロダクトは、我々が何のために仕事をしているのかを表現したものである。

<!-- #### Commitment: Definition of Outcome Done {#commitment:-definition-of-outcome-done} -->
#### コミットメント：アウトカム完成の定義 {#commitment:-definition-of-outcome-done}

<!-- The Definition of Outcome Done is a commitment. It describes the observable evidence measures (quantitative or qualitative) required to demonstrate realized benefits, often referred to as value validation. It could be for the overall Product or a specific goal. It's often best to define the measures for value validation before realization starts, as this avoids biases and mistaken interpretations. -->
アウトカム完成の定義はコミットメントの一つである。これは、実現された価値を示すために必要な観察可能なエビデンスの測定基準（定量的または定性的）を記述し、しばしば価値検証と呼ばれる。これはプロダクト全体、または特定のゴールに対して設定される。バイアスや誤った解釈を避けるため、実装を開始する前に価値検証のための測定基準を定義しておくことが最善であることが多い。

<!-- Outcomes and related interpretations inform future adaptations, ideally confirming the intended Stakeholder impact(including but not limited to business or user impact)—measuring whether the output fulfills the anticipated outcome(s) and delivers real value. It could be for a specific goal, such as a larger feature or several features, and be validated through Product telemetry (the Product can measure its own usage). Alternatively, it could be for the overall Product, where it is often about the strategic impact and the validation of the efficacy of the implemented strategic deployment (120-124). Or a combination of both. -->
アウトカムとそれに関連する解釈は、将来の適応のための情報として役立ち、理想的には意図したステークホルダーへの影響（ビジネスやユーザーの影響を含むがそれに限定されない）を確認することを目的とする。つまり、アウトプットが期待されたアウトカムを実現し、真の価値を提供したかどうかを測定する。これは、特定の大きな機能や複数の機能などに向けて設定された特定のゴールを対象とし、プロダクトのテレメトリ（プロダクト自身がその利用状況を測定する）によって検証される。あるいは、プロダクト全体を対象とし、戦略的影響や実施された戦略展開(120-124)の有効性の検証に関するものである。またはこれら両方の組み合わせである。

<!-- Favor direct evidence over circumstantial evidence. For example: -->
アウトカム完成の定義は状況証拠よりも直接的な証拠（エビデンス）を優先する。例えば以下のようなものである：

<!-- - Customer outcomes could Focus on delivering measurable value to customers, such as increased customer satisfaction, customer long-term cost reduction, or the number of customer jobs addressed. -->
- 顧客のアウトカムは顧客満足度の向上、顧客の長期コスト削減、対応した顧客の案件数など、測定可能な顧客価値の提供に集中することができる
<!-- - User outcomes could address specific changes in user behavior that solve problems and improve experiences, like completing tasks more efficiently or engaging with new features. -->
- ユーザーのアウトカムはタスクをより効率的に完了することや新機能の利用など、問題を解決し体験を改善するユーザー行動の具体的な変化に対処することができる
<!-- - Product Stakeholder outcomes could connect these behavioral changes to Product performance metrics, e.g., trends in Product customer, decision-maker/user metrics, Product time to release, time to learn, time to pivot, etc. -->
- プロダクトステークホルダーのアウトカムは、これらの行動変化をプロダクトのパフォーマンス指標に結び付けることができる。例えば、顧客、意思決定者/ユーザー指標のトレンド、プロダクトとしてのリリースまでの時間、学習までの時間、ピボットまでの時間など
<!-- - Business Stakeholder outcomes, e.g., compliance, business long-term cost reduction, business results, trends in market share, customer satisfaction across all Products, organizational time to release, time to learn, time to pivot, etc. -->
- ビジネスステークホルダーのアウトカム。例えば、コンプライアンス、長期的なコスト削減、ビジネス成果、市場シェアの傾向、すべてのプロダクトにわたる顧客満足度、組織としてのリリースまでの時間、学習までの時間、ピボットまでの時間など
<!-- - Scrum Team outcomes such as improved technical capability (psychological flow (70), frequency of release, tooling, skills, technical debt, UX or CX debt, capacity), climate/culture for net improvement and innovation. -->
- スクラムチームのアウトカム。技術的能力の向上（心理学的フロー状態(70)、リリース頻度、ツール、スキル、技術的負債、UXまたはCX負債、開発能力）、実質的な改善やイノベーションのための風土や文化など

<!-- User eXperience (UX) or Customer eXperience (CX) debt is the sum of design and implementation choices—intentional or not—that make a Product or service less usable, enjoyable, or effective for users or customers. Recognizing, tracking, and addressing this debt is essential for delivering Products that truly meet user needs and expectations. -->
ユーザーエクスペリエンス（UX）負債やカスタマーエクスペリエンス（CX）負債とは、意図的であるか否かに関わらず、プロダクトやサービスをユーザーや顧客にとって使いにくく、楽しめず、効果的でないものとする設計および実装上の選択の総和である。この負債を認識し、追跡し、対処することは、真にユーザーのニーズと期待に応えるプロダクトを提供するために不可欠である。

<!-- Measures over time make Product, market, and Stakeholder trends (including but not limited to customer or user) transparent; these can be reviewed at any time during the Sprint, including the Sprint Review. -->
時間の経過に伴い測定することで、プロダクト、市場、ステークホルダーのトレンド（顧客やユーザーを含むがこれらに限定されない）が透明化される。これらはスプリントレビューを含めスプリントの期間中のいつでも参照可能である。

<!-- ### Increment {#increment} -->
### インクリメント {#increment}

<!-- The Increment is an artifact. It is the integration of the work completed to the standard of the Definition of Output Done. The Increment is an output and a Product candidate. -->
インクリメントは作成物の一つである。これはアウトプット完成の定義の標準まで基準に従って完了した作業を統合したものである。インクリメントはアウトプットでありプロダクトの候補である。

<!-- Multiple Increments may be created within a Sprint through the completion of Product Backlog Items. Each Increment is thoroughly verified, usable, and integrated with all previous Increments. The resulting aggregated Increment is inspected as soon as possible, at the latest at the Sprint Review. The Increment must be usable and useful to enable result feedback. An Increment is central to Scrum as it enables ongoing value validation. -->
プロダクトバックログアイテムの完了により、スプリントでは複数のインクリメントを作成可能である。各インクリメントは徹底的に検証され、利用可能であり、すべての以前のインクリメントと統合されている。結果として得られる集約されたインクリメントは、可能な限り早く、遅くともスプリントレビューで検査される。インクリメントは結果からのフィードバック（結果フィードバック）を可能にするために利用可能かつ有用でなければならない。インクリメントは継続的な価値検証を可能にするため、スクラムの中心的な存在である。

<!-- An Increment-candidate does not qualify as an Increment until it meets the quality standard of the Definition of Output Done. Only an Increment can be released. An Increment should be a concrete stepping stone toward the Product Goal. Increments may be delivered to Stakeholders or released prior to the Sprint Review. _The best value validation is attained through result feedback._ -->
インクリメント候補は、アウトプット完成の定義の品質基準を満たすまでインクリメントとして認められない。リリース可能なのはインクリメントのみである。インクリメントはプロダクトゴールに向けた具体的な踏み⽯となるべきである。スプリントレビューより前にインクリメントをステークホルダーにデリバリーしたり、リリースされたりする可能性がある。_最良の価値検証は結果からのフィードバック（結果フィードバック）を通じて実現される。_

<!-- #### Commitment: Definition of Output Done {#commitment:-definition-of-output-done} -->
#### コミットメント：アウトプット完成の定義 {#commitment:-definition-of-output-done}

<!-- The Definition of Output Done is a commitment. It formally describes the quality measures that express due diligence for the Increment so that it could be delivered to Stakeholders. -->
アウトプット完成の定義はコミットメントの一つである。これはステークホルダーにインクリメントを提供可能とするために適正に評価をしていること（デューデリジェンス）を表す品質基準を正式に記述したものである。

<!-- The Definition of Output Done typically includes (but is not limited to) both technical standards and Product qualities. The Scrum Team creates it if not provided by the organization as a minimum. If there are multiple Scrum Teams on the same Product, they share the same Definition of Output Done as the common foundation but may improve upon it. -->
アウトプット完成の定義は通常、技術的標準とプロダクト品質の両方を含む（ただしこれらに限定されない）。組織から最低限の基準としてアウトプット完成の定義を提供していない場合は、スクラムチームが作成する。プロダクトに関わるスクラムチームが複数ある場合、共通の基盤として同じアウトプット完成の定義を共有するが、それを改善することもできる。

<!-- The Scrum Team is duty-bound to conform to the Definition of Output Done and continuously improve it. The Increment is cumulative. The Definition of Output Done is for the good of the Product and its Stakeholders. The Definition of Output Done is the overall quality standard for the whole Increment, not the specific standard for each item (e.g., Acceptance Criteria). -->
スクラムチームはアウトプット完成の定義を遵守し、継続的に改善する義務を負う。インクリメントは累積的なものである。アウトプット完成の定義はプロダクトとそのステークホルダーの利益のために存在する。これはインクリメント全体に対する総合的な品質基準であり、個々のアイテムの基準（例：受け入れ基準）ではない。

<!-- A released Increment enables result feedback for Definition of Outcome Done value validation. -->
リリースされたインクリメントは、アウトカム完成の定義による価値検証のための結果からのフィードバック（結果フィードバック）を可能にする。

<!-- ### Product Backlog {#product-backlog} -->
### プロダクトバックログ {#product-backlog}

<!-- The Product Backlog is an artifact. It is the emergent, ordered (sequenced) list of Product Backlog Items needed to attain the Product Goal. The Product Backlog provides Transparency (work clarity) and is the single source of work for the Scrum Team in order to achieve the Product Goal. The Product Owner, always keeping value in mind, guides the ordering of the Product Backlog Items in the Product Backlog. A smaller Product Backlog often provides more Transparency. -->
プロダクトバックログは作成物の一つである。これは創発的かつ順番に並べられた、プロダクトゴールの達成に必要なプロダクトバックログアイテムの一覧である。プロダクトバックログは透明性（作業の明確さ）を提供し、スクラムチームにとってプロダクトゴールを達成するために必要な作業の唯一の情報源である。プロダクトオーナーは常に価値を意識し、プロダクトバックログ内のプロダクトバックログアイテムの順序付けを行う。プロダクトバックログが小さいほど、透明性はより高める。

<!-- #### Product Backlog Item {#product-backlog-item} -->
#### プロダクトバックログアイテム {#product-backlog-item}

<!-- A Product Backlog Item is a potentially valuable item in the Product Backlog. It is not necessarily in any specific format. It is intended to deal with a problem or opportunity. It can include Acceptance Criteria that can tell when work is completed, in addition to the Definition of Output Done. One might deliver exactly what was requested but still not deliver sufficient outcomes. So, a Product Backlog Item can also include clearly defined Outcome Criteria that can tell when sufficient value is delivered, in addition to what is already in the Definition of Outcome Done. -->
プロダクトバックログアイテムは、プロダクトバックログ内にある潜在的に価値のあるアイテムである。これは必ずしも特定の形式である必要はない。プロダクトバックログアイテムは問題や機会に対処することを目的としている。アウトプット完成の定義に加えて、作業が完了したことを判断するための受け入れ基準を含むことができる。要求された内容を正確に提供したとしても、十分なアウトカムが得られない場合がある。そのため、アウトカム完成の定義に含まれているものに加えて、十分な価値が提供されたかどうかを示すための明確なアウトカム基準をプロダクトバックログアイテムに含むことができる。

<!-- A Product Backlog Item is a single piece of work that discovers or delivers value. A Product Backlog Item can evolve anytime, even while Product Developers work on it. During refinement, it is broken down into smaller, more understandable (mostly to the Scrum Team) Product Backlog Items that could deliver value. Occasionally, an item in the Product Backlog might not be related to the Product Goal; if this happens often, it's worth examining if the _Focus_ level might not be where it needs to be. The Scrum Team and Stakeholders should _Focus_ on outcomes over outputs, keep the trade-off balance right, and not let the Scrum Team become a 'feature-factory' or 'discovery-factory.' -->
プロダクトバックログアイテムは価値を発見または提供するための単一の作業単位である。プロダクトバックログアイテムは、プロダクト開発者が作業している間であっても、いつでも進化する可能性がある。リファインメントの過程で、価値を提供をでき、より小さく、スクラムチームにとってより理解しやすいプロダクトバックログアイテムに分割される。時にはプロダクトバックログ内のアイテムがプロダクトゴールと無関係である場合もある。そのような状況が頻繁に起きるのであれば、 _集中_ のレベルが適切に保たれているか検査する価値がある。スクラムチームおよびステークホルダーは、アウトプットよりもアウトカムに _集中_ し、トレードオフのバランスを保ち、スクラムチーム が「機能工場」や「発見工場」にならないようにする必要がある。

<!-- #### Acceptance Criteria {#acceptance-criteria} -->
#### 受け入れ基準 {#acceptance-criteria}

<!-- Acceptance Criteria, if they exist, describe when an output for a specific Product Backlog Item is complete, in addition to the Definition of Output Done. Acceptance Criteria in refined items should provide unambiguous clarity on _what_ is requested. Acceptance Criteria include criteria specific to a Product Backlog Item not already addressed in the Definition of Output Done; they can be functional or non-functional. Acceptance Criteria can evolve anytime, even while Product Developers work on them. -->
受け入れ基準が存在する場合、アウトプット完成の定義の記述に加えて、特定のプロダクトバックログアイテムのアウトプットがいつ完了するかを記述する。リファインメントされたアイテムの受け入れ基準は、_何_ が要求されているかについて曖昧さのない明確な基準を示す必要がある。受け入れ基準は、アウトプット完成の定義でまだ扱われていないプロダクトバックログアイテム固有の機能的・非機能的な基準を含む。受け入れ基準は、プロダクト開発者が作業している間であっても、いつでも進化する可能性がある。

<!-- #### Outcome Criteria {#outcome-criteria} -->
#### 成果基準 {#outcome-criteria}

<!-- Outcome criteria, if they exist, describe the intention of the Product Backlog Item; it is the _why_ behind the _what_. The fulfillment of Outcome Criteria often complements the Definition of Outcome Done for the Product. They can include criteria specific to a Product Backlog Item not already addressed in the Definition of Outcome Done. If questions arise, the Outcome Criteria provide direction; they can be in the form of a narrative or measures, ideally, the latter. Outcome Criteria can evolve anytime, even while Product Developers work on them. -->
成果基準が存在する場合、プロダクトバックログアイテムの意図を記述する。つまり、何（_What_）の背後にあるなぜ（_Why_）を記述するものである。成果基準の達成は、しばしばプロダクトのアウトカム完成の定義を補完する。成果基準は、アウトカム完成の定義でまだ扱われていないプロダクトバックログアイテム固有の基準を含むことがある。疑問が生じた場合、成果基準は方向性を示す。それは、ナラティブ形式または測定可能な指標の形式を取るが、理想的には後者である。成果基準は、プロダクト開発者が作業している間であっても、いつでも進化する可能性がある。

<!-- #### Refinement {#refinement} -->
#### リファインメント {#refinement}

<!-- Refinement is an activity. It may be formal (an additional event) or informal. Refinement is an ongoing emergent process that fosters clarity and reduces risk; it builds enough understanding and confidence that the selected or upcoming Product Backlog Items are ready (can be completed in accordance with the Definition of Output Done within a small number of days, or shorter). Various types of dependencies are considered. -->
リファインメントは活動の一つである。これは正式な場合（追加イベント）もあれば、非公式な場合もある。リファインメントは明確さを育み、リスクを軽減する継続的な創発プロセスである。これは選択された、または直近で対応予定のプロダクトバックログアイテムが準備完了（アウトプット完成の定義に従って数日以内に完了できる）であるために必要な十分な理解と確信をチームに形成する。様々な種類の依存関係が考慮される。

<!-- Refinement involves breaking down Product Backlog Items into smaller, more understandable (mostly to the Scrum Team) Product Backlog Items. It can add more details such as description, Acceptance Criteria, Outcome Criteria, order, and size. Attributes vary but should be meaningful to the Scrum Team. Refinement can involve research, including but not limited to, problem or opportunity validation, user or customer experience, solution validation. The Product Developers, and nobody else, are responsible for sizing the Product Backlog Items. The Product Owner may influence the Product Developers by helping them understand and select potential trade-offs. -->
リファインメントは、プロダクトバックログアイテムをより小さく、（主にスクラムチームにとって）より理解しやすく分解することを含む。説明、受け入れ基準、成果基準、並び順、サイズなどの詳細を追加することができる。属性はさまざまあるが、スクラムチームにとって意味のあるものでなければならない。リファインメントには、問題や機会の検証、ユーザーや顧客の体験、ソリューションの検証などの調査活動が含まれるがこれに限定されない。プロダクト開発者のみがプロダクトバックログアイテムのサイズを決定する責任を負う。プロダクトオーナーは、潜在的なトレードオフを理解し、選択できるよう支援することでプロダクト開発者に影響を与えることができる。

<!-- Participants often include Stakeholders and members of the Scrum Team; it is not uncommon for Product Developers to work directly with Stakeholders. Refinement is often supported or facilitated by the Product Owner. The Product Owner can _Focus_ more on Product ownership if the Product Developers have a broad understanding of the Product. Generally speaking, it is a forward-looking activity that offers clarity, direction, and potential _Focus_ for upcoming Sprints. -->
リファインメントの参加者には、多くの場合ステークホルダーやスクラムチームのメンバーが含まれる。プロダクト開発者がステークホルダーと直接作業することも珍しいことではない。リファインメントは、通常プロダクトオーナーにより支援またはファシリテートされる。プロダクト開発者がプロダクトに対する幅広い理解を持っている場合、プロダクトオーナーはプロダクトオーナーシップの発揮により _集中_ できる。一般に、リファインメントは今後のスプリントに向けて明確さ、方向性、潜在的な _集中_ を提供する将来を見据える活動である。

<!-- #### Commitment: Product Goal {#commitment:-product-goal} -->
#### コミットメント：プロダクトゴール {#commitment:-product-goal}

<!-- The Product Goal is a commitment. It is represented through the Product Backlog, which is owned by the Product Owner. It is the current single, more strategic, ambitious objective (the _why_). It gives direction for the Product and enables _Focus_ for the Product Developers working on the Product. It improves Transparency by providing a clear, valuable direction for the Product Developers to work toward, using a more tactical Sprint Goal (the _why_ for the Sprint). -->
プロダクトゴールはコミットメントの一つである。これはプロダクトオーナーがオーナーであるプロダクトバックログを通じて表現される。プロダクトゴールは現時点における単一かつより戦略的で野心的な目標（なぜ（_Why_））である。プロダクトに方向性を示し、プロダクト開発者がプロダクトに取り組むための _集中_ の源となる。プロダクトゴールはより戦術的な目標であるスプリントゴール（スプリントのなぜ（_Why_））を通じて、プロダクト開発者が向かうべき明確で価値のある方向性を提供し、透明性を高める。

<!-- A Product Goal is the medium-term objective for the Scrum Team and the Stakeholders (and Supporters). The Scrum Team should fulfill (or abandon) one Product Goal before taking on the next. -->
プロダクトゴールはスクラムチームとステークホルダー（および サポーター）の中期的な目標である。次のプロダクトゴールに移る前に、スクラムチームはひとつのプロダクトゴールを達成（または放棄）しなければならない。

<!-- A Product Goal is usually an as-yet-unproven assertion about value. It can be expressed as one of many things, including a set of hypotheses about closing or lessening satisfaction gaps. It gets the balance right by focusing on a subset of the multiplicity of Stakeholders (including but not limited to customers or users) expectations and limits. Through Inspection and Adaptation, it's essential to embrace uncertainty (72), result feedback, side effects, and other learnings. -->
プロダクトゴールは通常、価値に関する未証明の仮説である。満足度ギャップを埋めるもしくは大きくするための仮説のセットを含む、様々なものひとつとして表現される。それは、多様なステークホルダー（顧客やユーザーを含むがそれに限定されない）の期待や制約の中から、焦点を絞り適切なバランスを取るものである。検査と適応を通じて、不確実性(72）、結果からのフィードバック（結果フィードバック）、副作用、その他の学習を受け入れることが不可欠である。

<!-- #### What about a Product Vision? {#what-about-a-product-vision} -->
#### プロダクトビジョンについては？ {#what-about-a-product-vision}

<!-- Many organizations work with a Product Vision, which helps visualize a potential future. The Scrum Team can use a Vision as input for considering a Product Goal. A Product Vision is a meaningful, long-term set of valuable desired outcomes. The medium-term Product Goal is often a stepping stone toward a long-term Product Vision. -->
多くの組織では、未来の可能性を見える化するためにプロダクトビジョンを活用する。スクラムチームは、プロダクトゴールを検討するためのインプットとしてビジョンを用いることができる。プロダクトビジョンは、意味のある長期的な価値のある望ましいアウトカムのまとまりである。中期的なプロダクトゴールは、多くの場合、長期的なプロダクトビジョンに向けた踏み石となる。

<!-- As the Scrum Team and Stakeholders inspect and adapt toward the Product Goal, they need to be _open_ to the idea that the Product Vision or Product Goal might also need to adapt. Often, several Product Goals are sequentially achieved while working toward a vision. -->
スクラムチームとステークホルダーがプロダクトゴールに向けての検査と適応を行う際、プロダクトビジョンやプロダクトゴールも適応が必要な場合があるという考えに公開（_Open_）である必要がある。多くの場合、ビジョンに向かって進む中で、複数のプロダクトゴールを一つずつ達成していく。

<!-- The key thing to note is that a Product Vision is often a work of fiction; none of it may be true. Forming hypotheses and running experiments in a direction is essential, and is where Scrum can add the most value. -->
重要な点は、プロダクトビジョンは創作作品であることであり、必ずしも真実とは限らない。仮説を立てて、方向性を持って実験を重ねることが不可欠であり、そこでスクラムが最も価値を発揮する。

<!-- A Product Vision is often inspiring but can be overwhelming. The Product Goal reduces overwhelm by acting as a more tangible vertical slice of a Product Vision or as an enabler for a Product Vision. -->
プロダクトビジョンは多くの場合、刺激的であるが、規模が大きすぎて負担に感じることもある。プロダクトゴールは、プロダクトビジョンのより具体的な垂直スライスや、またはプロダクトビジョン実現のきっかけとなることで、負担感を軽減する。

<!-- ### Sprint Backlog {#sprint-backlog} -->
### スプリントバックログ {#sprint-backlog}

<!-- The Sprint Backlog is an artifact. It is composed of the Sprint Goal (the _why_ for the Sprint), the set of Product Backlog Items selected (the _what_, also known as the forecast) for the Sprint, and often has an actionable plan for delivering the Increment (the _how_). It provides Transparency (work clarity) throughout the Sprint. -->
スプリントバックログは作成物の一つである。スプリントゴール（スプリントのなぜ（_Why_））、スプリントのために選んだプロダクトバックログアイテムのセット（何（_What_）をやるのか、つまり予測）、そして、多くの場合、インクリメントを提供するための実行可能な計画（どのように（_How_））で構成される。これにより、スプリント全体を通じた透明性（作業の明確性）が高まる。

<!-- The Sprint Backlog is a plan by and for the Product Developers. It is the Product Developers' viewpoint of the understood work to achieve the Sprint Goal (the why for the Sprint). Suppose a suboptimal scenario where most items in the Sprint Backlog are continually unrelated to the Product Goal. In that case, the _Focus_ and _Commitment_ Scrum Values are not being upheld. -->
スプリントバックログは、開発者による開発者のための計画である。これはスプリントゴール（スプリントのなぜ（Why））を達成するために、どんな作業が必要かを開発者の視点でまとめている。もしスプリントバックログのほとんどのアイテムがプロダクトゴールと関係ない状況が続いてしまうと、スクラムの _集中_ と _確約_ の価値基準が守られなくなる。

<!-- Within the context of the Sprint Goal, the Product Developers update their plan, even the forecast, throughout the Sprint as more is learned. The Sprint Backlog should have enough work to get started, e.g., start with one or two Product Backlog Items toward the Sprint Goal. The Product Developers inspect their progress toward the Sprint Goal in the Daily Scrum or more often. Product Developers learn to adapt and respond to uncertainty (72). -->
スプリントゴールの文脈の中においても、プロダクト開発者がより多くのことを学ぶにつれ、スプリント全体を通じた、予測すら含めた計画を更新する。スプリントバックログには、まず始めるのに十分な作業が入っていればよい。例えば、最初は、スプリントゴールに向けた1つまたは2つのプロダクトバックログアイテムで十分だ。プロダクト開発者はデイリースクラムにて、またはより頻繁に、スプリントゴールに向けた進捗を検査し、不確実性に適応し対応することを学ぶ(72）。

<!-- #### Commitment: Sprint Goal {#commitment:-sprint-goal} -->
#### コミットメント：スプリントゴール {#commitment:-sprint-goal}

<!-- [2020 Scrum Guide: '... the Sprint Goal is a commitment by the Developers ...']  -->
[2020年版スクラムガイド: 「スプリントゴールは開発者が確約するものだが...」]

<!-- The Sprint Goal is a commitment created and owned by the Scrum Team. The Sprint Goal is the single unifying objective of the Sprint (the _why_) for the Product Developers, created in Sprint Planning. Delivery of the Sprint Goal is a commitment by the Product Developers. The Sprint Backlog (including the _why_, the _what,_ and, often, the _how_) provides _Focus_ and flexibility regarding the evolving work, thus improving Transparency. -->
スプリントゴールはスクラムチームによって作成され、所有されるコミットメントの一つである。スプリントゴールはプロダクト開発者にとってのスプリントの唯一のかつ統一された目的（なぜ（_Why_））であり、スプリントプランニングで作成される。スプリントゴールの達成はプロダクト開発者による確約である。スプリントバックログ（なぜ（_why_）、なに（_what_）、そして多くの場合どのように（_how_）を含む）は進化する作業に対して _集中_ と柔軟性をもたらし、透明性を向上させる。

<!-- The Sprint Goal encourages the Scrum Team to work together rather than on separate initiatives. If the work turns out to be different from what the Product Developers expected, the Product Developers collaborate with the Product Owner to negotiate possibilities within the Sprint without affecting the Sprint Goal. No one tells the Product Developers how to size or do their work. -->
スプリントゴールはスクラムチームが個別に作業するのではなく、協力して作業することを促進する。もし作業がプロダクト開発者の予想と異なることが判明した場合は、スプリントゴールに影響を与えることがないように、プロダクト開発者はプロダクトオーナーと協力してスプリント内で対応する可能性を調整する。誰もプロダクト開発者に作業の見積りや進め方を指示することはない。

<!-- ## The Scrum Events in the Expansion Pack {#the-scrum-events-in-the-expansion-pack} -->
## 拡張パックにおけるスクラムイベント {#the-scrum-events-in-the-expansion-pack}

<!-- Scrum combines four timeboxed events for Inspection and Adaptation within a containing fifth event of determinate length, the Sprint. These events support the Scrum pillars of Transparency, Inspection, and Adaptation. Releases enable value, ideally, continuously. Infrequent releases lead to delayed result feedback. -->
スクラムでは検査と適応のための4つのタイムボックス化されたイベントを組み合わせている。それらを包含するイベントは「スプリント」と呼ばれ、決められた長さのスクラムの5つ目のイベントである。これらのイベントはスクラムの三本柱「透明性」「検査」「適応」 を支える。リリースは理想的には継続的な価値の創出を可能にする。頻度の少ないリリースは、結果からのフィードバック（結果フィードバック）の遅延を招く。

<!-- A timebox is a stipulated maximum amount of elapsed time from beginning to end for a defined event, not to be confused with an expectation to use that full amount of time. The purpose of a timebox in Scrum is to foster the selection of essential work, creating _Focus_ to achieve desired results quickly. In Scrum, for a given Scrum Team, the sprint length is consistent, so it is not a timebox. -->
タイムボックスとは、スクラムで定義されているイベントの開始から終了までの経過時間の上限を規定したものである。そのすべての時間を使い切ることを期待したものではない。スクラムにおけるタイムボックスの目的は、そのイベントの本質的な作業に絞ることを促し、望ましい成果を迅速に達成するための _集中_ を生み出すことである。スクラムチームにおいては、スプリントの長さは固定しており、それ自体はタイムボックスではない。

<!-- Events create cadence and minimize the need for other meetings not part of Scrum. Ideally, each event is held at the same time and place to reduce complexity (30-35) and foster the formation of habits. Skilled facilitation improves effectiveness. Ineffective events risk losing emphasis on the Sprint Goal, Product Goal, Transparency, Inspection, Adaptation, and Scrum Values. -->
イベントはケイデンスを作り出し、スクラムに含まれない他の会議の必要性を最小限に抑える。理想的には、各イベントは同じ時間・場所で開催されることで、複雑性(30-35)を軽減し、習慣の形成を促す。熟練したファシリテーションは効果性を高める。効果性の低いイベントは、スプリントゴール・プロダクトゴール・透明性・検査・適応・スクラムの価値基準に重点を置かなくなるリスクがある。

<!-- Each event has its own purpose and should include deep, meaningful work. Together, the Scrum events provide a scaffold of Transparency to inspect and adapt, pause, and reflect. The Scrum events support structured thinking and working, effectiveness, and a balanced workload. -->
スクラムの各イベントにはそれぞれの目的があり、深く意味のある作業を含むべきである。スクラムイベントは、検査と適応、立ち止まり、振り返りのための土台となる透明性を提供する。これらのイベントは、構造化された思考と作業、効果性、そしてバランスの取れた作業負荷を支える。

<!-- Communication is key to ensuring the Scrum Team and Supporters _Focus_ on the right thing. Apart from the Sprint, events may consume less time as long as coherence is not lost. -->
スクラムチームおよびサポーターが適切な対象に _集中_ するためには、コミュニケーションが鍵となる。スプリント以外のイベントは、一貫性が損なわれない限り、より短い時間で行うことも可能である。

<!-- ### The Sprint {#the-sprint} -->
### スプリント {#the-sprint}

<!-- The Sprint is an event where ideas are turned into value. The Sprint is the container event. It is an iteration of a determinate time in which work is carried out. It provides _Focus_ and stability. A Sprint is no longer than four weeks. A new Sprint starts immediately after the conclusion of the previous Sprint. All the work necessary to achieve the Product Goal happens within Sprints. -->
スプリントはイベントの一つであり、ここでアイデアが価値に変わる。スプリントは入れ物となるイベントである。作業が実施される定められた期間の反復である。スプリントは _集中_ と安定性をもたらす。スプリントは最大で4週間である。前のスプリントの終了直後に新しい スプリントが始まる。プロダクトゴールを達成するために必要なすべての作業はスプリント内で行われる。

<!-- Sprints are the heartbeat of Scrum, where the Scrum Team turns ideas into usable, useful, and potentially valuable Increments. The Increment is released as soon as practically possible, considering the need for early result feedback. A lack of release to some subset of Stakeholders (including but not limited to real customers, decision-makers, and users) can lead to a lack of timely result feedback. Multiple Increments may be created in a Sprint; the Scrum Team should strive to validate value through early and frequent releases, where applicable. -->
スプリントはスクラムにおける心臓の鼓動であり、スクラムチームがアイデアを利用可能で、有用で、潜在的に価値のあるインクリメントへと変える場である。インクリメントは早期の結果からのフィードバック（結果フィードバック）の必要性を考慮し、可能な限り早くリリースされる。一部のステークホルダー（顧客、意思決定者、ユーザーを含むがこれらに限定されない）へリリースがされていないと、タイムリーに結果からのフィードバック（結果フィードバック）が得られなくなる。スプリントでは複数のインクリメントが作成されることもある。スクラムチームは可能な限り早期かつ頻繁にリリースし価値検証を行うよう努めるべきである。

<!-- During the Sprint: -->
スプリントでは、

<!-- - No changes are made that would endanger the Sprint Goal; -->
- スプリントゴールの達成を危険にさらすような変更はしない。
<!-- - The Increment(s) should not decrease in quality; -->
- インクリメントにより品質を低下させるべきではない。
<!-- - The Product Backlog is refined as needed; and, -->
- プロダクトバックログを必要に応じてリファインメントする。
<!-- - As more is learned, current work may be clarified and renegotiated with the Product Owner without affecting the Sprint Goal. -->
- より多くの知見を得るにつれて、現在の作業は明確化され、スプリントゴールに影響を与えない範囲でプロダクトオーナーと再交渉される可能性がある。

<!-- Sprints enable outcomes by ensuring Inspection and Adaptation of progress toward a Sprint Goal at least every four weeks. When a Sprint is too long, the Sprint Goal may become invalid, increasing complexity (30-35) and risk. Shorter Sprints often generate more learning cycles; they could also limit risk. -->
スプリントによって、プロダクトゴールに対する進捗の検査と適応を少なくとも4週間ごとに確実に行うことで、アウトカムが実現される。スプリントが長すぎると、スプリントゴールが役に⽴たなくなり、複雑性(30-35)とリスクが増加する。スプリントの期間を短くすれば、より多くの学習サイクルを作り出す可能性があり、同時にリスクを軽減できる。

<!-- Shorter Sprints usually require improved capabilities (e.g., refining, vertical slicing, technical domain, business domain). Context matters and the Scrum Team strives to strike the right balance. -->
スプリントを短くするには、リファインメント、垂直スライス、技術ドメインおよびビジネスドメインの知識といった能力の向上が求められる。文脈は重要であり、スクラムチームは適切なバランスを取るよう努める。

<!-- Various complementary practices exist to assess or forecast progress, like burn-downs, burn-ups, flow analytics, Monte Carlo probabilistic forecasts, large effort estimation, fuzzy sets (110), etc. While useful, these do not replace the importance of empiricism (67). In complex (30-35) environments, what has already happened may be used for forward-looking decision-making, but what will happen is unknown. -->
進捗の評価や予測のための様々な補完的なプラクティスが存在する。例えば、バーンダウン、バーンアップ、フロー分析、モンテカルロ法、大規模工数見積もり、ファジィ集合(110)などである。これらは有用であるが、経験主義(67)の重要性を置き換えるものではない。複雑な(30-35)環境下では、すでに発生したことは将来を見据えた意思決定に使用されるが、これから何が起きるかはわからない。

<!-- You could think about a Sprint as a mini project with a clear outcome, determinate length and understood costs. However, the various work activities happen in parallel and not in a sequential defined linear way. -->
スプリントは、明確な成果、定められた期間、明確なコストを持つミニプロジェクトと考えることもできる。ただし、さまざまな作業は並行して発生し、順序が定められた線形的な方法では実行されない。

<!-- A Sprint could be canceled if the Sprint Goal becomes obsolete. Only the Product Owner has the authority to cancel the Sprint. Shorter Sprints lower the likelihood of a cancellation. -->
スプリントゴールがもはや役に⽴たなくなった場合、スプリントは中⽌されることになるだろう。プロダクトオーナーだけがスプリントを中⽌する権限を持つ。 スプリントが短いほど、中止の可能性は低くなる。

<!-- ### Sprint Planning {#sprint-planning} -->
### スプリントプランニング {#sprint-planning}

<!-- Sprint Planning is an event. This first event of the Sprint is where the Scrum Team gives _Focus_ and creates commitment. -->
スプリントプランニングはイベントの一つである。スプリントの最初のイベントであり、スクラムチームが _集中_ を高め、コミットメントを生み出す場である。

<!-- During Sprint Planning, the more strategic Product Goal (the _why_ for the Product Backlog) is considered and provides direction. In doing so, the Product Developers create the Sprint Backlog, which consists of the short-term, more tactical Sprint Goal (the _why_ for the Sprint), the initially identified work, and the plan to deliver. -->
スプリントプランニングにおいて、より戦略的なプロダクトゴール（プロダクトバックログにおけるなぜ（_Why_））が考慮され、方向性が提供される。スプリントプランニングの過程で、プロダクト開発者はスプリントバックログを作成する。スプリントバックログには短期的かつより戦術的なスプリントゴール（スプリントにおけるなぜ（_Why_））、最初に特定された作業、そしてデリバリーのための計画が含まれる。

<!-- Sprint Planning addresses the following topics: -->
スプリントプランニングは次のトピックに対応する：

<!-- #### The _Why_ for the Sprint {#the-why-for-the-sprint} -->
#### スプリントのなぜ（_Why_） {#the-why-for-the-sprint}

<!-- The Product Owner proposes ideas for how the Product could increase its value and utility in the current Sprint. The Scrum Team then collaborates to define a Sprint Goal that communicates why the Sprint is valuable to Stakeholders toward the Product Goal. The Sprint Goal must be finalized by the end of Sprint Planning. -->
プロダクトオーナーは、プロダクトの価値と有⽤性を今回のスプリントでどのように⾼めることができるかについてのアイデアを提案する。次に、スクラムチームが協⼒して、プロダクトゴールに向けてそのスプリントにはなぜ価値があるかをステークホルダーに伝えるスプリントゴールを定義する。スプリントゴールは、スプリントプランニングの終了までに確定する必要がある。

<!-- #### The _What_ toward the _Why_ {#the-what-toward-the-why} -->
#### なぜ（_Why_）に向けた何（_What_） {#the-what-toward-the-why}

<!-- Through collaboration with the Product Owner, the Product Developers select items from the Product Backlog to include in the current Sprint. The Scrum Team may refine these items, which increases understanding and confidence. Selected items should be achievable according to the standard of the Definition of Output Done, alongside other items. -->
プロダクト開発者は、プロダクトオーナーとの協働を通して、プロダクトバックログからアイテムを選択し、今回のスプリントに含める。スクラムチームはプロダクトバックログアイテムのリファインメントをする場合がある。それによって、チームの理解と⾃信が⾼まる。 選択されたプロダクトバックログアイテムは、他のアイテムと同様にアウトプット完成の定義の基準に従って達成可能である必要がある。

<!-- Selecting how much can be completed within a Sprint may be challenging. However, the more the Product Developers know about their past performance, vertical slicing, upcoming capacity, and the Definition of Output Done, the more confident they will be in their ability to forecast Sprint outcomes. -->
スプリント内でどれくらい完了できるかを選択するのは難しいかもしれない。しかしながら、プロダクト開発者が過去の⾃分たちのパフォーマンス・垂直スライス・今回のキャパシティ・アウトプット完成の定義の理解を深めていけば、スプリントのアウトカムを予測する能力に⾃信が持てるようになる。

<!-- Successful Scrum Teams do not overload themselves. In fact, they plan to finish work early, sometimes using a buffer for unexpected events (85). This helps the Scrum Team to stay focused, improve quality, and satisfy Stakeholders by delivering value sooner. Chronic overload or sudden shifts can cause excessive negative stress, which Jeff Sutherland calls 'Bayesian surprise.' They can disrupt the Scrum Team's psychological flow (70) and performance. Clear communication, professional handling of emergence (71), and small, regular changes help prevent this, so Scrum Teams should aim for early delivery. -->
成功するスクラムチームは過剰な負荷をかけない。実際、成功するスクラムチームは作業を早めに完了できるよう計画し、予期せぬ事態に備えてバッファを設けることもある(85)。これによりスクラムチームは集中を維持し、品質を向上させ、より早く価値をデリバリーすることでステークホルダーを満足させることができる。慢性的な過負荷や突然の変化は、Jeff Sutherlandが「ベイジアン・サプライズ」と呼ぶ過度なストレスを引き起こし、スクラムチームの心理学的フロー(70)やパフォーマンスに悪影響を及ぼす。明確なコミュニケーション、創発へのプロフェッショナルな対応（71）、そして小さな変化を日常的に行うことで、こうした事態を防ぐ事ができる。このような理由から、スクラムチームは早期のデリバリーを目指すべきである。

<!-- #### The _How_ for the _What_ {#the-how-for-the-what} -->
#### 何（_What_）に対するどのように（_How_） {#the-how-for-the-what}

<!-- How the work is done is at the sole discretion of the Product Developers. No one else tells the Product Developers how to do their work. The Product Developers select their own work; no one else assigns or pushes Product Backlog Items to the Product Developers, not even the Product Owner. -->
作業の進め方はプロダクト開発者の裁量に委ねられている。他の誰もプロダクト開発者に作業の方法を指示することはできない。プロダクト開発者は自ら作業を選択する。プロダクトバックログアイテムをプロダクト開発者に割り当てたり押し付けたりすることは他の誰にもできない。プロダクトオーナーであっても、それは同様である。

<!-- Sprint Planning is timeboxed to a maximum of eight hours for a four-week Sprint. The event is usually shorter for shorter Sprints. Context matters. But as a rule of thumb, do enough planning to get started with the work, e.g., plan a few Product Backlog Items toward the Sprint Goal. -->
スプリントが4週間の場合、スプリントプランニングのタイムボックスは最⼤で8時間である。スプリントの期間が短ければスプリントプランニングの時間も短くすることが多い。文脈は重要である。しかし、経験則として、作業を開始できるだけの計画、例えばスプリントゴールに向けていくつかのプロダクトバックログアイテムを計画するだけでもよい。

<!-- ### Daily Scrum {#daily-scrum} -->
### デイリースクラム {#daily-scrum}

<!-- The Daily Scrum is an event. At the Daily Scrum, the Product Developers collaborate on progress toward the Sprint Goal and update the actionable plan, the Sprint Backlog, until the next Daily Scrum. In the event the Sprint Goal has already been achieved, the Product Developers collaborate on meaningful progress toward the Product Goal. -->
デイリースクラムはイベントの一つである。デイリースクラムにおいて、プロダクト開発者はスプリントゴールに向けた進捗について協働し、次のデイリースクラムまで実行可能な計画であるスプリントバックログを更新する。スプリントゴールがすでに達成されている場合、プロダクト開発者はプロダクトゴールに向けた意味のある進捗について協働する。

<!-- The Daily Scrum provides _Focus_, cohesion, and urgency and fosters self-management (49). Usually, only the Product Developers participate. To simplify, it often uses the same meeting cadence, place, and time. -->
デイリースクラムは、_集中_、一体感、緊迫感をもたらし、自己管理を促進する(49)。通常、参加するのはプロダクト開発者のみである。簡素化のため、同じ会議のケイデンス、場所、時間を採用することが多い。

<!-- The Product Developers can select whatever structure and techniques they want. Daily Scrums improve communication towards attaining the Sprint Goal, identify and address risks and impediments, promote quick decision-making, and consequently eliminate the need for other meetings. -->
プロダクト開発者は、任意の構造ややり方を選択できる。デイリースクラムは、スプリントゴールの達成に向けたコミュニケーションを改善し、リスクや障害の特定と対処を行い、迅速な意思決定を促進する。その結果、他の会議を不要にする。

<!-- The Daily Scrum is not the only time the Product Developers adjust their plan for the Sprint within the context of the Sprint Goal or Product Goal. Product Developers often meet throughout the day for more detailed discussions. -->
プロダクト開発者がスプリントゴールやプロダクトゴールの文脈においてスプリントの計画を調整するのは、デイリースクラムのときだけではない。プロダクト開発者は、より詳細な議論をするために、開発者は⼀⽇を通じて頻繁に話し合う。

<!-- To enable the flow of value (68,69) and enable potential outcomes sooner, the Product Developers should focus on one item or a few items at a time and meet the Definition of Output Done, before starting to work on other items. The Product Developers can achieve this by focusing, having fewer items in progress, and proactively finishing work over starting new work. The Product Developers monitor idle work, not idle people. -->
価値のフロー(68,69)を促進し、潜在的なアウトカムをより早く実現するために、プロダクト開発者は一度に1つまたは少数のアイテムに集中し、他のアイテムの作業を開始する前にアウトプット完成の定義を満たすべきである。プロダクト開発者は、集中し、進行中のアイテムを少なくし、新しい作業を開始するよりも能動的に作業を完了することで、これを達成することができる。プロダクト開発者が監視するのは、稼働していない人ではなく、停滞している作業である。

<!-- The Daily Scrum is timeboxed to a maximum of fifteen minutes per day; it may be shorter. -->
デイリースクラムは、1日あたり最大15分間でタイムボックスが設定されており、それより短い時間で行うことも可能である。

<!-- ### Sprint Review {#sprint-review} -->
### スプリントレビュー {#sprint-review}

<!-- The Sprint Review is an event. It is an interactive, collaborative working session. Often, the Scrum Team shares the current Product Goal and presents the Definition of Output Done and the Definition of Outcome Done to the Stakeholders. The Scrum Team shares the results of their work, what trade-offs were made, and how much progress was made toward the Product Goal (the why behind the work). If available, current and up-to-date measures of progress toward the Definition of Outcome Done are shared and considered. -->
スプリントレビューはイベントの一つである。これは相互作用があり協働的なワーキングセッションである。通常、スクラムチームは現在のプロダクトゴールを共有し、アウトプット完成の定義とアウトカム完成の定義をステークホルダーに提示する。スクラムチームは作業の結果、どのようなトレードオフが行われたか、プロダクトゴールに向けてどれだけの進捗が行われたか（作業の背後にあるなぜ）を共有する。可能であれば、アウトカム完成の定義に向けた進捗の現時点かつ最新の指標が共有され検討される。

<!-- The Sprint Review inspects many things related to the Product, such as the Product Goal, Product Backlog, the Sprint Goal, the learnings, the Increment, Stakeholder expectations and limits, result feedback, side effects, progress with the Product, the market, as well as forward-looking, e.g., what new ideas and opportunities have emerged, potential next steps. -->
スプリントレビューは、プロダクトゴール、プロダクトバックログ、スプリントゴール、学び、インクリメント、ステークホルダーの期待と制約、結果からのフィードバック（結果フィードバック）、副次的な影響、プロダクトの進捗状況、市場動向、さらに、将来を見据えた事項 —— 新たに生まれたアイデアや機会、次に取り得る可能性のあるステップなど —— について検査する。

<!-- Informed by what is learned: -->
学習したことに基づいて：

<!-- - Participants sense, listen, learn, and collaborate on what to potentially do next; -->
- 参加者は次に潜在的に何をすべきかについて感知し、傾聴し、学び、協働する
<!-- - The Product Backlog (the what)is adapted and possibly the Product Goal, ideally supported by evidence or observations and guided by the Product Goal or optional Product Vision; and, -->
- プロダクトバックログ（何）が適応され、場合によってはプロダクトゴールも、理想的にはエビデンスや観察結果に裏打ちされ、プロダクトゴールまたは任意のプロダクトビジョンによって方向づけられる
<!-- - Participants adapt the Product's Definition of Outcome Done for future Sprints. -->
- 参加者は将来のスプリントのためにプロダクトのアウトカム完成の定義を適応させる

<!-- It's always important to consider Stakeholders and what they value, including inanimate, non-human Stakeholders such as the law. -->
ステークホルダーと彼らが価値を置くものを考慮することは常に重要である。ステークホルダーには、法律といった、生物でも人間でもないものも含まれる。

<!-- Incomplete Product Backlog Items return to the Product Backlog for future consideration and are not presented; sometimes, they are moved into the next Sprint. -->
未完了のプロダクトバックログアイテムは将来の検討のためにプロダクトバックログに戻され、提示されない。場合によっては、次のスプリントに移されることもある。

<!-- The Sprint Review is the second-to-last event of the Sprint and is timeboxed to a maximum of four hours for a four-week Sprint. For shorter Sprints, the event is usually shorter. -->
スプリントレビューは、スプリントの最後から2番⽬のイベントであり、スプリントが4週間の場合、タイムボックスは最⼤4時間である。スプリントの期間が短ければ、スプリントレビューの時間も短くすることが多い。

<!-- ### Sprint Retrospective {#sprint-retrospective} -->
### スプリントレトロスペクティブ {#sprint-retrospective}

<!-- The Sprint Retrospective is an event. At this event, the Scrum Team agrees on how to improve. Bad assumptions are also explored, i.e., assumptions that led the Scrum Team in the wrong direction. Good things like particular technologies, processes, patterns, etc., might also be pointed out or reinforced. Inspected elements often vary with the domain of work. Reflection is more effective in a psychologically safe environment. -->
スプリントレトロスペクティブはイベントの一つである。このイベントにおいて、スクラムチームは改善方法について合意する。誤った仮説、すなわちスクラムチームを誤った方向に導く仮説についても検討される。また、有益な事項 —— 特定の技術、プロセス、パターンなど —— が指摘されたり、強調されたりすることもある。検査される要素は、作業領域によってしばしば異なる。振り返りは、心理的安全性のある環境においてこそ、より効果的に行われる。

<!-- The Sprint Retrospective focuses on the most helpful changes to improve, such as: -->
スプリントレトロスペクティブは以下のような改善に最も役立つ変更に焦点を当てる：

<!--
- The Increment
- Outcomes
- Professionalism, e.g., skills, technical practices, tooling, ability to innovate;
- Flow of validated value (68,69), e.g., end-to-end flow metrics, time-to-market;
- Effectiveness (the _how_), e.g., technology, processes, dependencies;
- Interactions and Scrum Team dynamics, e.g., collaboration, working arrangements;
- Information radiators, e.g., product wall, metrics;
- The Definition of Output Done for future Sprints;
- Further adaptations to the Definition of Outcome Done for future Sprints;
- How to automatically attain the measures regarding the Definition of Outcome Done;
- And more.
-->
- インクリメント
- アウトカム
- プロフェッショナリズム。例：スキル、技術的実践、ツール活用、イノベーションの能力
- 検証済み価値のフロー(68,69)。例：エンドツーエンドフロー指標、市場に出すまでの時間
- 効果性（_どのように_）。例：技術、プロセス、依存関係
- 相互作用とスクラムチームダイナミクス。例：協働、ワーキングアグリーメント
- 情報ラジエーター。例：プロダクトウォール、各種指標
- 将来のスプリントのためのアウトプット完成の定義
- 将来のスプリントのためのアウトカム完成の定義へのさらなる適応
- アウトカム完成の定義に関する指標の自動取得方法
- その他

<!-- The most impactful improvements should be addressed as soon as possible. The Scrum Team should not just talk about improvement; Scrum depends on meaningful, continuous improvement follow-through. Some improvement actions rely on the assistance of Supporters, but that does not mean the Scrum Team should not strive for net improvement regardless (such as continual marginal gains). -->
最も影響の⼤きな改善は、できるだけ早く対処する。スクラムチームは単なる改善の議論に終始すべきではない。スクラムは意味のある継続的改善の徹底に依存する。いくつかの改善アクションはサポーターの支援に依存するが、それはスクラムチームが改善に向けた純粋な前進、たとえば継続的なわずかな成果の積み重ねを目指すべきでないということを意味するものではない。

<!-- The Sprint Retrospective concludes the Sprint. It is timeboxed to a maximum of three hours for a four-week Sprint. For shorter Sprints, the event is usually shorter. -->
スプリントレトロスペクティブをもってスプリントは終了する。スプリントが4週間の場合、スプリントレトロスペクティブは最大3時間である。スプリントの期間が短ければ、スプリン
トレトロスペクティブの時間も短くすることが多い。

<!-- ## Multi-Scrum-Team Products {#multi-scrum-team-products} -->
## 複数スクラムチームプロダクト {#multi-scrum-team-products}

<!-- If a Scrum Team becomes too large, it should consider reorganizing into multiple cohesive Scrum Teams, each focused on the same Product. Multiple Scrum Teams on the same Product should share the same Product Goal, Product Backlog, Product Owner, baseline Definition of Outcome Done, and baseline Definition of Output Done. -->
スクラムチームが大きくなりすぎた場合、同じプロダクトに集中する、複数の結束したスクラムチームに再編成することを検討すべきである。同じプロダクトに複数のスクラムチームが存在する場合、それらのチームは共通のプロダクトゴール、プロダクトバックログ、プロダクトオーナー、基準となるアウトカム完成の定義およびアウトプット完成の定義を共有する必要がある。

<!-- Be careful with blind assumptions that more value is produced from more Scrum Teams. Scale only when the benefits clearly outweigh the additional overhead. Before you scale, the single Scrum Team setup has to be able to reliably produce an Increment every Sprint. But if you must scale, use an approach that is coherent with this document. Often fewer teams result in more outcomes. -->
スクラムチームの数が増えればより多くの価値が生み出されるという盲目的な思い込みには注意が必要である。スケーリングを行うのは、追加される負荷を上回る明確な利点がある場合に限る。スケーリングを行う前に、単一のスクラムチームが毎スプリント確実にインクリメントを提供できる状態にあることが必要である。スケーリングが避けられない場合には、本書の内容と整合性のあるアプローチを使用するとよい。多くの場合、チームが少ない方がより多くのアウトカムを生み出す。

<!-- In a multi-Scrum-Team context, Scrum Teams may reduce inter-Scrum-Team dependencies by becoming more cross-functional through collaboration, cross-pollination, transfer of learning, and intentional interactions. The specific skills needed are often broad and will vary with the domain of work. In a multi-Scrum-Team setting, purposeful and intentional interactions and professionalism (including continuous integration) become even more important. -->
複数のスクラムチームの文脈においては、コラボレーション、他家受粉、学習の移転、意図的な相互作用を通じて、より機能横断になることでチーム間の依存関係を減らすことができる。必要なスキルは多岐にわたることが多く、業務領域によって異なる。こうした状況下では、意図的で目的のある相互作用やプロフェッショナリズム（継続的インテグレーションを含む）が一層重要となる。

<!-- In a one Product Owner and one Scrum Team setup, the Product Owner could be a Product manager, marketing director, technology director, etc. In a multi-Scrum-Team setup for a Product, the ideal is still only one Product Owner, who should be a leader for the Product. To allow the Product Owner to handle multiple Scrum Teams on the same Product, the Product Owner often becomes more strategic and delegates problems to solve and opportunities to the Product Developers, including, for example, aspects of Product design or Product management. -->
1人のプロダクトオーナーと1つのスクラムチームという構成では、プロダクトオーナーはプロダクトマネージャー、マーケティングディレクター、技術部門責任者などを担うこともある。プロダクトに対して複数のスクラムチームが存在する構成では、理想としては依然としてプロダクトオーナーは1人のみであり、プロダクトに対するリーダーであるべきである。複数のスクラムチームに対応するため、プロダクトオーナーはより戦略的な役割を担い、問題の解決や機会の実現をプロダクト開発者に委任することが多くなる。たとえば、プロダクトの設計やプロダクトマネジメントの側面などが該当する。

<!-- The Product Backlog is a tool for increasing transparency. -->
プロダクトバックログは透明性を高めるためのツールである。

<!-- Generally, the fewer Product Backlogs per Product, implicit (like a filter of a Product Backlog) or explicit: -->
一般的に、暗黙的（プロダクトバックログのフィルターのように）にしろ明示的にしろ、プロダクトあたりのプロダクトバックログが少ないほど良い：

<!-- - The fewer the silos in the Product and the greater the transparency across the entire Product; -->
- プロダクト内のサイロが減少し、プロダクト全体の透明性が高まる。
<!-- - The more transparent the overall progress tracking across the entire Product; -->
- プロダクト全体における進捗の追跡がより透明になる。
<!-- - The better the big-picture value clarity across the entire Product; -->
- プロダクト全体のビッグピクチャーとしての価値の明確さが増す。
<!-- - The more likely a Scrum Team would know it's working on low-value items from a Product perspective; -->
- スクラムチームがプロダクトの観点から低い価値のアイテムに取り組んでいることに気づきやすくなる。
<!-- - The more likely one is to observe improvement in the attainment of value; and, -->
- 価値の達成における改善が見られやすくなる。
<!-- - The more strategic the Product Owner becomes by delegating cross-Product work to the Product Developers. -->
- プロダクトオーナーは、プロダクトを横断する作業をプロダクト開発者に委任することで、より戦略的な役割を担うようになる。

<!-- Fewer Product Backlogs per Product are better for adaptiveness (80), but without empowered ownership, a coherent span of control, or direct contact with relevant Stakeholders, gaps will arise. Scrum fosters a climate for happenstance and multi-learning as various people and Scrum Teams collaborate, discoveries and insights can be shared and leveraged. This is unlikely to happen in an environment where each component has a Product Backlog in isolation. -->
プロダクトあたりのプロダクトバックログが少ないほど、適応性(80)は高まる。しかし、権限委譲されたオーナーシップ、整合性のある管理範囲、または関連するステークホルダーとの直接的な接点がない場合には、ギャップが生じる。スクラムにより様々な人々やスクラムチームがコラボレーションし、発見や洞察が共有され活用されるように、スクラムは偶発性と多重学習のための土壌を育む。これは、各コンポーネントが孤立したプロダクトバックログを持つ環境では起こりにくい。

<!-- Happenstance in the context of 'The New New Product Development Game' (29) means that sometimes useful ideas or solutions come about by chance, not by careful planning. When Scrum Teams work closely together and share information, they might discover new approaches or answers simply because they are open to unexpected events or accidental findings. -->
「The New New Product Development Game」（29）の文脈における偶然性とは、有用なアイデアや解決策が、綿密な計画ではなく偶然によって生まれることを意味する。スクラムチームが密接に連携し、情報を共有していると、予期せぬ出来事や偶然の発見によって新しいアプローチや答えを見出すことがある。

<!-- Multi-learning means that team members learn in many different ways at the same time. They pick up new skills and knowledge not only in their own area but also in other areas, and they learn as individuals, as a group, and as part of the whole company. This helps the team become more flexible and able to solve a wide range of problems quickly, because everyone is learning from each other and from their experiences as they work together. -->
マルチラーニングとは、チームメンバーが同時に様々な方法で学習することを意味する。メンバーは自分の専門領域だけでなく、他の分野においてもスキルや知識を習得し、個人として、グループとして、そして会社全体の一員として学習していく。これにより、チームは柔軟性を持ち、幅広い課題を迅速に解決できるようになる。なぜなら、全員が互いから学び、共に働く中での経験から学び続けているからである。

<!-- Finding the right balance is a dilemma. There are always trade-offs to consider. However, a good heuristic is: The fewer Product Backlogs, implicit or explicit, the better, enabled through multi-learning and the organizational transfer of learning across Scrum Teams, departments, and Products. -->
適切なバランスを見つけることはジレンマである。常に考慮すべきトレードオフがある。しかし、良い経験則として、プロダクトごとのプロダクトバックログは暗黙的か明示的かを問わず少ない方が良い。それは、マルチラーニングとスクラムチーム、部門、プロダクトを横断した組織的な学習の移転によって実現される。

<!-- Organizational transfer of learning, as described in 'The New New Product Development Game' (29), is the process by which knowledge and insights gained in one new Product development area are regularly shared and applied to subsequent areas or other divisions within the organization. -->
「The New New Product Development Game」（29）で説明されている組織的な学習の移転とは、ある新製品開発の領域で得られた知識や洞察が、後続の領域や他の部門にも継続的に共有され適用されるプロセスを指す。

<!-- Organizations are often designed for ease of management over ease of outcomes. Ask yourself how many Scrum Teams a problem or opportunity touches to deliver value; generally, the lower that number, the better. -->
組織は往々にして、成果を出すための容易さよりも、管理するための容易さを優先して設計される。価値を届けるために、いくつのスクラムチームがその課題や機会に関与するかを自問してみてほしい。一般的には、その数が少ないほど良い。

<!-- Free teams from command and control. Err on the side of aligned autonomy. Foster purposeful, intentional interactions within and between self-managing Scrum Teams (49). Foster a work climate with minimal but sufficient management processes, scaffolding, and boundaries. Balance and nurture Stakeholder expectations and limits. Build change agency and continual improvement in a direction, not just delivery, into a cadence. -->
チームを指揮統制から解き放つ。調整された自律性を重視する。自己管理スクラムチーム(49)の中およびその間で、目的のある意図的な相互作用を育む。最小限でありながら十分なマネジメントのプロセス、足場、境界のある働く環境を醸成する。ステークホルダーの期待と制約のバランスをとり、育成する。単なるデリバリーではなく、方向性のある変革推進力と継続的改善をケイデンスの中に組み込む。

<!-- When in doubt, study the New New Product Development Game (29), embrace the good of what's new in the present, but abandon any notions of an industrial complex (30-35) where only the brave people have the agency to do anything. -->
判断に迷ったときには「The New New Product Development Game」（29）を研究し、現代における新しいものの良さを受け入れつつ、勇敢な人だけが行動力を持つような産業複合体（30-35）の思考は捨てるべきである。

<!-- ## End Note {#end-note} -->
## 最後に {#end-note}

<!-- Jeff Sutherland's 1993 Scrum adoption at Easel was inspired by Christopher Langton's papers (36,37) on Complex Adaptive Systems (CAS) (74-77) theory from Los Alamos Labs, which shows that systems evolve quicker at the edge of chaos. -->
Jeff Sutherlandによる1993年のEasel社でのスクラムの適用は、ロスアラモス研究所におけるChristopher Langtonの複雑適応系（Complex Adaptive Systems, CAS）(74-77)理論に関する論文(36, 37)に着想を得たものである。この理論は、システムがカオスの縁でより速く進化することを示している。

<!-- Scrum is described in the [2020 Scrum Guide](https://scrumguides.org/) (40). Tobias Mayer's A [Simple Guide to Scrum](https://scrum.academy/guide/) (58) is a shortened, edited version of the official Scrum Guide by Ken Schwaber and Jeff Sutherland. The [Scrum Hexis](https://thecynefin.co/product/hexi-scrumorg/?srsltid=AfmBOorcohLYeVy0qBsQFI6mK_bZtJA_uGC6hPL2BdptiTwNmMwpKTQv) (52) elaborates on the 2020 Scrum Guide from a 2025 perspective, but the 2020 Scrum Guide is still the essential reference for Scrum. -->
スクラムは[2020年スクラムガイド](https://scrumguides.org/)(40)で説明されている。Tobias Mayerの[スクラムシンプルガイド](https://scrum.academy/guide/)(58)は、Ken SchwaberとJeff Sutherlandによる公式スクラムガイドの短縮編集版である。[スクラムヘキシス](https://thecynefin.co/product/hexi-scrumorg/?srsltid=AfmBOorcohLYeVy0qBsQFI6mK_bZtJA_uGC6hPL2BdptiTwNmMwpKTQv)(52)は2025年の視点から2020年スクラムガイドを詳しく説明するが、2020年スクラムガイドは依然としてスクラムの基本的なリファレンスである。

<!-- Scrum is like a mirror. If the image in the mirror is not as expected, should the mirror be hidden? -->
スクラム は鏡のようなものである。鏡に映る像が期待通りでない場合、その鏡を隠すべきであろうか？

<!-- Attain at least one Increment each Sprint as a habit before you adapt Scrum. Every part of Scrum has a purpose; understanding the why for each part is essential. Consider the context. The short-term is about delivery. The long-term is about successful emergent change in a direction and the sustainable delivery of value. Successful Scrum adoption depends on getting the balance right between the short and long terms. -->
スクラムを適用する前に、スプリント毎に少なくとも1つのインクリメントを作成することを習慣化する。スクラムのすべての部分には目的がある。各部分の「なぜ」を理解することが不可欠である。文脈を考慮すること。短期的にはデリバリーが重要である。長期的には望ましい方向への創発的な変化の成功と持続可能な価値の提供が重要である。スクラム適用の成功は、短期と長期のバランスを適切に取ることにかかっている。

<!-- Be careful about copying approaches from other organizations without also fostering their culture. Emergent change in the direction of travel is the change. The change includes (but is not limited to) leadership, workflows, processes, and systems, including HR, Finance, Procurement, and more. Scrum is part of a never-ending expedition of continual improvement and evolution in a direction of travel rather than a destination. -->
他の組織からアプローチを模倣する際には、その組織の文化を育むことなしにアプローチを模倣することは慎重にすべきである。望ましい方向への創発的な変化こそが変化でる。その変化にはリーダーシップ、ワークフロー、プロセス、人事、財務、調達などのシステムが含まれるが、これらに限定されない。スクラムは目的地ではなく、望ましい方向に向けた継続的改善と進化の終わりなき旅の一部である。

<!-- ### Acknowledgments {#acknowledgments} -->
### 謝辞 {#acknowledgments}

<!-- Scrum was inspired by Lean (63), the Toyota Production System (59-60), the Harvard Business Review article 'The New New Product Development Game' by Hirotaka Takeuchi and Ikujiro Nonaka (29), and Empiricism at Dupont (61). -->
スクラムは、リーン(63)、トヨタ生産方式(59-60)、竹内弘高と野中郁次郎によるハーバード・ビジネス・レビューの記事「The New New Product Development Game」(29)、デュポン社における経験主義(61)から着想を得ている。

<!-- Scrum was developed in the early 1990s. Ken Schwaber and Jeff Sutherland first co-presented Scrum at the OOPSLA Conference in 1995 (62). The first version of the [Scrum Guide](https://scrumguides.org/) (40) appeared in 2009\. Scrum is evolving. -->
スクラムは1990年代初頭に開発された。Ken SchwaberとJeff Sutherlandは1995年のOOPSLAカンファレンスにて初めてスクラムを共同発表した(62)。[スクラムガイド](https://scrumguides.org/)(40)の初版は2009年に公開された。スクラムは進化を続けている。

<!-- We also thank reviewers who provided feedback to earlier drafts, including but not limited to, Daryn Basson, Alex Benes, Kurt Bittner, Deb Bhattacharya, Magdalena Firlit, Nichervan Fazel, Peter Fischbach, Michael Forni, Tom Gilb, Martin Hinshelwood, Jesse Houwing, Michael Huynh, Matthew Ijogi, Marc Kaufmann, Christian Neverdal, Stas Pavlov, Ian Sharp, Alisa Stolze, Mark Summers, and Nader Talai. -->
初期草稿にフィードバックを提供した以下を含むがこれらに限定されない、レビュアーに感謝する。Daryn Basson, Alex Benes, Kurt Bittner, Deb Bhattacharya, Magdalena Firlit, Nichervan Fazel, Peter Fischbach, Michael Forni, Tom Gilb, Martin Hinshelwood, Jesse Houwing, Michael Huynh, Matthew Ijogi, Marc Kaufmann, Christian Neverdal, Stas Pavlov, Ian Sharp, Alisa Stolze, Mark Summers, and Nader Talai

#

<!-- ## Scrum _Expanded_ on One Page {#scrum-expanded-on-one-page} -->
## スクラム _拡張版_ 1ページ要約 {#scrum-expanded-on-one-page}

<!-- Scrum is described in the [2020 Scrum Guide](https://scrumguides.org/) (40). Scrum is a lightweight framework for addressing complex (30-35) work, particularly in Product discovery, development, delivery, and value realization. Scrum is based on empirical process control (decisions informed by evidence) and lean thinking (reducing waste and focusing on the flow of value) (63). Scrum is purposefully incomplete, guiding interactions rather than prescribing detailed recipes. -->
スクラムは、[2020年版スクラムガイド](https://scrumguides.org/)(40)で説明されている。スクラムは複雑(30-35)な作業、特にプロダクトの発見・開発・提供・価値実現に対応するための軽量なフレームワークである。スクラムは経験的プロセス制御（エビデンスに基づく意思決定）およびリーン思考（ムダを減らし価値の流れに集中する）に基づいている(63)。スクラムは意図的に不完全であり、詳細な手順を規定するのではなく、相互作用を導くものである。

<!-- **Why Use Scrum?**   -->
**なぜスクラムを使うのか？**

<!-- Scrum enables Scrum Teams to identify, represent, or measure emergence (71), embrace uncertainty, respond to change, deliver and validate value frequently, and continuously improve. Scrum fosters collaboration, accountability, and evidence-informed decision-making, fostering the best possible outcomes in a rapidly changing environment. Self-managing Scrum Teams, organized around value, are crucial for creative problem-solving and opportunity capture; non-self-managing Scrum Teams hinder the ability to deal with complexity (30-35). Self-managing Scrum Teams are not to be confused with individual self-management. -->
スクラムは、スクラムチームが創発(71)を識別・表現・測定し、不確実性を受け入れ、変化に対応し、頻繁に価値を提供・検証し、継続的に改善することを可能にする。スクラムは、コラボレーション・説明責任・エビデンスに基づく意思決定を促進し、急速に変化する環境において最良のアウトカムを生み出す。価値を中心に組織された自己管理スクラムチームは、創造的な問題解決や機会の獲得において重要である。自己管理されていないスクラムチームは、複雑性(30-35)に対処する能力を妨げる。自己管理スクラムチームは、個人の自己管理と混同すべきではない。

<!-- **Elements of Scrum** -->
**スクラムの要素**

<!-- 1\. Scrum Theory: Built on three pillars: -->
1\. スクラムの理論：三本柱に基づく

<!-- 
- Transparency – Making work and value visible for Inspection. 
- Inspection – Regularly assessing progress and outcomes for Adaptation. 
- Adaptation – Adjusting plans informed by insights and feedback. 
-->
- 透明性：検査のために作業と価値を可視化する。
- 検査：適応のために進捗とアウトカムを定期的に評価する。
- 適応：洞察とフィードバックに基づいて計画を調整する。

<!-- 2\. Scrum Values: -->
2\. スクラムの価値基準：

<!-- - _Focus_, _Openness_, _Courage_, _Commitment_, and _Respect_ enable effective teamwork; they support trust. -->
- _集中_、_公開_、_勇気_、_確約_、_尊敬_ は効果的なチームワークを可能にし、信頼を築く。

<!-- 3\. _Roles_ / Accountabilities: -->
3\. _役割_ / 説明責任：

<!-- 
- Scrum Team – A small, self-managing, cross-functional, cognitively diverse team consisting of: 
 - Product Owner – Maximizes long-term value, engages Stakeholders, and manages the Product Backlog. 
 - Scrum Master – Guides the Scrum adoption, removes impediments, and fosters continuous improvement. 
 - Product Developers – Deliver Increments every Sprint through their cross-functional capabilities. 
- _Stakeholder - an entity, individual, or group interested in, affected by, or impacting inputs, activities, and outcomes with a direct or indirect interest inside or outside the organization, its Products, or services._ 
 - _Supporter, a Stakeholder type – Fosters the climate and environment and participates as requested._ 
 - _AI – As a tool or also a possible Product Developer, but not to be entirely trusted yet._ 
-->
- スクラムチーム：小さく、自己管理され、機能横断型で、認知的多様性を持ったチームであり、以下で構成される：
  - プロダクトオーナー：長期的な価値を最大化し、ステークホルダーを巻き込み、プロダクトバックログを管理する。
  - スクラムマスター：スクラム適用を導き、障害物を除去し、継続的改善を促進する。
  - プロダクト開発者：機能横断型スキルを通じてスプリントごとにインクリメントをデリバリーする。
- _ステークホルダー：組織・プロダクト・サービスの内外に直接的・間接的な利害関係を持ち、インプット・活動・アウトカムに関心を持ち、影響を受け・影響を与える個人・団体・グループ。_
  - _サポーター（ステークホルダーの一種）：風土と環境を育み、要請に応じて参加する。_
  - _AI：ツールとして、あるいはプロダクト開発者となる可能性もあるが、まだ完全に信頼すべきではない。_

<!-- 4\. Scrum Events & Activities -->
4\. スクラムイベント & 活動

<!-- 
- Scrum operates in Sprints (iterations of determinate length _up to four weeks_) with four timeboxed events: 
- Sprint Planning – Define the Sprint Goal and plan the work. 
- Daily Scrum – Product Developers align daily on progress toward the Sprint Goal or Product Goal. 
- Sprint Review – Inspect the Increment, value, and marketplace, and adapt the Product Backlog. 
- Sprint Retrospective – Reflect and improve the Scrum Team. 
- Refinement – Clarify upcoming or selected work, formally (_as an optional event_) or informally 
-->
- スクラムはスプリント（_最長4週間_ の決められた期間のイテレーション）で運用され、4つのタイムボックス化されたイベントがある：
- スプリントプランニング：スプリントゴールを定義し、作業計画を立てる。
- デイリースクラム：プロダクト開発者が日々、スプリントゴールまたはプロダクトゴールに向けた進捗を調整する。
- スプリントレビュー：インクリメント、価値、市場を検査し、プロダクトバックログを適応させる。
- スプリントレトロスペクティブ：スクラムチームとして振り返り、改善する。
- リファインメント：正式に（_必須でないイベントとして_）または非公式に、今後の作業または選択された作業を明確にする。

<!-- 5\. Scrum Artifacts & Commitments -->
5\. スクラムの作成物 & コミットメント

<!-- 
- _Product & Definition of Outcome Done – Product and valuable outcomes that provide evidence of realized benefits._ 
- Increment & Definition of Output Done – A potentially valuable, releasable candidate update for the Product. 
- Product Backlog & Product Goal – the ordered (sequenced) list of work to achieve a medium-term, more strategic objective. 
- Sprint Backlog & Sprint Goal – Selected Product Backlog Items and a plan for the Sprint, short-term objective. 
-->
- _プロダクト & アウトカム完成の定義：実現した利益のエビデンスとなるプロダクトおよび価値のあるアウトカム。_
- インクリメント & アウトプット完成の定義：潜在的に価値があり、リリース可能なプロダクトのリリース候補アップデート。
- プロダクトバックログ & プロダクトゴール：中期的でより戦略的な目標を達成するため、（一列に）順序付けされた作業リスト。
- スプリントバックログ & スプリントゴール：選択されたプロダクトバックログアイテムと、スプリントの短期的な目標に向けた計画。

#

<!-- ## Expansion Log {#expansion-log} -->
## 拡張ログ {#expansion-log}

<!-- Additions -->
追加事項

<!-- 
- AI section 
- Self-managing Scrum Team, Cadence, Professionalism sections 
- Emergence section, open to the idea that risk or variances from expectations don't necessarily go down over time 
- Complexity (30-35)– The case for Scrum section 
- Leadership and Systems thinking sections 
- Product thinking and Discovery sections 
- First principles, People, and Change sections 
- Multi-Scrum-Team Products section 
- Stakeholder role (including customers, decision-makers, and users), Supporter as a Stakeholder type 
- Refinement, Product Backlog Item sections 
- Optional: Product Vision, Acceptance Criteria, Outcome Criteria 
- Definition of Outcome Done, extra emphasis on adaptation informed by outcome evidence 
- Stakeholder, value, result feedback, release, outcomes, risk, impediment, and leader are defined 
- Flow analytics, Monte Carlo probabilistic forecasts, large-level estimation, fuzzy sets (all optional) 
- Scrum Expanded on one page 
- A need to make workflows, designs, processes, systems, and the work environment coherent with emergence 
- 'Product Ownership requires strong Product management skills and domain skills...A Product Owner who is not willing, ready, or able to gain Product management skills should step down as Product Owner.' 
- A Product Developer who is neither willing nor ready nor able to be a professional should step down. 
- A Scrum Master who is neither willing, ready, nor able to be an agent of change should step down. 
- Appendices: Cynefin® Kind of Explanation - unofficial and unauthorized, Emergent Strategy, Adaptive (80) Enterprise, Adaptive Executive or Board Member 
-->
- AIセクション
- 自己管理スクラムチーム、ケイデンス、プロフェッショナリズムセクション
- 創発セクション：リスクや期待値からの乖離が時間とともに必ずしも減少するとは限らないという考えを受け入れる
- 複雑性(30-35)—スクラムの理由セクション
- リーダーシップとシステム思考セクション
- プロダクト思考とディスカバリーセクション
- 第一原理、人と変化セクション
- 複数スクラムチームプロダクトセクション
- ステークホルダーの役割（顧客、意思決定者、ユーザーを含む）、ステークホルダータイプとしてのサポーター
- リファインメント、プロダクトバックログアイテムセクション
- オプション：プロダクトビジョン、受け入れ基準、アウトカム基準
- アウトカム完成の定義：アウトカムのエビデンスに基づく適応に特に重点を置く
- ステークホルダー、価値、結果からのフィードバック（結果フィードバック）、リリース、アウトカム、リスク、障害物、リーダーを定義
- フロー分析、モンテカルロ確率予測、大規模見積もり、ファジー集合（すべてオプション）
- スクラム拡張版1ページ要約
- ワークフロー、設計、プロセス、システム、作業環境を創発と整合させる必要性
- 「プロダクトオーナーシップには強力なプロダクトマネジメントスキルとドメインスキルが必要である...プロダクトマネジメントスキルを身につける意欲・準備・能力がないプロダクトオーナーはプロダクトオーナーの役割を退くべきである。」
- プロフェッショナルであろうとする意欲・準備・能力がないプロダクト開発者はその役割を退くべきである。
- チェンジエージェントであろうとする意欲・準備・能力がないスクラムマスターはその役割を退くべきである。
- 付録：クネビンフレームワーク勝手に非公式解説、創発的戦略、適応力(80)のある企業、適応力のある経営層・役員

<!-- Suggestions -->
提案事項

<!-- 
- Clarification and modification of responsibilities while 'embracing fuzziness' (73) 
- From Scrum is immutable or simple to Scrum is evolving, in some cases, softened wording from 'must' to 'should' 
- Product Owner accountability to Product Owner role with accountability; maximizing long-term value 
- Developers accountability to Product Developer role with accountability 
- Scrum Master accountability to Scrum Master role with accountability; Scrum Master is one person, not AI 
- Product Developers may be human or AI, or helped by AI, at least one human; more human Product Developers are better for cognitive diversity and addressing complexity 
- Scrum Team commits to the Sprint Goal, not the former Developers; important that Product Owner is focused 
- Sprint Backlog toward Sprint Goal or Product Goal, not just Sprint Goal 
- Product definition, mention of Product strategy, roadmaps, Product models, scaling, goal-oriented approaches 
- Emphasis on learning, result-feedback, side effects, outcomes over outputs 
- To preserve the flow of value, incomplete Product Backlog items don't have to return to the Product Backlog 
- Definition of Done renamed to Definition of Output Done 
- Emphasis on full Product life-cycle, full feature life-cycle, and value realization 
- Sprint Planning Topics 1-3 renamed to the Why, What, and How; Sprint up to 4 weeks rather than up to 1 month 
- Possible additional review of the Increment and outcomes in a psychologically safer environment at the Sprint Retrospective 
- More emphasis that the Increment is always Done, hence 'Done Increment' is superfluous 
- Explicit about the malleability of the Product Goal (within reason) 
- From the optimistic assumption of value delivery to an intentional _Focus_ on value realization 
- Ethos of built-in quality, clarity, data-informed decisions, intentional interactions, emergence (71), outcomes over outputs, pause & reflection, realizing value, understanding the problem or opportunity, fostering the climate/environment for a coherent Scrum adoption, and continuous improvement in a direction 
- De-emphasis of the nebulous organization in order to attach the change to roles 
- More intentional observance of the Scrum Values, considering the context 
-->
- 「曖昧さを受け入れる」(73)、一方での責任の明確化と修正
- スクラムは不変またはシンプルから、スクラムは進化しているへ。一部では「must（しなければならない）」から「should（すべき）」への表現の軟化
- プロダクトオーナーの説明責任から、説明責任を伴うプロダクトオーナーの役割へ。長期的価値の最大化を強調
- 開発者の説明責任から、説明責任を伴うプロダクト開発者の役割へ
- スクラムマスターの説明責任から、説明責任を伴うスクラムマスターの役割へ。スクラムマスターは1人の人間であり、AIではない
- プロダクト開発者は人間またはAI、もしくはAIの支援を受けることが可能だが、少なくとも1人は人間である。認知的多様性と複雑性への対応には、人間のプロダクト開発者が多い方が良い
- スクラムチームは以前の開発者ではなく、スプリントゴールに確約する。プロダクトオーナーが集中していることが重要
- スプリントバックログは、スプリントゴールのみでなく、スプリントゴールまたはプロダクトゴールに向けたもの
- プロダクト定義、プロダクト戦略、ロードマップ、プロダクトモデル、スケーリング、ゴール指向アプローチへの言及
- 学習、結果からのフィードバック（結果フィードバック）、副作用、アウトプットよりもアウトカムの強調
- 価値の流れを保持するために、未完了のプロダクトバックログアイテムはプロダクトバックログに戻す必要がない
- 完成の定義からアウトプット完成の定義への名称変更
- プロダクトライフサイクル全体、フィーチャーライフサイクル全体、価値実現の強調
- スプリントプランニングトピック1-3を、なぜ（Why）、何を（What）、どのように（How）に名称変更。スプリントは1か月以内から4週間以内に変更
- スプリントレトロスペクティブにおいて、心理的安全性の高い環境でインクリメントとアウトカムの追加レビューを行う可能性
- インクリメントは常に完成済であるため、「完成したインクリメント」という表現は冗長であることをより強調
- プロダクトゴールの可変性（合理的範囲内での）を明示
- 価値提供の楽観的推定から、価値実現への意図的な _集中_ へ
- 作り込み品質、明確さ、データに基づく意思決定、意図的な相互作用、創発(71)、アウトプットよりもアウトカム、立ち止まりと内省、価値実現、問題や機会の理解、一貫性のあるスクラム適用のための風土・環境の醸成、方向性のある継続的改善を重視する精神
- 変革を役割に結び付けるために、曖昧な組織への言及を減らす
- 文脈を考慮した、スクラムの価値基準のより意図的な遵守

<!-- ## Appendix {#appendix} -->
## 付録 {#appendix}

<!-- **Section 2: MORE executive SUCCESS extract**   -->
**セクション2：MORE executive SUCCESS抜粋**

<!-- Title: MORE executive SUCCESS extract   -->
タイトル：MORE executive SUCCESS抜粋

<!-- Author: John Coleman   -->
著者：John Coleman

<!-- Source: (6)   -->
出典：(6)

<!-- License/Copyright: [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/), © 2017-2025 Orderly Disruption Limited   -->
ライセンス/著作権：[CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/), © 2017-2025 Orderly Disruption Limited

<!-- Note: This section is included in its original, unaltered form with permission under the terms of the [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/) license. No changes have been made. -->
注記：本セクションは[CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)ライセンスの条項に基づき、オリジナルから改変されていない形式で掲載する。変更は一切加えられていない。

<!-- ### The Adaptive Enterprise {#the-adaptive-enterprise} -->
### 適応力のある企業 {#the-adaptive-enterprise}

<!-- It's difficult for an enterprise to be adaptive (80) without a climate where words and actions match. Over eighty engagement models were studied. Amongst those were scaling or descaling frameworks, and Product operating models, which can be useful for multi-Scrum-Team Products. Models range from going too far to not doing enough in helping the Product organization become more adaptive. There is no grand, universal truth or context-free 'Goldilocks zone.' -->
言葉と行動が一致する風土がなければ、適応力(80)のある企業であるのは困難である。80件以上のエンゲージメントモデルが研究された。その中には、複数スクラムチームのプロダクトに役立つスケーリング・デスケーリングのフレームワーク・プロダクトオペレーティングモデルが含まれる。これらのモデルには、適応力のあるプロダクト組織となる助けとして行き過ぎたものから全く不十分までさまざまなものがある。普遍的な真実や文脈を問わない「ゴルディロックスゾーン」は存在しない。

<!-- Of the engagement models studied, there are a number of notable contenders, including but not limited to Beyond Budgeting, Humanocracy, and Sociocracy, that, depending on the context, should be explored. Consider the combination with each other and with other approaches. -->
調査対象となったエンゲージメントモデルの中で注目すべき候補は多数存在する。脱予算経営、ヒューマノクラシー、ソシオクラシーを含むがこれに限定されない。文脈に応じてこれらを探求すべきである。相互に、あるいは他のアプローチと組み合わせて用いることを検討してほしい。

<!-- #### Beyond Budgeting {#beyond-budgeting} -->
#### 脱予算経営 {#beyond-budgeting}

<!-- Beyond Budgeting (15-28, 90-98, 103\) is a management philosophy that rejects traditional, rigid annual budgeting in favor of a decentralized and adaptive approach to organizational control and performance management. It is built on 12 guiding principles-six focused on leadership and six on management processes-that promote decentralized decision-making, transparency, team autonomy, and a strong alignment with customer value. -->
脱予算経営(15-28,90-98,103)は、従来の硬直的な年次予算編成を否定し、分散型かつ適応的な組織管理・業績管理アプローチを取る経営哲学である。リーダーシップに関する6つの原則とマネジメントプロセスに関する6つの原則、計12の指針となる原則に基づいており、分散型の意思決定・透明性・チームの自律性・顧客価値との強い整合性を促進する。

<!-- Instead of fixed targets and detailed annual plans, Beyond Budgeting encourages dynamic goal-setting, continuous planning, and allocation informed by real-time needs, fostering adaptiveness and responsiveness in a rapidly changing business environment. This approach aims to empower teams, enhance innovation, and ensure organizations are better equipped to navigate uncertainty (72) and complexity (30-35). Beyond Budgeting is badly named (false assumption it's only about Finance) and well named at the same time (indeed going beyond budgeting). -->
固定的な目標や詳細な年次計画の代わりに、脱予算経営は動的な目標設定・継続的計画・リアルタイムのニーズに基づく資源配分を奨励する。これにより、急速に変化するビジネス環境における適応性・反応性を高める。このアプローチは、チームのエンパワーメント・イノベーションの促進・不確実性(72)と複雑性(30-35)への組織対応力...を高めることを目的としている。脱予算経営という名称は、財務にのみ焦点を当てているという誤解を生む不適切な名称と言える一方で、予算の枠を超えるという意味では適切な名称でもある。

<!-- #### Humanocracy {#humanocracy} -->
#### ヒューマノクラシー {#humanocracy}

<!-- Humanocracy (2), as defined by Gary Hamel, is a management model that replaces rigid hierarchies and centralized control with systems that maximize each person's contribution and creativity. In a humanocracy, organizations exist to serve and empower people, not just treat employees as resources for company goals. -->
Gary Hamelにより提唱されたヒューマノクラシー(2)は、硬直的な階層構造や中央集権的な管理を廃し、個々人の貢献と創造性を最大限に引き出すシステムに置き換えるマネジメントモデルである。ヒューマノクラシーにおいて、組織は人々に奉仕し、力を与えるために存在するのであり、従業員を単なる企業目標達成のためのリソースとして扱うのではない。

<!-- It is built on principles like distributed ownership, meritocracy, openness, experimentation, and community, fostering autonomy and innovation. Authority is based on competence, and decision-making is decentralized to those closest to the work. Humanocracy prioritizes trust, engagement, and unleashing human potential over compliance and control, aiming to build resilient, innovative workplaces where employees drive meaningful change. -->
ヒューマノクラシーは、分散的なオーナーシップ・実力主義・公開性・実験・コミュニティといった原則に基づいており、自律性とイノベーションを育む。権限はコンピテンシーに基づいて与えられ、意思決定は現場に最も近い人々に分散される。ヒューマノクラシーは、コンプライアンスや統制よりも、信頼・エンゲージメント・人間の可能性の解放を優先し、レジリエンスと革新性に富んだ職場環境の構築を目指す。

<!-- While models like Haier's Rendanheyi (56, 101\) share values of decentralization and empowerment, humanocracy is a broader philosophy focused on replacing bureaucracy with people-centric principles that unlock collective capability and value. -->
ハイアール社の人単合一（RenDanHeYi）モデルは分散化とエンパワーメントの価値を共有するが、ヒューマノクラシーは官僚主義を人間中心の原則に置き換え、集合的能力と価値を解き放つことを目的とするより広範な哲学である。

<!-- #### Sociocracy {#sociocracy} -->
#### ソシオクラシー {#sociocracy}

<!-- Sociocracy (1,11-14) is a governance system that organizes people into self-managing (49) circles and makes decisions by consent, not majority vote. Developed by Gerard Endenburg (81) in the Netherlands in the 1970s, it ensures everyone affected by a decision has a voice, with proposals advancing unless a reasoned objection is raised. Guided by the principle of 'good enough for now, safe enough to try,' sociocracy distributes authority, promotes transparency, accountability, and continuous improvement, and fosters collaboration and shared ownership. Its principles have influenced models like Holacracy and self-managing teams. -->
ソシオクラシー(1,11-14)は、自己管理型(49)サークルに人々を組織し、多数決ではなく同意によって意思決定を行うガバナンスシステムである。1970年代にオランダのGerard Endenburg(81)によって開発され、意思決定の影響を受けるすべての人に発言権が与えられ、合理的な異議が提起されない限り提案が進む仕組みである。「今は十分、試すには十分安全」という原則に基づき、ソシオクラシーは権限の分散、透明性、説明責任、継続的改善、そしてコラボレーションとシェアード・オーナーシップを促進する。

<!-- The most established variant is the Sociocratic Circle-Organization Method (SCM), the original, formalized method. SCM uses semi-autonomous circles, double-linking (where two people attend two directly related circles to connect those circles), consent-based decision-making, and open elections for roles. This structure maintains both organizational efficiency and member equivalence, and has a well-documented track record in businesses, cooperatives, and schools in the Netherlands. -->
最も確立された形式はSociocratic Circle-Organization Method（SCM）であり、これは元祖とも言える形式化された手法である。SCMでは、半自律的なサークル、ダブルリンク（2人が直接関連する2つのサークルに所属して接続する）、同意に基づく意思決定、そして役割の公開選挙が採用する。この構造は、組織の効率性とメンバーの対等性を維持し、オランダの企業、協同組合、学校において実績がある。

<!-- While newer variants like Sociocracy 3.0 (S3) offer more flexibility, SCM remains the most historically validated and widely documented form of sociocracy. -->
最近ではより柔軟性を高めているソシオクラシー 3.0 （S3）のような新しいバリエーションもあるが、SCMは依然として最も歴史的に検証され、広く文書化されたソシオクラシーの形式である。

<!-- ### The Adaptive Executive or Board Member {#the-adaptive-executive-or-board-member} -->
### 適応力のある経営層・役員 {#the-adaptive-executive-or-board-member}

<!-- MORE Executive SUCCESS identifies a number of opportunities for executives and board members: -->
MORE Executive SUCCESSは、経営層・役員に対して以下のような多くの機会を特定している。

<!-- 
- Acquire knowledge on stakeholders (including the customer) 
  and their needs and limits, the work, how the work works, 
  the waste, the anti-patterns, the problem space, 
  the opportunities, the evidence that value can be harvested, 
  behaviors, and habits 
- Foster a humane performance climate and enable succession planning that protects and improves it 
- Develop responsiveness and flow (68,69) across value networks 
- Nurture emergence (71) and adaptiveness (80) in a direction with clarity 
- Engage people, including customers and colleagues 
- Foster effective and timely succession planning 
-->
- ステークホルダー（顧客を含む）のニーズと制約、作業、その作業の進め方、無駄、アンチパターン、問題領域、機会、価値創造のエビデンス、振る舞い、習慣に関する知識を取得する
- 人間的なパフォーマンスを発揮する風土を醸成し、それを保護し改善する後継者育成計画を可能にする
- 価値ネットワーク全体にわたる反応性とフロー(68,69)を開発する
- 明確な方向性をもって創発(71)と適応性(80)を育む
- 顧客と同僚を含む人々を巻き込む
- 効果的かつタイムリーな後継者育成計画を促進する

<!-- 
There is abundant guidance 
    for those from the organization's structural bottom, middle, and sides on 
        how to improve adaptiveness (80). 
The executive level, however, is poorly served 
    with guidance on 
        timely humane effectiveness, 
        customer interactions, and 
        'how the work works.' 
There is a misconception 
    that hired change agents fill the gap alone, 
        which is unrealistic 
            because the organization owns the change. 
-->
組織の構造上、下層・中層・側面からの適応性(80)向上に関するガイダンスは豊富に存在する一方で、経営層には、タイムリーかつ人間的な効果性、顧客との相互作用、そして「作業の進め方」に関するガイダンスが十分に提供されていない。雇われたチェンジエージェントが単独でこのギャップを埋められるという誤解があるが、これは非現実的である。変革は組織自身の責任である。

<!-- 
Timely, humane effectiveness 
   should permeate the entire corporate structure 
       to gain its numerous benefits. 
Even organizations that have 'succeeded in change adoption' 
   face hazards. 
People leave, 
other perspectives take hold, and 
corporate fads can unravel adaptiveness gains. 
Negative chaos could arise. 
-->
タイムリーで人間的な効果性は、企業構造全体に浸透させる必要があり、その多くの利益を享受するべきである。「変革の採用に成功した」組織であっても、危険に直面する。人材が離職し、他の視点が定着し、企業の流行が適応性の成果を崩すこともある。負の混沌が生じる可能性もある。

<!-- 
Many players and engagement models 
  purportedly support executive adaptiveness, 
      which is great 
          because different organizational contexts 
              require different approaches. 
But for all the resources available, 
  the overall landscape of executive adaptiveness 
      hasn't changed much in 25+ years. 
-->
多くのプレイヤーやエンゲージメントモデルが、経営層の適応性を支援することを謳っているのは素晴らしいことである。なぜなら、異なる組織の文脈には異なるアプローチが必要だからである。しかし、豊富なリソースが存在しているにもかかわらず、経営層の適応性に関する全体的な状況は、この25年以上ほとんど変化していない。

<!-- 
Whether using tactics, strategies, methods, and frameworks 
   or none, 
organizations should first embrace the ethos 
   that underpins 
       ambidexterity, 
       humane effectiveness, 
       adaptiveness, and 
       timeliness 
   at the top. 
Otherwise, 
   executives and board members will continue to oversee 
       'change theater' and 
       an incomplete patchwork of 
           timely, humane, effective pockets 
           within organizations. 
-->
戦術、戦略、手法、フレームワークを活用するかしないかに関わらず、まずはトップ層として両利き性、人間的な効果性、適応性、タイムリーさを支える精神を受け入れるべきである。そうでなければ、経営層・役員は、組織内の変革ごっこや、タイムリーさ、人間性、効果性のある作業の寄せ集めを監督し続けることになる。

<!-- #### Shining a Light on Executive Behavior {#shining-a-light-on-executive-behavior} -->
#### 経営層の行動に光をあてる {#shining-a-light-on-executive-behavior}

<!-- 
Executive and board member posture or actions 
   will influence the new behavior of others 
       more than any of their words or directives. 
Nevertheless, 
   it would be best to revise the questions asked to improve 
      ambidexterity, humane effectiveness, adaptiveness, and timeliness. 
-->
経営層・役員の姿勢や行動は、
    言葉や指示以上に、
    他の人々の新しい行動に影響を与える。
しかしながら依然として、
  組織内で問いかけられる質問を見直すことが最良であろう。
    両利き性、人間中心の効果性、適応性、適時性を
    改善するために。

<!-- 
Ambidexterity, humane effectiveness, adaptiveness, and timeliness 
   require the eventual extinction of incoherent executive behavior. 
Examples of more helpful behaviors are 
   accepting failure, 
   seeking information before judging, 
   giving opportunities to try something new to learn things, 
   making it okay not to know, and 
   helping people focus. 
There are some notable options for dealing with executive behavior. 
-->
両利き性、人間中心の効果性、適応性、適時性を高めるために、
  一貫性を欠く経営層の行動は、最終的に解消されなければならない。
より有用な行動とは、
  失敗を受け入れ、
  判断する前に情報を求め、
  学習のために新しいことを試す機会を与え、
  知らないことを良しとし、
  人々が集中することを支援する、
  などである。
経営層の行動に対峙する際には、
   おぼえておくべき選択肢がいくつかある。

<!-- #### Immunity To Change® {#immunity-to-change®} -->
#### 変革への免疫（Immunity To Change®） {#immunity-to-change®}

<!-- 
Lisa Laskow Lahey and Robert Kegan (principals at The Developmental Edge) 
   created a change approach 
       known as Immunity to Change® (3,4). 
People often know what to do, 
   but they won't do it 
       because of conflicting internal commitments. 
Metaphorically, 
   people have 'one foot on the gas and one foot on the brake'. 
-->
Lisa Laskow LaheyとRobert Kegan（The Developmental Edgeの代表）は、
   変革への免疫（Immunity To Change®）(3,4)として知られる
   変革アプローチを生み出した。
人々は何をすべきかをわかっていながら、
   内部に対立するコミットメントを持っているために、
   それを行わないことが、しばしばある。
喩えていうなら、
   人々は「片足をアクセルに、片足をブレーキに」置いている。

<!-- 
Immunity to Change® is a framework 
   for defining those 'hidden commitments' and 'limiting assumptions' 
       that prevent people from changing and realizing their goals. 
The Immunity to Change® theory and map 
   have helped countless professionals and organizations 
       to unearth and move beyond the commitments 
           preventing their professional and organizational growth. 
-->
変革への免疫®は、
   「隠れたコミットメント」と「強力な固定観念」を定義するための
   フレームワークである。
       これらが人々の変化と目標実現を妨げているのだ。
変革への免疫®の理論とマップは、
   数え切れないほどの専門家と組織を支援してきた。
       専門的・組織的成長を妨げるコミットメントを
       表出化して、それを乗り越えていくために。

<!-- #### Intent-Based Leadership® {#intent-based-leadership®} -->
#### 意図ベースリーダーシップ（Intent-Based Leadership®） {#intent-based-leadership®}

<!-- 
_Intent-Based Leadership® (IBL)_ (7, 8, 9) 
   _is a language teams use for high performance 
       that replaces the programmed industrial-age language. 
IBL stresses the concept of intent 
   from leaders and the team. 
It is based on the books 
   Turn The Ship Around and Leadership is Language 
       by L. David Marquet._ 
-->
_意図ベースリーダーシップ（Intent-Based Leadership®）（IBL）_(7,8,9)_は、
   高いパフォーマンスを目指すチームが使用する言語であり、
       プログラム化された産業時代の言語を置き換えるものである。
IBLは、
   リーダーとチームによる意図、という概念を重視している。
これは、
   L. David Marquetによる
       「Turn The Ship Around」と「Leadership is Language」
   という書籍に基づいている。_

<!-- 
_One of the core beliefs is that 
   leadership is not for the select few at the top. 
In highly effective organizations, 
   there are leaders at every level. 
L. David Marquet molded the leadership he developed 
   on the nuclear-powered submarine USS Santa Fe 
       into a system called Intent-Based Leadership 
           for your organization to implement 
               to invite thinking and leadership at every level._ 
-->
_核となる信念の一つは、
   リーダーシップが選ばれた少数のトップのためのものではない、
   ということである。
きわめて効果的な組織では、
   すべてのレベルにリーダーが存在する。
L. David Marquetは、
   原子力潜水艦USSサンタフェで開発したリーダーシップを、
       意図ベースリーダーシップと呼ばれるシステムに発展させた。
           これは、組織があらゆるレベルで
           思考とリーダーシップを促進するために
           実装できるものである。_

<!-- 
_Intent-Based Leadership helps leaders build organizations 
   where people are at their best 
       because they have a sense of autonomy, 
       tap their intrinsic motivation, 
       feel listened to, and 
       have a drive for excellence. 
They feel high levels of ownership and control, 
   so they engage their hearts and heads. 
They gain psychological rewards 
   as they see the fruits of their decisions and work. 
There is a bias for action, and 
teams are more agile and resilient 
   because error creation and propagation are reduced._ 
-->
_意図ベースリーダーシップは、
   人々が最高の状態でいられる組織を
   リーダーが構築することを支援する。
       なぜ人々が最高の状態でいられるかというと、
           自律性を感じ、
           内発的動機を活用し、
           耳を傾けられていると実感し、
           卓越性への意欲を持てるからである。
高いレベルのオーナーシップと主体性を感じるため、
   心と頭の両方をあてがってくれるのだ。
自分の意思決定と仕事の成果を目にすることで、
   心理的な報酬を得る。
行動を重視するようになり、
   エラーの発生と拡散が減少する。
   そのため、チームはより機敏で回復力を持つことになる。_

<!-- 
_The practice of stating intent 
   allows teams to have distributed decision-making 
       while maintaining unity of effort. 
The Intent-Based Leadership International (IBLI website) 
   offers consulting, coaching, online courses, and books 
       for leaders._ 
-->
_意図を表明する実践により、
   チームは努力の統一性を保ちながら
       分散的な意思決定を行うことができる。
意図ベースリーダーシップ・インターナショナル（IBLIウェブサイト）は、
   リーダー向けに
       コンサルティング、コーチング、オンラインコース、書籍を
       提供している。_

<!-- **_Section 3: Cynefin Framework Kind of Explanation unofficial & unauthorized_**   -->
**_セクション3：クネビンフレームワーク 勝手に非公式解説_**

<!-- _Title: Cynefin Framework Kind of Explanation unofficial & unauthorized_   -->
_タイトル：クネビンフレームワーク 勝手に非公式解説_

<!-- _Source: \[Link to original [Cynefin wiki](https://cynefin.io/wiki/Main_Page)\], \[Link to this adaptation\]_   -->
_出典：\[元の[クネビンwiki](https://cynefin.io/wiki/Main_Page)へのリンク\]、\[この適応版へのリンク\]_

<!-- _License: Creative Commons Attribution-ShareAlike 4.0 International ([CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/))._ © 2017-_2025 Cynefin.io._   -->
_ライセンス：クリエイティブ・コモンズ 表示-継承 4.0 国際（[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/)）。 © 2017-2025 Cynefin.io._

<!-- _Disclaimer: No warranties are given. Use at your own risk._   -->
_免責事項：いかなる保証も提供されない。ご自身の責任で使用されたい。_

<!-- _This section is offered under the Attribution-ShareAlike 4.0 International license of Creative Commons._   -->
_このセクションは、クリエイティブ・コモンズの表示-継承4.0国際ライセンスの下で提供されている。_

<!-- _By using this Cynefin Framework Kind of Explanation unofficial & unauthorized, you agree to the terms of the [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) license._ -->
_このクネビンフレームワーク 勝手に非公式解説を使用することで、[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/)ライセンスの条項に同意したものとみなされる。_

<!-- ### Cynefin® {#cynefin®} -->
### クネビン（Cynefin®） {#cynefin®}

<!-- 
 (30-35) offers a compass 
   for leadership decision-making. 
It was popularized by the HBR article 
   'A Leader's Framework for Decision Making' 
       by Dave Snowden and Mary Boone in 2007 
   and again in 
       'Managing complexity (and chaos) in a crisis 
       - a field guide for decision makers 
           inspired by the Cynefin framework', 
       also known as the 'EU Field Guide.' 
Its premise is that 
   one should act differently 
       depending on the dynamics of the space. 
It is often oversimplified. 
A given problem could exist in all domains simultaneously, 
   each having different aspects. 
-->
クネビン（Cynefin®）(30-35)は、
   リーダーシップの意思決定のための羅針盤を提供する。
これは2007年の
   Dave SnowdenとMary Booneによる
   HBR論文「意思決定のためのリーダーのフレームワーク」と、
   「EUフィールドガイド」としても知られる
       「危機における複雑性（と混沌）の管理 ～
           クネビンフレームワークに着想を得た
           意思決定者のためのフィールドガイド」
   によって普及した。
その前提は、
   各領域の力学に応じて
   取るべき行動は異なる、
   ということである。
これはよく、単純化されすぎてしまう。
ある問題は、
    すべてのドメインに同時に存在しながら、
    別の特性を持つ可能性がある。

<!-- 
A phase shift refers to an often abrupt transition between domains, 
   particularly from the ordered to chaos, 
       triggered when a system's constraints 
           (rules, habits, boundaries, and feedback) 
       are misaligned or collapse. 
It marks a fundamental change in system behavior 
   where previous methods of control or understanding 
       no longer work. 
-->
位相シフトとは、
   しばしば発生する、ドメイン間の急激な移行のことである。
       特に秩序から混沌への移行において、
       システムの制約
           （ルール、習慣、境界、フィードバック）
       が不整合を起こしたり崩壊したりした時に
       引き起こされる。
これは、システム行動の根本的変化を示すものであり、
   これまでの統制や理解の方法が
       もはや機能しなくなる状況である。

<!-- Not all aspects of Product development are complex. The Scrum Team, for a given situation, might need to consider a variety of phase shifts between: -->
プロダクト開発のすべての側面が複雑であるわけではない。スクラムチームは、特定の状況において、以下の間の様々な位相シフトを考慮する必要があるかもしれない：

<!-- 
- Ordered: Key idea: Stability, routine, best/good practice, expertise 
 - Expertise is sufficient, 
     and cause and effect are predictable or knowable 
 - Response options not limited to: 
     Apply best/good practices, 
     follow rules, 
     use expert analysis, 
     do individual research 
 - Metaphors: 
     Hard to barely frozen ice cube, 
     pleasant weather, 
     or chess/sudoku 
 - Nature example: 
     A modern, climate-controlled glasshouse
         ––predictable, controlled, planned growth 
 - Product example: 
     Resolving a tricky technical issue 
         by consulting experts and analyzing logs 
-->
- 秩序：主要概念：安定性、ルーチン、ベスト/グッドプラクティス、専門知識
  - 専門知識で十分であり、
    原因と結果は予測可能または認識可能
  - 対応選択肢（これらに限定されない）：
    ベスト/グッドプラクティスの適用、
    ルールの遵守、
    専門家分析の活用、
    個別調査の実施
  - 比喩：
    硬い氷からかろうじて凍った氷まで、
    快適な天気、
    チェス/数独
  - 自然の例：
    現代の気候制御された温室
      ——予測可能で統制された計画的成長
  - プロダクトの例：
    専門家への相談とログ分析により
    困難な技術的問題を解決する

<!-- 
- Complex (30-35), where expertise is valuable but not enough, 
   and one can only understand why things happened after the fact. 
   Key idea: emergence, safe-to-fail experiments 
 - Responses not limited to: 
   - Encourage learning and adaptation 
   - Trying several small, parallel, safe-to-fail experiments 
   - Fostering fresh thinking through cognitive diversity and collaboration 
   - Borrowing solutions from other places if they might help 
   - Testing out smart guesses or informed hunches to see what works 
 - This is all while following helpful guidelines 
     that encourage good results to develop naturally 
 - Metaphors: Flowing water, rainy weather, or poker 
 - Nature example: 
     Bramble thicket––everything is entangled, connections are unpredictable 
 - Product example: 
     Experimenting with different features or solutions informed by user feedback, 
         e.g., A/B testing new Product ideas 
-->
- 複雑(30-35)：専門知識は価値があるが不十分で、
    なぜ物事が起こったかは事後にのみ理解できる。
    主要概念：創発、失敗しても安全な実験
  - 対応（これらに限定されない）：
    - 学習と適応を促す
    - いくつかの小さな並行した失敗しても安全な実験を試す
    - 認知的多様性と協働を通じて新鮮な思考を育む
    - 役立つ可能性がある場合は他の場所からソリューションを借用する
    - 何が機能するかを確認するために賢明な推測や情報に基づく直感をテストする
  - これらはすべて、良い結果が自然に発展することを促す
    有益なガイドラインに従いながら行う
  - 比喩：流れる水、雨天、ポーカー
  - 自然の例：
    茨の茂み —— すべてが絡み合い、つながりは予測不可能
  - プロダクトの例：
    ユーザーフィードバックに基づく異なるフィーチャーやソリューションの実験、
    例：新しいプロダクトアイデアのA/Bテスト

<!-- 
- Chaotic: 
 - Negative: Key idea: Destructive crisis, breakdown, urgent action 
   - Responses not limited to: 
       Take immediate action to restore order, 
       prioritize safety, 
       do something quickly without making matters worse 
   - Metaphors: 
       Shattering ice or uncontrolled explosion, 
       toxic gas, tornado, earthquake, wildfire, 
       or a riot in a stadium 
   - Nature example: 
       Natural disaster (e.g., tsunami)–sudden, destructive, unpredictable 
   - Product example: 
       Responding to a critical security breach 
           by isolating systems and deploying emergency fixes 
 - Positive: Key idea: Generative disruption, rapid innovation 
   - Response options not limited to: 
       Disrupt intentionally, 
       encourage creativity, 
       harness energy, 
       e.g., hackathon, incubator, 'Innovation Friday' 
   - Metaphors: 
       Controlled explosion (steam engine), 
       fireworks, 
       or festival bonfire 
   - Nature example: 
       Forest fire clearing old growth for new plants–ecosystem renewal 
   - Product example: 
       Rapidly pivoting a Product during a market disruption 
           to seize new opportunities 
           (e.g., launching a feature in response to a competitor's move) 
-->
- 混沌：
  - 負の場合：主要概念：破壊的危機、破綻、緊急行動
    - 対応（これらに限定されない）：
      秩序回復のための即座の行動、
      安全の優先、
      事態を悪化させることなく迅速に何かを行う
    - 比喩：
      砕ける氷や制御されない爆発、
      毒ガス、竜巻、地震、山火事、
      スタジアムでの暴動
    - 自然の例：
      自然災害（例：津波） —— 突然で、破壊的で、予測不可能
    - プロダクトの例：
      システムを隔離し緊急修正を展開することで
      重大なセキュリティ侵害に対応する
  - 正の場合：主要概念：生成的破壊、急速なイノベーション
    - 対応選択肢（これらに限定されない）：
      意図的に破壊し、
      創造性を促し、
      エネルギーを活用する、
      例：ハッカソン、インキュベーター、「イノベーション・フライデー」
    - 比喩：
      制御された爆発（蒸気機関）、
      花火、
      祭りのかがり火
    - 自然の例：
      新しい植物のために古い成長を取り除く森林火災 —— 生態系の更新
    - プロダクトの例：
      新しい機会を捉えるために市場の混乱中にプロダクトを急速にピボットする
      （例：競合他社の動きに対応してフィーチャーを立ち上げる）

<!-- Liminality is an 'in-between' stage, like a threshold. 
The often less-sudden phase shifts happen in the liminals: -->
リミナリティ（境界状況）とは「中間」段階、閾値のようなものである。
それほど突然でない位相シフトは、しばしばそのリミナル（境界）で起こる：

<!-- 
- In the liminal between complex and ordered, this is Scrum's default sweetspot: 
 - Ordered-Complex: 
   - From expert analysis to adaptive exploration 
   - Responses not limited to: 
       Relax some rules, 
       introduce experimentation, 
       prepare for emergence 
   - Metaphors: 
       A melting ice cube, 
       cloudy weather, 
       switching from chess to poker 
   - Nature example: 
       Seasonal thaw–rigid ice giving way to flowing streams and new growth 
   - Product example: 
       When a routine process stops working, 
           encourage the team to try different approaches 
 - Complex-Ordered: 
   - Responses not limited to: 
       Turn creative discoveries into expert routines; 
       stabilize innovation, 
       observe and codify successful patterns; 
       transition to standardization 
   - Metaphors: 
       Slush (between ice and water), 
       fog lifting after rain, 
       switching from poker to chess 
   - Nature example: 
       River delta forming channels–from unpredictable to stable flows 
   - Product example: 
       Taking a successful experimental feature 
           and turning it into a documented, repeatable process 
-->
- 複雑と秩序の間のリミナル。これはスクラムが最も得意とする領域である：
  - 秩序——複雑：
    - 専門家分析から適応的探索へ
      - 対応（これらに限定されない）：
        いくつかのルールを緩和し、
        実験を導入し、
        創発に備える
      - 比喩：
        溶ける氷、
        曇り天気、
        チェスからポーカーへの切り替え
      - 自然の例：
        季節の解凍 —— 硬い氷が流れる小川と新しい成長に道を譲る
      - プロダクトの例：
        ルーチンプロセスが機能しなくなったとき、
        チームに異なるアプローチを試すよう促す
  - 複雑——秩序：
    - 対応（これらに限定されない）：
      創造的発見を専門家ルーチンに変換し、
      イノベーションを安定化し、
      成功パターンを観察・体系化し、
      標準化に移行する
    - 比喩：
      みぞれ（氷と水の間）、
      雨後の霧の晴れ間、
      ポーカーからチェスへの切り替え
    - 自然の例：
      水路を形成する川のデルタ —— 予測不可能から安定した流れへ
    - プロダクトの例：
      成功した実験的フィーチャーを
      文書化された再現可能なプロセスに変換する

<!-- 
- In the liminal between complex and chaotic: 
 - Complex–Chaotic (positive): 
   - A situation where constraints need to be relaxed 
       to create time and space for innovation or invention. 
       Key idea: The edge of creativity, risk, and innovation 
   - Responses not limited to: 
       Loosen constraints, 
       encourage experimentation, 
       seek breakthrough ideas 
   - Metaphors: 
       Boiling water (on the edge of steam), 
       thunderstorm breaking out, 
       Improvizational theater, 
       or jazz jam session 
   - Nature example: 
       Volcano creating new land–creative transformation at the edge of chaos 
   - Product example: 
       Running a high-risk innovation hackathon to generate disruptive ideas 
 - Complex–Chaotic (negative): 
   - Key idea: A destructive move into crisis 
   - Responses not limited to: 
       Rapidly re-impose constraints, 
       stabilize the situation, 
       prevent further breakdown 
   - Metaphors: 
       Exploding pressure cooker, 
       sudden tornado or flash flood, 
       game pieces thrown in anger, 
       game board upended 
   - Nature example: 
       Sudden landslide–loss of structure, destructive transition 
   - Product example: 
       Failed Product launch confusion, and urgent need to regain control 
 - Chaotic–Complex: Getting out of chaotic––regrouping 
   - Response options not limited to: 
       Sense emerging order, 
       start probing, 
       encourage collaboration, 
       and pattern recognition 
   - Metaphors: 
       Steam condensing to water, 
       calm after a hurricane, 
       restarting a sports game after a storm 
   - Nature example: 
       Pioneer species colonizing after fire–new growth after disturbance 
   - Product example: 
       After a crisis, regrouping the team 
           to experiment with new ways of working or new Product directions 
-->
- 複雑と混沌の間のリミナル：
  - 複雑——混沌（正）：
    - イノベーションや発明のための時間と空間を作るために
      制約を緩和する必要がある状況。
      主要概念：創造性、リスク、イノベーションの端
    - 対応（これらに限定されない）：
      制約を緩め、
      実験を促し、
      ブレークスルーのアイデアを求める
    - 比喩：
      沸騰する水（蒸気の端で）、
      発生する雷雨、
      即興劇場、
      ジャズジャムセッション
    - 自然の例：
      新しい土地を創造する火山 —— 混沌の端での創造的変革
    - プロダクトの例：
      破壊的アイデアを生成するための高リスクイノベーションハッカソンの実行
  - 複雑——混沌（負）：
    - 主要概念：危機への破壊的移行
    - 対応（これらに限定されない）：
      制約を急速に再課し、
      状況を安定化し、
      さらなる破綻を防ぐ
    - 比喩：
      爆発する圧力鍋、
      突然の竜巻や鉄砲水、
      怒りで投げられたゲームの駒、
      ひっくり返されたゲーム盤
    - 自然の例：
      突然の地すべり —— 構造の喪失、破壊的移行
    - プロダクトの例：
      失敗したプロダクト立ち上げの混乱と、統制を取り戻す緊急の必要性
  - 混沌——複雑：混沌からの脱出 —— 再編成
    - 対応選択肢（これらに限定されない）：
      創発する秩序を感知し、
      探索を開始し、
      協働を促し、
      パターン認識を行う
    - 比喩：
      水に凝縮する蒸気、
      ハリケーンの後の静寂、
      嵐の後のスポーツゲームの再開
    - 自然の例：
      火災後に移住する先駆種 —— 攪乱後の新しい成長
    - プロダクトの例：
      危機の後、新しい働き方や新しいプロダクト方向を実験するための
      チームの再編成

<!-- 
- Aporia (paradoxical liminal): 
  sitting with paradox for new insight, 
      perhaps after realizing the situation at hand 
          was not as it seemed 
 - Response options: Hold ambiguity, encourage reflection, allow new understanding to emerge 
 - Metaphors: Triple point (solid, liquid, gas coexist), standing in the eye of a storm, solving a riddle 
 - Nature example: Estuary where river, sea, and land meet–all states and possibilities coexist 
 - Product example: The team is stuck between conflicting strategies or visions and should briefly pause to reflect and realign. 
-->
- アポリア（逆説的リミナル）：
  新しい洞察のために逆説と共に向き合う。
  おそらく目前の状況が
  見えていたものと異なることを悟った後に。
  - 対応選択肢：曖昧さを保持し、振り返りを促し、新しい理解の創発を可能にする
  - 比喩：三重点（固体、液体、気体が共存）、嵐の目の中に立つ、謎かけを解く
  - 自然の例：川、海、陸が出会う河口——すべての状態と可能性が共存する
  - プロダクトの例：チームが対立する戦略やビジョンの間で行き詰まり、
    振り返りと再整合のために短時間立ち止まるべき状況。

<!-- 
- A rarely considered phase shift due to difficulty level: Chaotic-Orderly liminal 
 - Response options: Impose strong constraints, re-establish rules and structure 
 - Metaphors: Ice rapidly refreezing, cold snap after a storm, referee is successfully strict after chaos 
 - Nature example: A Dam is successfully built after a flood––a wild river suddenly contained and controlled 
 - Product example: 
   - After a major production outage or Product crisis, a cross-functional crisis team rapidly stabilizes the situation with clear, minimal rules and temporary protocols 
   - Once the immediate danger is past, these are iteratively refined and formalized into sustainable, balanced processes, avoiding overcorrection or excessive bureaucracy 
-->
- 困難度のため稀に考慮される位相シフト：混沌——秩序リミナル
  - 対応選択肢：強い制約を課し、ルールと構造を再確立する
  - 比喩：急速に再凍結する氷、嵐の後の寒波、混沌の後に審判が効果的に厳格さを取り戻す
  - 自然の例：洪水の後にダムが成功裏に建設される —— 荒々しい川が突然封じ込められ統制される
  - プロダクトの例：
    - 大規模な本番障害またはプロダクト危機の後、機能横断的危機チームが
      明確で最小限のルールと一時的プロトコルで状況を急速に安定化させる
    - 直近の危険が過ぎると、これらは持続可能でバランスの取れたプロセスへと
      反復的に洗練・正式化され、過剰修正や過度な官僚主義を回避する

<!-- One phase shift is particularly sudden and negative, that is, the ordered-chaotic liminal:
- Response options: Recognize fragility and over-confidence, act quickly to restore boundaries and safety 
- Metaphors: Ice cracking into shards, sudden and violent hailstorm, game rules suddenly thrown out 
- Nature example: Frozen lake breaking up in spring––stable surface suddenly shattering 
- Product example: A stable Product process suddenly breaks down due to an unexpected event (e.g., major outage) 
-->
- 特に突然で負の位相シフトが一つある、それは秩序-混沌リミナルである：
  - 対応選択肢：脆弱性と過信を認識し、境界と安全を回復するために迅速に行動する
  - 比喩：破片に割れる氷、突然で激しい雹嵐、ゲームのルールが突然破棄される
  - 自然の例：春に崩壊する凍った湖 —— 安定した表面が突然砕け散る
  - プロダクトの例：予期しない事象（例：大規模な障害）のために
    安定したプロダクトプロセスが突然破綻する

<!-- **Section 4: Emergent Strategy**   -->
**セクション4：創発的戦略**
<!-- Author: Roger L. Martin, Tom Gilb   -->
著者：Roger L. Martin、Tom Gilb
<!-- Source: (41-48)   -->
出典：(41-48)
<!-- Copyright: All rights reserved. Adapted -->
著作権：無断転載禁止。適応版

<!-- ### Emergent Strategy {#emergent-strategy} -->
### 創発的戦略 {#emergent-strategy}

<!-- Strategy is not limited by scale; if it exists, it should be clearly articulated at the corporate, business unit, or Product level and remain coherent and integrated across these levels. Crucially, strategy should distinguish between ends (quantified, Stakeholder-valued outcomes) and means (initiatives or activities). -->
戦略は規模によって制限されるものではなく、存在するのであれば、企業全体、事業部門、あるいはプロダクトレベルにおいて明確に表現されていなければならない。さらに、これらのレベル間で一貫性を保ち統合されているべきである。重要なのは、戦略が目的（定量化されたステークホルダーにとって価値のあるアウトカム）と手段（施策や活動）を区別していることである。

<!-- Drawing from and adapting Roger L. Martin's work (41) and Tom Gilb's work (43-48), strategy is about making integrated, explicit choices- deciding what and what not to pursue from a well-defined, measurable winning aspiration, not just a broad mission or vision. Effective strategy answers: -->
Roger L. Martinの著作(41)とTom Gilbの著作(43-48)を参考にし、適応すると、戦略とは統合された明示的な選択を行うことである。つまり、単なる広範なミッションやビジョンではなく、明確に定義され計測可能な達成すべき成功目標から、何を追求し何を追求しないかを決定することである。効果的な戦略は以下の問いに答えるものである：

<!-- 
- Where will we play? 
- How will we win ethically (57) and sustainably, balancing a multiplicity of expectations and limits? 
- What capabilities and systems must be in place? 
- What else must be true for this strategy to succeed? 
-->
- どの領域で勝負するのか？
- 倫理的(57)かつ持続可能な形で、複数の期待と制約のバランスを取りながら、いかにして勝つのか？
- どのような能力とシステムが備わっていなければならないのか？
- この戦略が成功するために、他にどのような前提条件が成立していなければならないのか？

<!-- 
For situations where expertise alone is sufficient (or perhaps bordering on being sufficient), 
   to ensure strategy is iterative, actionable, and value-focused: 
- Iteratively quantify and manage Stakeholder value, multiple impacts or side effects, risks, and trade-offs: 
 - Identify all critical Stakeholders (including but not limited to customers) 
       and define their value objectives in measurable terms 
       (e.g., 'reduce new-user onboarding time from 5-10 to 2-4 days'). 
 - Explicitly quantify trade-offs and constraints, 
       and revisit as new information emerges. 
 - Use integrative thinking to resolve tensions creatively. 
-->
専門知識だけで十分である（あるいは、ほぼ十分である）状況においても、
   戦略を反復的・実行可能・価値志向にするためには以下が不可欠である：

- ステークホルダー価値、複数の影響や副作用、リスク、トレードオフを反復的に定量化し管理する：
  - すべての重要なステークホルダー（顧客を含むがこれに限定されない）を特定し、
    それぞれの価値目標を測定可能な形で定義する
     （例：「新規ユーザーのオンボーディング時間を5〜10日から2〜4日に短縮する」）。
  - トレードオフと制約を明示的に定量化し、
    新しい情報が得られるたびに見直す。
  - 統合的思考を用いて緊張関係を創造的に解決する。

<!-- 
- Co-create and prioritize collaboratively: 
 - Develop the strategy by blending top-down and bottom-up insights and lateral collaboration. 
 - Use structured workshops and feedback loops to foster alignment and adaptability, 
       and continuously reprioritize unstarted work. 
-->
- 共創し、協働で優先順位づけする：
  - トップダウン・ボトムアップの洞察・横断的なコラボレーションを融合して戦略を策定する。
  - 構造化されたワークショップとフィードバックループを活用して整合性と適応性を促進し、
    未着手の作業の優先順位を継続的に見直す。

<!-- 
- Deliver value incrementally and measure results: 
 - Iteratively break down strategic aspirations into small, prioritized, measurable increments. 
 - Deliver value in short cycles (e.g., Sprints or weeks), 
       measuring actual outcomes and side effects against original quantified objectives. 
 - Use regular reviews to adjust informed by real-world feedback. 
- Enable emergence: 
 - Allow strategy to evolve in response to new data and Stakeholder (including but not limited to user) feedback, 
       within a framework of clear, quantified objectives, measurable trends, and regular risk/benefit reassessment. 
 - Make course corrections rapidly and transparently as reality unfolds. 
- Ensure strategy and strategy deployment are outcome-oriented and focused 
   (deciding what to and what not to work on). Distinguish between: 
 - Strategy including the intent, rationale, goals, and anti-goals (the _what_ and _why_), 
 - Strategy deployment: the operationalization of the strategy, 
       iterative sequencing or decomposition of integrated choices for the strategy, 
       usually in small outcome-oriented slices of the _what_ and _why_, 
 - Outcome-oriented, focused Product Backlog Items (smaller slices for _whom_), and 
 - Lists of activities or initiatives (the 'what we'll do' or _how_). 
- Avoid mistaking a collection of projects for a coherent, value-driven strategy. 
-->
- 価値を漸進的に提供し、結果を計測する：
  - 戦略的志向を、小さく優先順位づけされた計測可能なインクリメントに反復的に分解する。
  - 短いサイクル（例：スプリントや週単位）で価値を提供し、
    実際のアウトカムと副作用を当初定量化した目標と照らし合わせて計測する。
  - 定期的なレビューを活用し、現実のフィードバックに基づいて調整する。
- 創発を可能にする：
  - 明確に定量化された目標、計測可能なトレンド、定期的なリスク・恩恵再評価という枠組みの中で、
    新たなデータやステークホルダー（ユーザーを含むがこれに限定されない）のフィードバックに応じて
    戦略が進化することを許容する。
  - 現実の展開に応じて、迅速かつ透明に軌道修正を行う。
- 戦略と戦略展開をアウトカム指向で焦点の定まったものにする（何に取り組み、何に取り組まないかを決定）。以下を区別する：
  - 戦略：意図、根拠、ゴール、避けるべきゴール（_何を_、_なぜ_）
  - 戦略展開：戦略の運用化。戦略のための統合された選択肢の反復的な配列・分解。
    通常は _何を_、_なぜ_ の小さなアウトカム指向スライス
  - アウトカム指向で焦点の定まったプロダクトバックログアイテム（_誰 のために_ による、より小さなスライス）
  - 活動や施策のリスト（「何をやるか」または _どのように_）
- プロジェクトの寄せ集めを、一貫性ある価値駆動戦略と間違えないこと。

<!-- For situations where expertise is valuable yet insufficient, cause and effect are only coherent in retrospect, and uncertainty needs to be embraced, Scrum Teams and Stakeholders need to: -->
専門知識には価値があるがそれだけでは不十分であり、因果関係が後になって初めて一貫していることがわかるような状況では、不確実性を受け入れる必要がある。スクラムチームとステークホルダーは次のように取り組む必要がある：

<!-- 
- Embrace the messiness of less structured and emergent outcome-oriented work in a direction of travel. 
- Consider that detailed, long-term plans are ineffective. Instead, organizations should focus on creating conditions where useful patterns and innovations can emerge from interactions within the system. 
- Instead of trying one idea at a time and sticking to what worked before, Scrum Teams should consider several small, parallel safe-to-fail experiments at once to see what happens and learn from what emerges. 
- Foster a climate for creative exploration, innovation, and evolution from the present. Create processes and environments where people can connect novel ideas, learnings, informed hunches, and learn from each other, rather than imposing uniformity or rigid KPIs. 
- Response options are not restricted to: 
 - Map what is already known and understand the system's evolutionary potential before attempting change 
 - Foster self-organization 
 - Run safe-to-fail experiments (probes)–probes should be small, parallel, and designed so that failure is survivable and informative 
 - Seek fresh thinking 
 - Try solutions for different problems for the current situation at hand 
 - Test educated hunches 
 - Observe what emerges, and amplify successful patterns while dampening or stopping those that don't work 
 - Innovation is important, but proven solutions should be reused for recurring problems 
 - Continuously sense-make 
 - Perform narrative capture 
- Metaphor: The role of leaders is to actively prepare and manage the soil, boundaries, and conditions (the 'substrate') to encourage the growth of healthy plants (emergent solutions). This includes metaphorically weeding, pruning, and shaping the environment, not just passively waiting for results. 
-->
- 進むべき方向性において、構造が定まっていない創発的なアウトカム指向の作業での混乱を受け入れる。
- 詳細かつ長期的な計画は効果的でないことを考慮する。その代わりに、組織はシステム内の相互作用から有用なパターンやイノベーションが創発するような条件を整えることに注力すべきである。
- 一度に一つのアイデアを試し、以前にうまくいったことに固執するのではなく、スクラムチームは、同時にいくつかの失敗しても安全な小さな実験を並行して行い、その結果を観察し、そこから学ぶべきである。
- 創造的な探索、イノベーション、現在からの進化を促す風土を促進する。人々が新しいアイデア、学び、情報に基づく直感を結びつけ、お互いから学び合えるプロセスと環境を創出する。均一性や硬直化したKPIを押し付けるべきではない。
- 対応策は以下に限定されない：
  - 変化を試みる前に、既知のことをマッピングし、システムの進化の可能性を理解する
  - 自己組織化を促進する
  - 失敗しても安全な実験（プローブ）を実行する —— プローブは小さく、並行して、失敗しても許され、有益な情報となるように設計されるべき
  - 新鮮な思考を求める
  - 目前の現在の状況について、異なる問題に対する解決策を試す
  - 根拠に基づく直感を試す
  - 何が創発するのかを観察し、うまくいくパターンは強化し、機能しないものは抑制または停止する
  - イノベーションは重要だが、繰り返し現れる問題に対しては、実証された解決策を再利用する
  - 継続的にセンスメイキングを行う
  - ナラティブキャプチャを実行する
- 比喩：リーダーの役割は、健全な植物（創発的な解決策）の成長を促進するために土壌、境界、条件（「基質」）を積極的に準備し管理することである。これには比喩的な除草、剪定、環境整備も含まれ、単に受動的に結果を待つのではない。

<!-- Generally, extrinsic motivation rewards should be avoided due to the 'cobra effect' (104) unless they are coherent with Beyond Budgeting. Equally, individual or team performance should be uncoupled from results as results might have been delivered, but in what way were they delivered, with what side effects, and what impact did delivery have on team morale, etc? -->
一般的に、外発的動機づけによる報酬は「コブラ効果」(104)を招く恐れがあり、脱予算経営の理念と整合性が取れない限りは避けるべきである。同様に、個人やチームのパフォーマンスは結果から切り離して考えるべきである。なぜなら、結果は達成されたとしても、それがどのような方法で達成されたのか、どのような副作用があったのか、チームの士気にどのような影響を与えたのかといった要素が関係しているからだ。

<!-- Nevertheless: -->
それでもなお、以下の点に留意すべきである：

<!-- 
- There is disagreement in peer-reviewed papers (105-108) and a foundational non-peer-reviewed paper (109) 
   on whether quantifying Stakeholder expectations, Stakeholder limits, or goals is helpful or unhelpful 
   and whether it reduces intrinsic motivation. 
- Consider the context. Also, consider whether quantification supports autonomy and meaning 
   or imposes controlling constraints. 
- For now, this document prefers to err on the side of clarification and shared understanding of an idea, 
   quantifying Stakeholder expectations, Stakeholder limits, and the direction of travel, 
   supported by high-quality and accurate storytelling narratives 
   (more stories like this, fewer stories like that). 
-->
- ステークホルダーの期待、ステークホルダーの制約、または目標を定量化することが
   有用か有害か、また内発的動機を低下させるかについて、
   査読付き論文(105-108)と基礎的な非査読論文(109)の間で意見の相違がある。
- 文脈を考慮すること。また、定量化が自律性や意味付けを支援するものか、
   統制的制約を課すものかを考慮すること。
- 現時点で、この文書はアイデアの明確化と共有理解を重視する立場を取る。
   すなわち、ステークホルダーの期待、ステークホルダーの制約、進むべき方向性を定量化し、
   高品質で正確なストーリーテリングナラティブ
   （このようなストーリーを増やし、あのようなストーリーを減らす）で補完することを推奨する。

<!-- An Emergent Strategy is supported by an emergent outcome-oriented roadmap, which can range from the Sprint Goal to the Product Vision and beyond. Emergent Strategy Deployment (120-123) should not be confused with Emergent Strategy. Vector change models (30-35, 54\), Product Operating Models (113-119), scaling and descaling models (134-147), and emergent goal-oriented models (120-133) can be highly beneficial for Emergent Strategy Deployment. Err on the side of models coherent with vector-change, e.g., direction of travel over fixed goals.   -->
創発的戦略は、スプリントゴールからプロダクトビジョン、さらにはその先に至るまでの、創発的かつアウトカム指向のロードマップによって支えられる。創発的戦略の展開(120-123)は創発的戦略そのものと混同するべきではない。ベクトル変化モデル(30-35,54)、プロダクトオペレーティングモデル(113-119)、スケーリングおよびデスケーリングモデル(134-147）、創発的ゴール指向モデル(120-133)は、創発的戦略の展開において非常に有益となりうる。あらかじめ固定した目標よりも進むべき方向性を重視するような、ベクトル変化と一貫性のあるモデルを採用することが望ましい。

<!-- Emergent strategy deployment involves allowing plans and actions to develop naturally as the Scrum Team and Stakeholders respond to real-world changes. Instead of following a fixed path, they pay attention to what is happening around them and make adjustments as they go. Over time, the steps taken form a pattern that becomes the actual strategy, even if it differs from what was initially intended. -->
創発的戦略の展開は、スクラムチームおよびステークホルダーが現実世界の変化に対応する中で、計画と行動が自然に展開していくのを可能にすることを意味する。あらかじめ固定された道筋に従うのではなく、周囲で起きていることに注意を払いながら、状況に応じて調整を行う。そうして時間をかけて、取られたステップがたとえ当初意図したものと異なっていたとしても、実際の戦略となるパターンを形成するのである。

# 

<!-- ## Attribution for the Scrum Guide Expansion Pack Collection {#attribution-for-the-scrum-guide-expansion-pack-collection} -->
## スクラムガイド拡張パックにおける収録資料の帰属情報 {#attribution-for-the-scrum-guide-expansion-pack-collection}

<!-- This collection was written and compiled by _Ralph Jocham, John Coleman, and Jeff Sutherland_. Each section is individually attributed above and retains its original license. The collection as a whole is for informational purposes; please respect the license terms of each section. -->
この収録資料集は _Ralph Jocham、John Coleman、Jeff Sutherland_ によって執筆および編集されたものである。各セクションの帰属は上部に個別に明記され、元のライセンスが保持される。収録資料集は情報提供を目的とするものであり、各セクションのライセンス条項を尊重されたい。

# 

## 翻訳について
本ガイドは、[Scrum Guide Expansion Pack](https://scrumexpansion.org/)を⽇本語に翻訳したものである。⽇本語訳は内山遼子、川⼝恭伸、長沢智治、山本尊人、和⽥圭介が担当した。

<!-- ## References {#references} -->
## 参考文献 {#references}

<!-- 1. _Rau, T. (2022) Sociocracy \- Basic Concepts and principles, Sociocracy For All. At: [https://www.sociocracyforall.org/sociocracy/](https://www.sociocracyforall.org/sociocracy/) (Accessed: April 5, 2023)._ -->
1. _Rau, T. (2022) Sociocracy \- Basic Concepts and principles, Sociocracy For All. At: [https://www.sociocracyforall.org/sociocracy/](https://www.sociocracyforall.org/sociocracy/) (2023年4月5日にアクセス)._
<!-- 2. _Hamel, G. and Zanini, M. (2023) Humanocracy. At: [https://www.humanocracy.com/](https://www.humanocracy.com/) (Accessed: April 5, 2023)._ -->
2. _Hamel, G. and Zanini, M. (2023) Humanocracy. At: [https://www.humanocracy.com/](https://www.humanocracy.com/) (2023年4月5日にアクセス)._
<!-- 3. _Kegan, R. and Laskow Lahey, L. (2019) An everyone culture, The Developmental Edge. At: [https://developmentaledge.com/an-everyone-culture/](https://developmentaledge.com/an-everyone-culture/) (Accessed: April 4, 2023)._ -->
3. _Kegan, R. and Laskow Lahey, L. (2019) An everyone culture, The Developmental Edge. At: [https://developmentaledge.com/an-everyone-culture/](https://developmentaledge.com/an-everyone-culture/) (2023年4月4日にアクセス)._
<!-- 4. _Laskow Lahey, L. and Kegan, R. (2023) News & thinking, The Developmental Edge. At: [https://developmentaledge.com/newsthinking/\#methodologies](https://developmentaledge.com/newsthinking/#methodologies) (Accessed: April 3, 2023)._ -->
4. _Laskow Lahey, L. and Kegan, R. (2023) News & thinking, The Developmental Edge. At: [https://developmentaledge.com/newsthinking/\#methodologies](https://developmentaledge.com/newsthinking/#methodologies) (2023年4月3日にアクセス)._
<!-- 5. _Moore, G.A., 1991\. Crossing the Chasm: Marketing and Selling High-Tech Products to Mainstream Customers. New York: Harper Business._ -->
5. _Moore, G.A., 1991. Crossing the Chasm: Marketing and Selling High-Tech Products to Mainstream Customers (日本語訳版: キャズム). New York: Harper Business._
<!-- 6. Coleman, J., (2025) MORE executive SUCCESS. Unpublished. -->
6. Coleman, J., (2025) MORE executive SUCCESS. 未出版.
<!-- 7. _Marquet, L. D. (2013) Turn the Ship Around\! A True Story of Turning Followers into Leaders. Portfolio._ -->
7. _Marquet, L. D. (2013) Turn the Ship Around\! A True Story of Turning Followers into Leaders (日本語訳版: 米海軍で屈指の潜水艦艦長による「最強組織」の作り方). Portfolio._
<!-- 8. _Marquet, L.D. (2021) Leadership is language: The hidden power of what you say and what you don't. Nakskov, Denmark: Nota._ -->
8. _Marquet, L.D. (2021) Leadership is language: The hidden power of what you say and what you don't.（日本語訳版: LEADER'S LANGUAGE 言葉遣いこそ最強の武器） Nakskov, Denmark: Nota._
<!-- 9. _Marquet, L. D. (2021) Based Leadership® International with L. David Marquet \- IBLI. At:[https://davidmarquet.com/](https://davidmarquet.com/) (Accessed: April 5, 2023)._ -->
9. _Marquet, L. D. (2021) Based Leadership® International with L. David Marquet \- IBLI. At:[https://davidmarquet.com/](https://davidmarquet.com/) (2023年4月5日にアクセス)._
<!-- 10. _Rau, T.J. and Koch-Gonzalez, J. (2018) Many voices one song: Shared power with sociocracy. Amherst, MA: Sociocracy for All._ -->
10. _Rau, T.J. and Koch-Gonzalez, J. (2018) Many voices one song: Shared power with sociocracy. Amherst, MA: Sociocracy for All._
<!-- 11. _Buck, J. & Endenburg, G. (2012) The creative forces of self-organization. Sociocratic Center._ -->
11. _Buck, J. & Endenburg, G. (2012) The creative forces of self-organization. Sociocratic Center._
<!-- 12. _Buck, J. & Villines, S. (2017) We the people: Consenting to a deeper democracy. 2nd edn. Sociocracy.info Press._ -->
12. _Buck, J. & Villines, S. (2017) We the people: Consenting to a deeper democracy. 2nd edn. Sociocracy.info Press._
<!-- 13. _Endenburg, G. (1998) Sociocracy: The organization of decision-making. Delft: Eburon Publishers._ -->
13. _Endenburg, G. (1998) Sociocracy: The organization of decision-making. Delft: Eburon Publishers._
<!-- 14. _Priest, J. & Bockelbrink, B. (2018) Sociocracy 3.0 – The practical guide. Available at: [https://sociocracy30.org/](https://sociocracy30.org/) (Accessed: 17 May 2025)._ -->
14. _Priest, J. & Bockelbrink, B. (2018) Sociocracy 3.0 – The practical guide. Available at: [https://sociocracy30.org/](https://sociocracy30.org/) (2025年5月17日にアクセス)._
<!-- 15. _Bogsnes, B. (2023) This is beyond budgeting: A guide to more adaptive and human organizations. Hoboken, NJ: John Wiley & Sons, Inc._ -->
15. _Bogsnes, B. (2023) This is beyond budgeting: A guide to more adaptive and human organizations. Hoboken, NJ: John Wiley & Sons, Inc._
<!-- 16. _Bogsnes, B. (2023) Beyond budgeting at 25 \- [bbrt.org](https://bbrt.org/), Beyond Budgeting Round Table. At: [https://bbrt.org/wp-content/uploads/bb-white-paper_a.pdf](https://bbrt.org/wp-content/uploads/bb-white-paper_a.pdf) (Accessed: April 7, 2023)._ -->
16. _Bogsnes, B. (2023) Beyond budgeting at 25 \- [bbrt.org](https://bbrt.org/),_ _Beyond Budgeting Round Table. At: [https://bbrt.org/wp-content/uploads/bb-white-paper_a.pdf](https://bbrt.org/wp-content/uploads/bb-white-paper_a.pdf) (2023年4月7日にアクセス)._
<!-- 17. _Olesen, A. (2016) Beyond budgeting: Principle 1 \- purpose, YouTube. At: [https://youtu.be/\_9ZW2NjyFxE](https://youtu.be/_9ZW2NjyFxE) (Accessed: April 7, 2023)._ -->
17. _Olesen, A. (2016) Beyond budgeting: Principle 1 \- purpose, YouTube. At: [https://youtu.be/\_9ZW2NjyFxE](https://youtu.be/_9ZW2NjyFxE) (2023年4月7日にアクセス)._
<!-- 18. _Larsson, D. (2016) Beyond budgeting: Principle 2 \- values, YouTube. At: [https://youtu.be/pl1BPrITbm4](https://youtu.be/pl1BPrITbm4) (Accessed: April 7, 2023)._ -->
18. _Larsson, D. (2016) Beyond budgeting: Principle 2 \- values, YouTube. At: [https://youtu.be/pl1BPrITbm4](https://youtu.be/pl1BPrITbm4) (2023年4月7日にアクセス)._
<!-- 19. _Player, S. (2016) Beyond budgeting: Principle 3 \- transparency, YouTube. At: [https://youtu.be/Mb7K8App2vw](https://youtu.be/Mb7K8App2vw) (Accessed: April 7, 2023)._ -->
19. _Player, S. (2016) Beyond budgeting: Principle 3 \- transparency, YouTube. At: [https://youtu.be/Mb7K8App2vw](https://youtu.be/Mb7K8App2vw) (2023年4月7日にアクセス)._
<!-- 20. _Röösli, F. (2016) Beyond budgeting: Principle 4 \- Organization, YouTube. At: [https://youtu.be/i8HIgc8OZYM](https://youtu.be/i8HIgc8OZYM) (Accessed: April 7, 2023)._ -->
20. _Röösli, F. (2016) Beyond budgeting: Principle 4 \- Organization, YouTube. At: [https://youtu.be/i8HIgc8OZYM](https://youtu.be/i8HIgc8OZYM) (2023年4月7日にアクセス)._
<!-- 21. _Larsson, D. (2016) Beyond budgeting: Principle 5 \- autonomy, YouTube. At: [https://youtu.be/ipnjHtXYi-g](https://youtu.be/ipnjHtXYi-g) (Accessed: April 7, 2023)._ -->
21. _Larsson, D. (2016) Beyond budgeting: Principle 5 \- autonomy, YouTube. At: [https://youtu.be/ipnjHtXYi-g](https://youtu.be/ipnjHtXYi-g) (2023年4月7日にアクセス)._
<!-- 22. _Player, S. (2016) Beyond budgeting: Principle 6 \- customers, YouTube. At: [https://youtu.be/\_6fut4R_wVw](https://youtu.be/_6fut4R_wVw) (Accessed: April 7, 2023)._ -->
22. _Player, S. (2016) Beyond budgeting: Principle 6 \- customers, YouTube. At: [https://youtu.be/\_6fut4R_wVw](https://youtu.be/_6fut4R_wVw) (2023年4月7日にアクセス)._
<!-- 23. _Bogsnes, B. (2016) Beyond budgeting: Principle 7 \- rhythm, YouTube. At: [https://youtu.be/rb_NsnPNIQQ](https://youtu.be/rb_NsnPNIQQ) (Accessed: April 7, 2023)._ -->
23. _Bogsnes, B. (2016) Beyond budgeting: Principle 7 \- rhythm, YouTube. At: [https://youtu.be/rb_NsnPNIQQ](https://youtu.be/rb_NsnPNIQQ) (2023年4月7日にアクセス)._
<!-- 24. _Röösli, F. (2016) Beyond budgeting: Principle 8 \- targets, YouTube. At: [https://youtu.be/up3mp7jN6XU](https://youtu.be/up3mp7jN6XU) (Accessed: April 7, 2023)._ -->
24. _Röösli, F. (2016) Beyond budgeting: Principle 8 \- targets, YouTube. At: [https://youtu.be/up3mp7jN6XU](https://youtu.be/up3mp7jN6XU) (2023年4月7日にアクセス)._
<!-- 25. _Player, S. (2016) Beyond budgeting: Principle 9 \- plans and forecasts, YouTube. At: [https://youtu.be/OWM7FUuXejI](https://youtu.be/OWM7FUuXejI) (Accessed: April 7, 2023)._ -->
25. _Player, S. (2016) Beyond budgeting: Principle 9 \- plans and forecasts, YouTube. At: [https://youtu.be/OWM7FUuXejI](https://youtu.be/OWM7FUuXejI) (2023年4月7日にアクセス)._
<!-- 26. _Olesen, A. (2016) Beyond budgeting: Principle 10 \- resource allocation, YouTube. At: [https://youtu.be/mPCYHmvi_b8](https://youtu.be/mPCYHmvi_b8) (Accessed: April 7, 2023)._ -->
26. _Olesen, A. (2016) Beyond budgeting: Principle 10 \- resource allocation, YouTube. At: [https://youtu.be/mPCYHmvi_b8](https://youtu.be/mPCYHmvi_b8) (2023年4月7日にアクセス)._
<!-- 27. _Bogsnes, B. (2016) Beyond budgeting: Principle 11 \- performance evaluation, YouTube. At: [https://youtu.be/RfPVtG2B27E](https://youtu.be/RfPVtG2B27E) (Accessed: April 7, 2023)._ -->
27. _Bogsnes, B. (2016) Beyond budgeting: Principle 11 \- performance evaluation, YouTube. At: [https://youtu.be/RfPVtG2B27E](https://youtu.be/RfPVtG2B27E) (2023年4月7日にアクセス)._
<!-- 28. _Röösli, F. (2016) Beyond budgeting: Principle 12 \- rewards, YouTube. At: [https://youtu.be/ETU5TzNYiC0](https://youtu.be/ETU5TzNYiC0) (Accessed: April 7, 2023)._ -->
28. _Röösli, F. (2016) Beyond budgeting: Principle 12 \- rewards, YouTube. At: [https://youtu.be/ETU5TzNYiC0](https://youtu.be/ETU5TzNYiC0) (2023年4月7日にアクセス)._
<!-- 29. _Takeuchi, H. and Nonaka, I. (2014) The new new product development game, Harvard Business Review. At: [https://hbr.org/1986/01/the-new-new-product-development-game](https://hbr.org/1986/01/the-new-new-product-development-game) (Accessed: 21 January 2024)._ -->
29. _Takeuchi, H. and Nonaka, I. (2014) The new new product development game (日本語訳版: 新たなる新製品開発の方法), Harvard Business Review. At: [https://hbr.org/1986/01/the-new-new-product-development-game](https://hbr.org/1986/01/the-new-new-product-development-game) (2024年1月21日にアクセス)._
<!-- 30. [_Cynefin.io_](https://Cynefin.io/)_, V. (2022) Cynefin wiki, [Cynefin.io](https://Cynefin.io/). [Cynefin.io](https://Cynefin.io/). At: [https://cynefin.io/](https://cynefin.io/) (Accessed: April 4, 2023)._ -->
30. [_Cynefin.io_](https://Cynefin.io/)_, V. (2022) Cynefin wiki, [Cynefin.io](https://Cynefin.io/). [Cynefin.io](https://Cynefin.io/). At: [https://cynefin.io/](https://cynefin.io/)  (2023年4月4日にアクセス)._
<!-- 31. _Rancati, A. and Snowden, D. (2021) Managing complexity (and chaos) in a crisis \- a field guide for decision makers inspired by the Cynefin framework. Luxembourg, Belgium: Publications Office of the European Union._ -->
31. _Rancati, A. and Snowden, D. (2021) Managing complexity (and chaos) in a crisis \- a field guide for decision makers inspired by the Cynefin framework. Luxembourg, Belgium: Publications Office of the European Union._
<!-- 32. _Snowden, D. et al. (2022) Cynefin® weaving sense-making into the fabric of our world. 2nd edn. Edited by R. Greenberg and B. Bertsch. Singapore, Singapore: Cognitive Edge \- The Cynefin Co._ -->
32. _Snowden, D. et al. (2022) Cynefin® weaving sense-making into the fabric of our world. 2nd edn. Edited by R. Greenberg and B. Bertsch. Singapore, Singapore: Cognitive Edge \- The Cynefin Co._
<!-- 33. _Snowden, D. (2023) Cynefin St David's 2023 1 of 2, Cynefin Co. [https://thecynefin.co/cynefin-st-davids-2023-1-of-2/](https://thecynefin.co/cynefin-st-davids-2023-1-of-2/) (Accessed: April 20, 2023)._ -->
33. _Snowden, D. (2023) Cynefin St David's 2023 1 of 2, Cynefin Co. [https://thecynefin.co/cynefin-st-davids-2023-1-of-2/](https://thecynefin.co/cynefin-st-davids-2023-1-of-2/) (2023年4月20日にアクセス)._
<!-- 34. _Snowden, D. (2023) Managing for emergence through abduction, The Cynefin Co. At: [https://thecynefin.co/managing-for-emergence/](https://thecynefin.co/managing-for-emergence/) (Accessed: June 24, 2023)._ -->
34. _Snowden, D. (2023) Managing for emergence through abduction, The Cynefin Co. At: [https://thecynefin.co/managing-for-emergence/](https://thecynefin.co/managing-for-emergence/) (2023年6月24日にアクセス)._
<!-- 35. _Snowden, D. and Smith, N. (2023) Leadership discussion: Dave and Natalie \- the Cynefin co, YouTube. At: [https://youtu.be/WcPZ8ybDF0w](https://youtu.be/WcPZ8ybDF0w) (Accessed: April 7, 2023)._ -->
35. _Snowden, D. and Smith, N. (2023) Leadership discussion: Dave and Natalie \- the Cynefin co, YouTube. At: [https://youtu.be/WcPZ8ybDF0w](https://youtu.be/WcPZ8ybDF0w) (2023年4月7日にアクセス)._
<!-- 36. _Langton, C.G. (ed.) (1989) Artificial Life: Proceedings of an Interdisciplinary Workshop on the Synthesis and Simulation of Living Systems, Los Alamos, New Mexico, September 1987\. Santa Fe Institute Studies in the Sciences of Complexity, vol. VI. Redwood City, CA: Addison-Wesley._ -->
36. _Langton, C.G. (ed.) (1989) Artificial Life: Proceedings of an Interdisciplinary Workshop on the Synthesis and Simulation of Living Systems, Los Alamos, New Mexico, September 1987\. Santa Fe Institute Studies in the Sciences of Complexity, vol. VI. Redwood City, CA: Addison-Wesley._
<!-- 37. _Langton, C.G. (1989) 'Life at the edge of chaos', in Langton, C.G. (ed.) Artificial Life: Proceedings of an Interdisciplinary Workshop on the Synthesis and Simulation of Living Systems. Santa Fe In stitute Studies in the Sciences of Complexity, vol. VI. Redwood City, CA: Addison-Wesley, pp. 41–91._ -->
37. _Langton, C.G. (1989) 'Life at the edge of chaos', in Langton, C.G. (ed.) Artificial Life: Proceedings of an Interdisciplinary Workshop on the Synthesis and Simulation of Living Systems. Santa Fe In stitute Studies in the Sciences of Complexity, vol. VI. Redwood City, CA: Addison-Wesley, pp. 41–91._
<!-- 38. _Wolfram, S. (2002) A new kind of science. Champaign, IL: Wolfram Media._ -->
38. _Wolfram, S. (2002) A new kind of science. Champaign, IL: Wolfram Media._
<!-- 39. _Alexander, C. (1979) The timeless way of building. New York: Oxford University Press._ -->
39. _Alexander, C. (1979) The timeless way of building（日本語訳版: 時を超えた建設の道）. New York: Oxford University Press._
<!-- 40. _Schwaber, K. & Sutherland, J. (2020) The Scrum Guide: The definitive guide to Scrum: The rules of the game. Available at: [https://scrumguides.org/docs/scrumguide/v2020/2020-Scrum-Guide-US.pdf](https://scrumguides.org/docs/scrumguide/v2020/2020-Scrum-Guide-US.pdf) (Accessed: 17 May 2025\)_ -->
40. _Schwaber, K. & Sutherland, J. (2020) The Scrum Guide: The definitive guide to Scrum: The rules of the game (日本語訳版: スクラムガイド). Available at: [https://scrumguides.org/docs/scrumguide/v2020/2020-Scrum-Guide-US.pdf](https://scrumguides.org/docs/scrumguide/v2020/2020-Scrum-Guide-US.pdf) (2025年5月17日にアクセス)_
<!-- 41. _Martin, R.L. (2022) A new way to think your guide to Superior Management Effectiveness. Boston, MA, MA, USA: Harvard Business Review Press._ -->
41. _Martin, R.L. (2022) A new way to think your guide to Superior Management Effectiveness. Boston, MA, MA, USA: Harvard Business Review Press._
<!-- 42. _Gilb, T. & Graham, D. (1993) Software Inspection. Harlow: Addison-Wesley._ -->
42. _Gilb, T. & Graham, D. (1993) Software Inspection（日本語訳版: ソフトウェアインスペクション）. Harlow: Addison-Wesley._
<!-- 43. _Gilb, T. (1988) 'Deeper perspectives on evolutionary delivery, in Principles of Software Engineering Management. Wokingham: Addison-Wesley, pp. \[chapter 15\]. Also available at: [https://bit.ly/TomGilbEvo](https://bit.ly/TomGilbEvo)._ -->
43. _Gilb, T. (1988) 'Deeper perspectives on evolutionary delivery, in Principles of Software Engineering Management. Wokingham: Addison-Wesley, pp. \[chapter 15\]. Also available at: [https://bit.ly/TomGilbEvo](https://bit.ly/TomGilbEvo)._
<!-- 44. _Gilb, Tom & Maier, Mark. (2005). Managing Priorities: A Key to Systematic Decision Making. INCOSE International Symposium. 15\. 10.1002/j.2334-5837.2005.tb00782.x. Also available at: [https://bit.ly/TomGilbPriorities](https://bit.ly/TomGilbPriorities)._ -->
44. _Gilb, Tom & Maier, Mark. (2005). Managing Priorities: A Key to Systematic Decision Making. INCOSE International Symposium. 15\. 10.1002/j.2334-5837.2005.tb00782.x. Also available at: [https://bit.ly/TomGilbPriorities](https://bit.ly/TomGilbPriorities)._ 
<!-- 45. _Gilb, T. (1988) 'Deeper perspectives on evolutionary delivery', in Principles of Software Engineering Management. Wokingham: Addison-Wesley, pp. \[chapter 15\]._ -->
45. _Gilb, T. (1988) 'Deeper perspectives on evolutionary delivery', in Principles of Software Engineering Management. Wokingham: Addison-Wesley, pp. \[chapter 15\]._
<!-- 46. _Gilb, T. (2005) Competitive Engineering: A Handbook for Systems Engineering, Requirements Engineering, and Software Engineering Using Planguage. Oxford: Elsevier Butterworth-Heinemann. Also available at: [https://bit.ly/TomGilbCompEng](https://bit.ly/TomGilbCompEng)._ -->
46. _Gilb, T. (2005) Competitive Engineering: A Handbook for Systems Engineering, Requirements Engineering, and Software Engineering Using Planguage. Oxford: Elsevier Butterworth-Heinemann. Also available at: [https://bit.ly/TomGilbCompEng](https://bit.ly/TomGilbCompEng)._
<!-- 47. _Gilb, T. (2009) 'Agile specification quality control: Shifting emphasis from cleanup to sampling defects', Testing Experience, March. Available at: [https://www.researchgate.net/publication/294196272_Agile_specification_quality_control](https://www.researchgate.net/publication/294196272_Agile_specification_quality_control) \[Accessed: 17 May 2025\]._ -->
47. _Gilb, T. (2009) 'Agile specification quality control: Shifting emphasis from cleanup to sampling defects', Testing Experience, March. Available at: [https://www.researchgate.net/publication/294196272_Agile_specification_quality_control](https://www.researchgate.net/publication/294196272_Agile_specification_quality_control) \[2025年5月17日にアクセス\]._
<!-- 48. _Gilb, T. & Gilb, K. (1989) 'The McDonnell-Douglas case study of SQC and engineering improvement: Case DAC Inspection 1988–89'. Available at: [https://bit.ly/TomGilbMcDonnell-Douglas](https://bit.ly/TomGilbMcDonnell-Douglas) \[Accessed: 17 May 2025\]._ -->
48. _Gilb, T. & Gilb, K. (1989) 'The McDonnell-Douglas case study of SQC and engineering improvement: Case DAC Inspection 1988–89'. Available at: [https://bit.ly/TomGilbMcDonnell-Douglas](https://bit.ly/TomGilbMcDonnell-Douglas) \[2025年5月17日にアクセス\]._
<!-- 49. _LeSS.works (n.d.) Self-managing teams. Available at: [https://less.works/less/management/self-managing-teams](https://less.works/less/management/self-managing-teams) (Accessed: 17 May 2025)._ -->
49. _LeSS.works (n.d.) Self-managing teams. Available at: [https://less.works/less/management/self-managing-teams](https://less.works/less/management/self-managing-teams) (2025年5月17日にアクセス)._
<!-- 50. _Gothelf, J. & Seiden, J. (2021) Lean UX: Designing great products with agile teams. 3rd edn. Sebastopol, CA: O'Reilly Media_ -->
50. _Gothelf, J. & Seiden, J. (2021) Lean UX: Designing great products with agile teams. 3rd edn（リーンUX 第3版：アジャイルなチームによるプロダクト開発）. Sebastopol, CA: O'Reilly Media_
<!-- 51. _Torres, T. (2021) Continuous discovery habits: Discover products that create customer value and business value. North Charleston, SC: Product Talk_ -->
51. _Torres, T. (2021) Continuous discovery habits: Discover products that create customer value and business value. North Charleston, SC: Product Talk_
<!-- 52. _Scrum.org (2025) Scrum Hexis. Available at: [https://thecynefin.co/product/hexi-scrumorg/?srsltid=AfmBOorcohLYeVy0qBsQFI6mK_bZtJA_uGC6hPL2BdptiTwNmMwpKTQv](https://thecynefin.co/product/hexi-scrumorg/?srsltid=AfmBOorcohLYeVy0qBsQFI6mK_bZtJA_uGC6hPL2BdptiTwNmMwpKTQv) (Accessed: 17 May 2025)._ -->
52. _Scrum.org (2025) Scrum Hexis. Available at: [https://thecynefin.co/product/hexi-scrumorg/?srsltid=AfmBOorcohLYeVy0qBsQFI6mK_bZtJA_uGC6hPL2BdptiTwNmMwpKTQv](https://thecynefin.co/product/hexi-scrumorg/?srsltid=AfmBOorcohLYeVy0qBsQFI6mK_bZtJA_uGC6hPL2BdptiTwNmMwpKTQv) (2025年5月17日にアクセス)._
<!-- 53. _Sutherland, J., Coplien, J.O., Heasman, L., den Hollander, M., Ramos, C. and The Scrum Patterns Group (2019) A Scrum Book: The Spirit of the Game. Raleigh, NC: Pragmatic Press. Members of The Scrum Patterns Group: Vervloed, E., Harrison, N., Harada, K., Yoder, J., Kim, J., O'Callaghan, A., Beedle, M., Bjørnvig, G., Friis, D., Reijonen, V., Benefield, G., Østergaard, J., Eloranta, V.-P., Leonard, E. & Aguiar, A._ -->
53. _Sutherland, J., Coplien, J.O., Heasman, L., den Hollander, M., Ramos, C. and The Scrum Patterns Group (2019) A Scrum Book: The Spirit of the Game. Raleigh, NC: Pragmatic Press. Members of The Scrum Patterns Group: Vervloed, E., Harrison, N., Harada, K., Yoder, J., Kim, J., O'Callaghan, A., Beedle, M., Bjørnvig, G., Friis, D., Reijonen, V., Benefield, G., Østergaard, J., Eloranta, V.-P., Leonard, E. & Aguiar, A._
<!-- 54. _Snowden, D. (2025) 'Estuarine mapping first edition', The Cynefin Co, 22 April. Available at: [https://thecynefin.co/estuarine-mapping/](https://thecynefin.co/estuarine-mapping/) (Accessed: 8 June 2025\)_ -->
54. _Snowden, D. (2025) 'Estuarine mapping first edition', The Cynefin Co, 22 April. Available at: [https://thecynefin.co/estuarine-mapping/](https://thecynefin.co/estuarine-mapping/) (2025年6月8日にアクセス\)_
<!-- 55. _Ackoff, R.L. (1999) Ackoff's Best: His Classic Writings on Management. New York: John Wiley & Sons._ -->
55. _Ackoff, R.L. (1999) Ackoff's Best: His Classic Writings on Management. New York: John Wiley & Sons._
<!-- 56. _Fischer, B., Minnaar, J., Moehrle, M., & Cornuel, E. (2020) RenDanHeYi: Pioneering the Quantum Organisation. EFMD Global Focus, Special Supplement. Available at: [https://bit.ly/RenDanHeYi](https://bit.ly/RenDanHeYi) \[Accessed 27 May 2025\]_ -->
56. _Fischer, B., Minnaar, J., Moehrle, M., & Cornuel, E. (2020) RenDanHeYi: Pioneering the Quantum Organisation. EFMD Global Focus, Special Supplement. Available at: [https://bit.ly/RenDanHeYi](https://bit.ly/RenDanHeYi) \[2025年5月27日にアクセス\]_
<!-- 57. _Blackburn, S. (2003) Ethics: A Very Short Introduction. Oxford: Oxford University Press._ -->
57. _Blackburn, S. (2003) Ethics: A Very Short Introduction. Oxford: Oxford University Press._
<!-- 58. _Mayer, T. (2025) A Simple Guide to Scrum. \[Online\]. Available at: [https://scrum.academy/guide/](https://scrum.academy/guide/) (Accessed: 17 May 2025\)_ -->
58. _Mayer, T. (2025) A Simple Guide to Scrum. \[Online\]. Available at: [https://scrum.academy/guide/](https://scrum.academy/guide/) (2025年5月17日にアクセス\)_
<!-- 59. _Ohno, T. (1988) Toyota Production System: Beyond Large-Scale Production. Portland, OR: Productivity Press._ -->
59. _Ohno, T. (1988) Toyota Production System: Beyond Large-Scale Production（日本語版: トヨタ生産方式 ― 脱規模の経営をめざして）. Portland, OR: Productivity Press._
<!-- 60. _Toyota Motor Corporation (2024) Toyota Production System. Available at: [https://global.toyota/en/company/vision-and-philosophy/production-system/index.html](https://global.toyota/en/company/vision-and-philosophy/production-system/index.html) (Accessed: 17 May 2025)._ -->
60. _Toyota Motor Corporation (2024) Toyota Production System（日本語版: トヨタ生産方式）. Available at: [https://global.toyota/en/company/vision-and-philosophy/production-system/index.html](https://global.toyota/en/company/vision-and-philosophy/production-system/index.html) (2025年5月17日にアクセス)._
<!-- 61. _Hounshell, D.A. & Smith, J.K. (1988) Science and Corporate Strategy: DuPont R\&D, 1902–1980. Cambridge: Cambridge University Press._ -->
61. _Hounshell, D.A. & Smith, J.K. (1988) Science and Corporate Strategy: DuPont R&D, 1902–1980. Cambridge: Cambridge University Press._
<!-- 62. _Schwaber, K. and Sutherland, J. (1995) 'SCRUM Development Process', OOPSLA Business Object Design and Implementation Workshop. Austin, Texas, October 1995\. Available at: [http://jeffsutherland.org/oopsla/schwapub.pdf](http://jeffsutherland.org/oopsla/schwapub.pdf) (Accessed: 17 May 2025)._ -->
62. _Schwaber, K. and Sutherland, J. (1995) 'SCRUM Development Process', OOPSLA Business Object Design and Implementation Workshop. Austin, Texas, October 1995\. Available at: [http://jeffsutherland.org/oopsla/schwapub.pdf](http://jeffsutherland.org/oopsla/schwapub.pdf) (2025年5月17日アにクセス)._
<!-- 63. _Womack, J.P. and Jones, D.T. (1996) Lean Thinking: Banish Waste and Create Wealth in Your Corporation. New York: Simon & Schuster._ -->
63. _Womack, J.P. and Jones, D.T. (1996) Lean Thinking: Banish Waste and Create Wealth in Your Corporation (日本語訳版: リーン・シンキング). New York: Simon & Schuster._
<!-- 64. _Thurlow, N., Turner, J.R. and Podder, A. (2020) The Flow System: The Evolution of Agile and Lean Thinking in an Age of Complexity. Flow Consortium. Available at: [https://flowguides.org/Flow_Guide.pdf](https://flowguides.org/Flow_Guide.pdf) (Accessed: 17 May 2025)._ -->
64. _Thurlow, N., Turner, J.R. and Podder, A. (2020) The Flow System: The Evolution of Agile and Lean Thinking in an Age of Complexity（日本語訳版: フローシステムガイド）. Flow Consortium. Available at: [https://flowguides.org/Flow_Guide.pdf](https://flowguides.org/Flow_Guide.pdf) (2025年5月17日にアクセス)._
<!-- 65. _Felderer, M. and Travassos, G.H. (2020) 'The Evolution of Empirical Methods in Software Engineering'. Available at: [https://arxiv.org/pdf/1912.11512.pdf](https://arxiv.org/pdf/1912.11512.pdf) (Accessed: 17 May 2025)._ -->
65. _Felderer, M. and Travassos, G.H. (2020) 'The Evolution of Empirical Methods in Software Engineering'. Available at: [https://arxiv.org/pdf/1912.11512.pdf](https://arxiv.org/pdf/1912.11512.pdf) (2025年5月17日にアクセス)._
<!-- 66. _Creative Wisdom (n.d.) 'Abduction, Deduction and Induction'. Available at: [https://www.creative-wisdom.com/teaching/WBI/abduction5.pdf](https://www.creative-wisdom.com/teaching/WBI/abduction5.pdf) (Accessed: 17 May 2025)._ -->
66. _Creative Wisdom (n.d.) 'Abduction, Deduction and Induction'. Available at: [https://www.creative-wisdom.com/teaching/WBI/abduction5.pdf](https://www.creative-wisdom.com/teaching/WBI/abduction5.pdf) (2025年5月17日にアクセス)._
<!-- 67. _Campbell, J. (2025) 'Empiricism', EBSCO Research Starters. Available at: [https://www.ebsco.com/research-starters/religion-and-philosophy/empiricism](https://www.ebsco.com/research-starters/religion-and-philosophy/empiricism) (Accessed: 17 May 2025\)_ -->
67. _Campbell, J. (2025) 'Empiricism', EBSCO Research Starters. Available at: [https://www.ebsco.com/research-starters/religion-and-philosophy/empiricism](https://www.ebsco.com/research-starters/religion-and-philosophy/empiricism) (2025年5月17日にアクセス)_
<!-- 68. _Kanban Guides (2025) Available at: [https://kanbanguides.org](https://kanbanguides.org/) (Accessed: 17 May 2025\)_ -->
68. _Kanban Guides (2025) （日本語訳版: 2025年版カンバンガイド） Available at: [https://kanbanguides.org](https://kanbanguides.org/) (2025年5月17日にアクセス)_
<!-- 69. [_Scrum.org_](http://Scrum.org) _et al. (2021) The Kanban Guide for Scrum Teams. Available at: [https://www.scrum.org/resources/kanban-guide-scrum-teams](https://www.scrum.org/resources/kanban-guide-scrum-teams) (Accessed: 17 May 2025\)_ -->
69. [_Scrum.org_](http://Scrum.org) _et al. (2021) The Kanban Guide for Scrum Teams（日本語訳版: スクラムチームのためのカンバンガイド）. Available at: [https://www.scrum.org/resources/kanban-guide-scrum-teams](https://www.scrum.org/resources/kanban-guide-scrum-teams) (2025年5月17日にアクセス)_
<!-- 70. _Csíkszentmihályi, M. (1990) Flow: The Psychology of Optimal Experience. New York: Harper & Row_ -->
70. _Csíkszentmihályi, M. (1990) Flow: The Psychology of Optimal Experience (日本語訳版: フロー体験 喜びの現象学). New York: Harper & Row_
<!-- 71. _Templeton Foundation (2023) 'What Is Emergence?' John Templeton Foundation. Available at: [https://www.templeton.org/news/what-is-emergence](https://www.templeton.org/news/what-is-emergence) (Accessed: 17 May 2025)._ -->
71. _Templeton Foundation (2023) 'What Is Emergence?' John Templeton Foundation. Available at: [https://www.templeton.org/news/what-is-emergence](https://www.templeton.org/news/what-is-emergence) (2025年5月17日にアクセス)._
<!-- 72. _van der Bles, A.M., van der Linden, S., Freeman, A.L.J. and Spiegelhalter, D.J. (2019) 'Communicating uncertainty about facts, numbers and science', Royal Society Open Science, 6(5), 181870\. Available at: [https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6549952/](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6549952/) (Accessed: 17 May 2025)._ -->
72. _van der Bles, A.M., van der Linden, S., Freeman, A.L.J. and Spiegelhalter, D.J. (2019) 'Communicating uncertainty about facts, numbers and science', Royal Society Open Science, 6(5), 181870\. Available at: [https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6549952/](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6549952/) (2025年5月17日にアクセス)._
<!-- 73. _Morieux, Y. (2015) How too many rules at work keep you from getting things done: Yves Morieux: Ted Talks, YouTube. At: [https://youtu.be/t NoFstCmQ](https://youtu.be/t__NoFstCmQ) (April 3, 2023)._ -->
73. _Morieux, Y. (2015) How too many rules at work keep you from getting things done: Yves Morieux: Ted Talks, YouTube. At: [https://youtu.be/t NoFstCmQ](https://youtu.be/t__NoFstCmQ) (2023年4月3日)._
<!-- 74. _Holland, J.H. (1992) Complex Adaptive Systems. Daedalus, 121(1), pp. 17–30. Available at: [https://www.jstor.org/stable/20025416](https://www.jstor.org/stable/20025416) (Accessed: 17 May 2025)._ -->
74. _Holland, J.H. (1992) Complex Adaptive Systems. Daedalus, 121(1), pp. 17–30. Available at: [https://www.jstor.org/stable/20025416](https://www.jstor.org/stable/20025416) (2025年5月17日にアクセス)._
<!-- 75. _Axelrod, R. and Cohen, M.D. (2000) Harnessing Complexity: Organizational Implications of a Scientific Frontier. New York: Free Press._ -->
75. _Axelrod, R. and Cohen, M.D. (2000) Harnessing Complexity: Organizational Implications of a Scientific Frontier. New York: Free Press._
<!-- 76. _Juarrero, A. (1999) Dynamics in Action: Intentional Behavior as a Complex System. Cambridge, MA: MIT Press._ -->
76. _Juarrero, A. (1999) Dynamics in Action: Intentional Behavior as a Complex System. Cambridge, MA: MIT Press._
<!-- 77. _Snowden, D.J. and Boone, M.E. (2007) 'A leader's framework for decision making', Harvard Business Review, 85(11), pp. 68–76. Available at: [https://hbr.org/2007/11/a-leaders-framework-for-decision-making](https://hbr.org/2007/11/a-leaders-framework-for-decision-making) (Accessed: 17 May 2025\)_ -->
77. _Snowden, D.J. and Boone, M.E. (2007) 'A leader's framework for decision making'（日本語訳版: 「クネビンフレームワーク」による臨機応変の意思決定手法）, Harvard Business Review, 85(11), pp. 68–76. Available at: [https://hbr.org/2007/11/a-leaders-framework-for-decision-making](https://hbr.org/2007/11/a-leaders-framework-for-decision-making) (2025年5月17日にアクセス)_
<!-- 78. _Dictionary Marketing (2024) 'B2B2B'. Available at: [https://dictionarymarketing.com/definition/b2b2b/](https://dictionarymarketing.com/definition/b2b2b/) (Accessed: 17 May 2025)._ -->
78. _Dictionary Marketing (2024) 'B2B2B'. Available at: [https://dictionarymarketing.com/definition/b2b2b/](https://dictionarymarketing.com/definition/b2b2b/) (2025年5月17日にアクセス)._
<!-- 79. _NetSuite (2023) 'What Is Business to Business to Consumer (B2B2C)?' Available at: [https://www.netsuite.com/portal/resource/articles/ecommerce/b2b2c.shtml](https://www.netsuite.com/portal/resource/articles/ecommerce/b2b2c.shtml) (Accessed: 17 May 2025)._ -->
79. _NetSuite (2023) 'What Is Business to Business to Consumer (B2B2C)?' (B2B2C（Business to Business to Consumer）とは？) Available at: [https://www.netsuite.com/portal/resource/articles/ecommerce/b2b2c.shtml](https://www.netsuite.com/portal/resource/articles/ecommerce/b2b2c.shtml) (2025年5月17日にアクセス)._
<!-- 80. _LeSS (n.d.) 'Why LeSS? Achieving adaptiveness'. Available at: [https://less.works/less/framework/why-less](https://less.works/less/framework/why-less) (Accessed: 17 May 2025)._ -->
80. _LeSS (n.d.) 'Why LeSS? Achieving adaptiveness' (日本語訳版: 何故 LeSSなのか?). Available at: [https://less.works/less/framework/why-less](https://less.works/less/framework/why-less) (2025年5月17日にアクセス)._
<!-- 81. _Sociocracy For All (n.d.) 'Gerard Endenburg: founder of Sociocratic Circle Method and pioneer of self-management'. Available at: [https://www.sociocracyforall.org/gerard-endenburg-founder-of-sociocratic-circle-method-and-pioneer-of-self-management/](https://www.sociocracyforall.org/gerard-endenburg-founder-of-sociocratic-circle-method-and-pioneer-of-self-management/) (Accessed: 18 May 2025)._ -->
81. _Sociocracy For All (n.d.) 'Gerard Endenburg: founder of Sociocratic Circle Method and pioneer of self-management'. Available at: [https://www.sociocracyforall.org/gerard-endenburg-founder-of-sociocratic-circle-method-and-pioneer-of-self-management/](https://www.sociocracyforall.org/gerard-endenburg-founder-of-sociocratic-circle-method-and-pioneer-of-self-management/) (2025年5月18日にアクセス)._
<!-- 82. _Patton, J. and Economy, P. (2014) User Story Mapping: Discover the Whole Story, Build the Right Product. Sebastopol, CA: O'Reilly Media._ -->
82. _Patton, J. and Economy, P. (2014) User Story Mapping: Discover the Whole Story, Build the Right Product (日本語訳版: ユーザーストーリーマッピング). Sebastopol, CA: O'Reilly Media._
<!-- 83. _Kotter, J.P., 1996\. Leading Change. Boston: Harvard Business School Press._ -->
83. _Kotter, J.P., 1996\. Leading Change (日本語訳版: 企業変革力). Boston: Harvard Business School Press._
<!-- 84. _'Genchi Genbutsu' (2024) Wikipedia. Available at: [https://en.wikipedia.org/wiki/Genchi_genbutsu](https://en.wikipedia.org/wiki/Genchi_genbutsu) (Accessed: 18 May 2025)._ -->
84. _'Genchi Genbutsu（現地現物）' (2024) Wikipedia. Available at: [https://en.wikipedia.org/wiki/Genchi_genbutsu](https://en.wikipedia.org/wiki/Genchi_genbutsu) (2025年5月18日にアクセス)._
<!-- 85. _ScrumPlop, n.d. Illigitimus Non Interruptis. The Scrum Book: The Spirit of the Game. Available at: [https://sites.google.com/a/scrumplop.org/published-patterns/product-organization-pattern-language/illegitimus-non-interruptus](https://sites.google.com/a/scrumplop.org/published-patterns/product-organization-pattern-language/illegitimus-non-interruptus) \[Accessed: 18 May 2025\]._ -->
85. _ScrumPlop, n.d. Illigitimus Non Interruptis. The Scrum Book: The Spirit of the Game. Available at: [https://sites.google.com/a/scrumplop.org/published-patterns/product-organization-pattern-language/illegitimus-non-interruptus](https://sites.google.com/a/scrumplop.org/published-patterns/product-organization-pattern-language/illegitimus-non-interruptus) \[2025年5月18日にアクセス\]._
<!-- 86. _Cagan, M., 2018\. Inspired: How to Create Tech Products Customers Love. 2nd ed. Hoboken, NJ: Wiley._ -->
86. _Cagan, M., 2018\. Inspired: How to Create Tech Products Customers Love. 2nd ed（日本語訳版: INSPIRED 熱狂させる製品を生み出すプロダクトマネジメント）. Hoboken, NJ: Wiley._
<!-- 87. _Cagan, M. & Jones, C., 2020\. Empowered: Ordinary People, Extraordinary Products. Hoboken, NJ: Wiley._ -->
87. _Cagan, M. & Jones, C., 2020\. Empowered: Ordinary People, Extraordinary Products (日本語訳版: EMPOWERED 普通のチームが並外れた製品を生み出すプロダクトリーダーシップ). Hoboken, NJ: Wiley._
<!-- 88. _Cagan, M., 2024\. Transformed: Moving to the Product Operating Model. Hoboken, NJ: Wiley._ -->
88. _Cagan, M., 2024\. Transformed: Moving to the Product Operating Model（日本語訳版: TRANSFORMED イノベーションを起こし真のDXへと導くプロダクトモデル）. Hoboken, NJ: Wiley._
<!-- 89. _Schwaber, K. (2023) 'Scrum Guide', Ken Schwaber's Blog, 25 September. Available at: [https://kenschwaber.wordpress.com/2023/09/25/scrum-guide/](https://kenschwaber.wordpress.com/2023/09/25/scrum-guide/) (Accessed: 20 May 2025)._ -->
89. _Schwaber, K. (2023) 'Scrum Guide', Ken Schwaber's Blog, 25 September. Available at: [https://kenschwaber.wordpress.com/2023/09/25/scrum-guide/](https://kenschwaber.wordpress.com/2023/09/25/scrum-guide/) (2025年5月20日にアクセス)._
<!-- 90. _Future Ready: How to Master Business Forecasting_  -->
<!--     _Morlidge, S. & Player, S., 2010\. Future Ready: How to Master Business Forecasting. Chichester: John Wiley & Sons._ -->
90. _Future Ready: How to Master Business Forecasting_  
    _Morlidge, S. & Player, S., 2010\. Future Ready: How to Master Business Forecasting. Chichester: John Wiley & Sons._
<!-- 91. _The Little Book of Beyond Budgeting_  -->
<!--     _Morlidge, S., 2024\. The Little Book of Beyond Budgeting: A New Management Model for Organisations (Second Edition) \[Beyond Books Press\]_ -->
91. _The Little Book of Beyond Budgeting_  
    _Morlidge, S., 2024\. The Little Book of Beyond Budgeting: A New Management Model for Organisations (Second Edition) \[Beyond Books Press\]_
<!-- 92. _The Little (Illustrated) Book of Operational Forecasting_  -->
<!--     _Morlidge, S., 2019\. The Little (Illustrated) Book of Operational Forecasting. \[Troubador\]._ -->
92. _The Little (Illustrated) Book of Operational Forecasting_  
    _Morlidge, S., 2019\. The Little (Illustrated) Book of Operational Forecasting. \[Troubador\]._
<!-- 93. _Present Sense_  -->
<!--     _Morlidge, S., 2019\. Present Sense. \[Troubador\]._ -->
93. _Present Sense_  
    _Morlidge, S., 2019\. Present Sense. \[Troubador\]._
<!-- 94. _Zen and the Art of Organising Work_  -->
<!--     _Morlidge, S., 2021\. Zen and the Art of Organising Work. \[Troubador\]._ -->
94. _Zen and the Art of Organising Work_  
    _Morlidge, S., 2021\. Zen and the Art of Organising Work. \[Troubador\]._
<!-- 95. _Cost Matters_  -->
<!--     _Morlidge, S., 2023\. Cost Matters. \[Beyond Books Press\]._ -->
95. _Cost Matters_  
    _Morlidge, S., 2023\. Cost Matters. \[Beyond Books Press\]._
<!-- 96. _Beyond Budgeting i praktiken Fahlén, K., 2016\. Beyond Budgeting i praktiken. Stockholm: Liber._ -->
96. _Beyond Budgeting i praktiken Fahlén, K., 2016\. Beyond Budgeting i praktiken. Stockholm: Liber._
<!-- 97. _Fahlén, K., 2018\. Dynamic Management Strategy: A guide to management innovation and competitive advantage. Gothenburg: BAS_ -->
97. _Fahlén, K., 2018\. Dynamic Management Strategy: A guide to management innovation and competitive advantage. Gothenburg: BAS_
<!-- 98. _Bogsnes, B., 2016\. Implementing Beyond Budgeting: Unlocking the Performance Potential. 2nd ed. Chichester: John Wiley & Sons._ -->
98. _Bogsnes, B., 2016\. Implementing Beyond Budgeting: Unlocking the Performance Potential. 2nd ed. Chichester: John Wiley & Sons._
<!-- 99. _Boyd, J.R. (1995–1996) The Essence of Winning and Losing. Unpublished briefing slides. Note: Boyd's OODA was primarily disseminated through military briefings and unpublished manuscripts. His final conceptualization appears in The Essence of Winning and Losing, which emphasizes nonlinear decision-making and adaptation in complex environments._ -->
99. _Boyd, J.R. (1995–1996) The Essence of Winning and Losing. 未出版のブリーフィング・スライド. 注記：BoydのOODAは主に軍事ブリーフィングと未出版の原稿を通じて広まった。彼の最終的な概念化は「The Essence of Winning and Losing」に現れ、複雑な環境における非線形の意思決定と適応を強調している。_
<!-- 100. _Turner, J.R., Thurlow, N. and Rivera, B. (2019) The Flow System Guide. Available at: [https://flowguides.org/Flow_Guide.pdf](https://flowguides.org/Flow_Guide.pdf) (Accessed: 24 May 2025). Summary: This guide integrates Boyd's OODA with complexity theory and agile practices, framing it as a dynamic, non-linear decision-making process for organizational flow._ -->
100. _Turner, J.R., Thurlow, N. and Rivera, B. (2019) The Flow System Guide（日本語訳版: フローシステムガイド）. Available at: [https://flowguides.org/Flow_Guide.pdf](https://flowguides.org/Flow_Guide.pdf) (2025年5月24日にアクセス). 要約：このガイドはBoydのOODAを複雑性理論とアジャイル実践と統合し、組織のフローのための動的で非線形な意思決定プロセスとして枠組み化している。_
<!-- 101. _Williamson, P.J. & Yin, E. (2018) 'Management Innovation Made in China: Haier's Rendanheyi', California Management Review, 61(1), pp. 71-93._ -->
101. _Williamson, P.J. & Yin, E. (2018) 'Management Innovation Made in China: Haier's Rendanheyi', California Management Review, 61(1), pp. 71-93._
<!-- 102. _Richards, C. (2004) Certain to Win: The Strategy of John Boyd, Applied to Business. Bloomington, IN: Xlibris_ -->
102. _Richards, C. (2004) Certain to Win: The Strategy of John Boyd, Applied to Business. Bloomington, IN: Xlibris_
<!-- 103. _Becker, S et al (co-author) The Viable Map Workbook 2023 \[Beyond Books Press\]_ -->
103. _Becker, S et al (co-author) The Viable Map Workbook 2023 \[Beyond Books Press\]_
<!-- 104. _Frey, B.S. and Jegen, R. (2001) 'Motivation crowding theory', Journal of Economic Surveys, 15(5), pp. 589–611._ -->
104. _Frey, B.S. and Jegen, R. (2001) 'Motivation crowding theory', Journal of Economic Surveys, 15(5), pp. 589–611._
<!-- 105. _Cameron, J., Banko, K.M. and Pierce, W.D. (2001) 'Pervasive negative effects of rewards on intrinsic motivation: The myth continues', The Behavior Analyst, 24(1), pp. 1–44._ -->
105. _Cameron, J., Banko, K.M. and Pierce, W.D. (2001) 'Pervasive negative effects of rewards on intrinsic motivation: The myth continues', The Behavior Analyst, 24(1), pp. 1–44._ 
<!-- 106. _Deci, E.L., Koestner, R. and Ryan, R.M. (1999) 'A meta-analytic review of experiments examining the effects of extrinsic rewards on intrinsic motivation', Psychological Bulletin, 125(6), pp. 627–668._ -->
106. _Deci, E.L., Koestner, R. and Ryan, R.M. (1999) 'A meta-analytic review of experiments examining the effects of extrinsic rewards on intrinsic motivation', Psychological Bulletin, 125(6), pp. 627–668._
<!-- 107. _Ryan, R.M. and Deci, E.L. (2000) 'Intrinsic and extrinsic motivations: Classic definitions and new directions', Contemporary Educational Psychology, 25(1), pp. 54–67._ -->
107. _Ryan, R.M. and Deci, E.L. (2000) 'Intrinsic and extrinsic motivations: Classic definitions and new directions', Contemporary Educational Psychology, 25(1), pp. 54–67._
<!-- 108. _Sandel, M.J. (2012) What money can't buy: The moral limits of markets. London: Allen Lane._ -->
108. _Sandel, M.J. (2012) What money can't buy: The moral limits of markets (日本語訳版: それをお金で買いますか 市場主義の限界). London: Allen Lane._
<!-- 109. _Kohn, A. (1993) 'Why incentive plans cannot work', Harvard Business Review, 71(5), pp. 54–63._ -->
109. _Kohn, A. (1993) 'Why incentive plans cannot work', Harvard Business Review, 71(5), pp. 54–63._
<!-- 110. _Fuzzy Business: How to be roughly right rather than precisely wrong (unpublished)._ -->
110. _Fuzzy Business: How to be roughly right rather than precisely wrong (未出版)._
<!-- 111. _Lewis, R. (2023) An operating model for business agility: Agile for managers of the digital age. Independently published._ -->
111. _Lewis, R. (2023) An operating model for business agility: Agile for managers of the digital age. 自費出版._
<!-- 112. _less.works (n.d.) Technical Excellence. Available at: [https://less.works/less/technical-excellence](https://less.works/less/technical-excellence) (Accessed: 7 June 2025\)_ -->
112. _less.works (n.d.) Technical Excellence（日本語訳: 技術的長所）. Available at: [https://less.works/less/technical-excellence](https://less.works/less/technical-excellence) (2025年6月7日にアクセス)_
<!-- 113. _Cagan, M. (2024) Transformed: Moving to the Product Operating Model. Hoboken, NJ: Wiley._ -->
113. _Cagan, M. (2024) Transformed: Moving to the Product Operating Model（日本語訳版: TRANSFORMED　イノベーションを起こし真のＤＸへと導くプロダクトモデル）. Hoboken, NJ: Wiley._
<!-- 114. _Cagan, M. (2025) 'The Product Operating Model', Silicon Valley Product Group, 17 March. Available at: [https://www.svpg.com/the-product-operating-model/](https://www.svpg.com/the-product-operating-model/) (Accessed: 8 June 2025)._ -->
114. _Cagan, M. (2025) 'The Product Operating Model', Silicon Valley Product Group, 17 March. Available at: [https://www.svpg.com/the-product-operating-model/](https://www.svpg.com/the-product-operating-model/) (2025年6月8日にアクセス)._
<!-- 115. _Cagan, M. (n.d.) 'The Product Operating Model: An Introduction', Silicon Valley Product Group. Available at: [https://www.svpg.com/the-product-operating-model-an-introduction/](https://www.svpg.com/the-product-operating-model-an-introduction/) (Accessed: 8 June 2025\)_ -->
115. _Cagan, M. (n.d.) 'The Product Operating Model: An Introduction', Silicon Valley Product Group. Available at: [https://www.svpg.com/the-product-operating-model-an-introduction/](https://www.svpg.com/the-product-operating-model-an-introduction/) (2025年6月8日にアクセス)_
<!-- 116. _Scrum.org (2025) 'The Agile Product Operating Model', Scrum.org, 1 May. Available at: [https://www.scrum.org/resources/agile-product-operating-model](https://www.scrum.org/resources/agile-product-operating-model) (Accessed: 8 June 2025)._ -->
116. _Scrum.org (2025) 'The Agile Product Operating Model' (日本語訳: アジャイルプロダクトオペレーティングモデル), Scrum.org, 5月1日. Available at: [https://www.scrum.org/resources/agile-product-operating-model](https://www.scrum.org/resources/agile-product-operating-model) (2025年6月8日にアクセス)._
<!-- 117. _Scrum.org (2025) 'Agile Product Operating Model State of Play \- Part 1 \- Fundamentals', Scrum.org, 12 May. Available at: [https://www.scrum.org/resources/blog/agile-product-operating-model-state-play-part-1-fundamentals](https://www.scrum.org/resources/blog/agile-product-operating-model-state-play-part-1-fundamentals) (Accessed: 8 June 2025)._ -->
117. _Scrum.org (2025) 'Agile Product Operating Model State of Play \- Part 1 \- Fundamentals', Scrum.org, 12 May. Available at: [https://www.scrum.org/resources/blog/agile-product-operating-model-state-play-part-1-fundamentals](https://www.scrum.org/resources/blog/agile-product-operating-model-state-play-part-1-fundamentals) (2025年6月8日にアクセス)._
<!-- 118. _Scrum.org (2024) 'Project to Product and the Agile Product Operating Model', Scrum.org, 7 November. Available at: [https://www.scrum.org/resources/blog/project-product-and-agile-product-operating-model](https://www.scrum.org/resources/blog/project-product-and-agile-product-operating-model) (Accessed: 8 June 2025)._ -->
118. _Scrum.org (2024) 'Project to Product and the Agile Product Operating Model', Scrum.org, 7 November. Available at: [https://www.scrum.org/resources/blog/project-product-and-agile-product-operating-model](https://www.scrum.org/resources/blog/project-product-and-agile-product-operating-model) (2025年6月8日アにクセス)._
<!-- 119. _Scrum.org (2024) Moving to an Agile Product Operating Model \[PDF\]. Available at: [https://www.scrum.org/resources/moving-agile-product-operating-model-evidence-based-approach-delivering-products-digital-age](https://www.scrum.org/resources/moving-agile-product-operating-model-evidence-based-approach-delivering-products-digital-age) or [https://bit.ly/SDOAPOM](https://bit.ly/SDOAPOM). (Accessed: 8 June 2025\)_ -->
119. _Scrum.org (2024) Moving to an Agile Product Operating Model \[PDF\]. Available at: [https://www.scrum.org/resources/moving-agile-product-operating-model-evidence-based-approach-delivering-products-digital-age](https://www.scrum.org/resources/moving-agile-product-operating-model-evidence-based-approach-delivering-products-digital-age)_ _or [https://bit.ly/SDOAPOM](https://bit.ly/SDOAPOM). (2025年6月8日にアクセス)_
<!-- 120. _Scotland, K. (2023) Why strategy deployment? Here are three great reasons, AvailAgility. At: [https://availagility.co.uk/2023/02/16/why-strategy-deployment-here-are-three-great-reasons/](https://availagility.co.uk/2023/02/16/why-strategy-deployment-here-are-three-great-reasons/) (Accessed: April 3, 2023)._ -->
120. _Scotland, K. (2023) Why strategy deployment? Here are three great reasons, AvailAgility. At: [https://availagility.co.uk/2023/02/16/why-strategy-deployment-here-are-three-great-reasons/](https://availagility.co.uk/2023/02/16/why-strategy-deployment-here-are-three-great-reasons/) (2023年4月3日にアクセス)._
<!-- 121. _Scotland, K. (2019) Deploying strategies as choices, AvailAgility. At: [https://availagility.co.uk/2019/02/08/deploying-strategies-as-choices/](https://availagility.co.uk/2019/02/08/deploying-strategies-as-choices/) (Accessed: April 3, 2023)._ -->
121. _Scotland, K. (2019) Deploying strategies as choices, AvailAgility. At: [https://availagility.co.uk/2019/02/08/deploying-strategies-as-choices/](https://availagility.co.uk/2019/02/08/deploying-strategies-as-choices/) (2023年4月3日にアクセス)._
<!-- 122. _Scotland, K. (2017) Strategy deployment and playing to win, AvailAgility. At: [https://availagility.co.uk/2017/07/14/strategy-deployment-and-playing-to-win/](https://availagility.co.uk/2017/07/14/strategy-deployment-and-playing-to-win/) (Accessed: April 3, 2023)._ -->
122. _Scotland, K. (2017) Strategy deployment and playing to win, AvailAgility. At: [https://availagility.co.uk/2017/07/14/strategy-deployment-and-playing-to-win/](https://availagility.co.uk/2017/07/14/strategy-deployment-and-playing-to-win/) (2023年4月3日にアクセス)._
<!-- 123. _Scotland, K. (2017) A strategy deployment cadence, AvailAgility. At: [https://availagility.co.uk/2017/09/06/a-strategy-deployment-cadence/](https://availagility.co.uk/2017/09/06/a-strategy-deployment-cadence/) (Accessed: April 3, 2023)._ -->
123. _Scotland, K. (2017) A strategy deployment cadence, AvailAgility. At: [https://availagility.co.uk/2017/09/06/a-strategy-deployment-cadence/](https://availagility.co.uk/2017/09/06/a-strategy-deployment-cadence/) (2023年4月3日にアクセス)._
<!-- 124. _Scotland, K. (2022) The ultimate X-matrix for your agile transformation is here, AvailAgility. At: [https://availagility.co.uk/2022/11/03/the-ultimate-x-matrix-for-youragile-transformation-is-here/](https://availagility.co.uk/2022/11/03/the-ultimate-x-matrix-for-youragile-transformation-is-here/) (Accessed: April 5, 2023)._ -->
124. _Scotland, K. (2022) The ultimate X-matrix for your agile transformation is here, AvailAgility. At: [https://availagility.co.uk/2022/11/03/the-ultimate-x-matrix-for-youragile-transformation-is-here/](https://availagility.co.uk/2022/11/03/the-ultimate-x-matrix-for-youragile-transformation-is-here/) (2023年4月5日にアクセス)._
<!-- 125. _Krebs, J. (2023) Agile kata pro, Agile Kata Pro. At: [https://agilekata.pro/](https://agilekata.pro/) (Accessed: April 4, 2023)._ -->
125. _Krebs, J. (2023) アジャイルのカタ・プロ, Agile Kata Pro. At: [https://agilekata.pro/](https://agilekata.pro/) (2023年4月4日にアクセス)._
<!-- 126. _Doerr, J. (2023) OKRs 101, What Matters. At: [https://www.whatmatters.com/get-started/](https://www.whatmatters.com/get-started/) (Accessed: April 4, 2023)._ -->
126. _Doerr, J. (2023) OKRs 101, What Matters. At: [https://www.whatmatters.com/get-started/](https://www.whatmatters.com/get-started/) (2023年4月4日にアクセス)._
<!-- 127. _Wodtke, C. (2021) Radical focus achieving your most important goals with objectives and key results--. Palo Alto, CA: Cucina Media._ -->
127. _Wodtke, C. (2021) Radical focus achieving your most important goals with objectives and key results--（日本語訳版: OKR(オーケーアール) シリコンバレー式で大胆な目標を達成する方法）. Palo Alto, CA: Cucina Media._
<!-- 128. _Gothelf, J. & Seiden, J. (2024) Who Does What By How Much?: A Practical Guide to Customer-Centric OKRs. New York: Sense & Respond Press._ -->
128. _Gothelf, J. & Seiden, J. (2024) Who Does What By How Much?: A Practical Guide to Customer-Centric OKRs. New York: Sense & Respond Press._
<!-- 129. _Appelo, J. (2023) Sometimes, you \*don't\* want focus, unFIX. At: [https://unfix.com/blog/sometimes-you-dont-want-focus](https://unfix.com/blog/sometimes-you-dont-want-focus) (Accessed: 14 January 2024)._ -->
129. _Appelo, J. (2023) Sometimes, you \*don't\* want focus, unFIX. At: [https://unfix.com/blog/sometimes-you-dont-want-focus](https://unfix.com/blog/sometimes-you-dont-want-focus) (2024年1月14日にアクセス)._
<!-- 130. _Appelo, J. (2023) Bets and objectives, unFIX. At: [https://unfix.com/bets-and-objectives](https://unfix.com/bets-and-objectives) (Accessed: 14 January 2024)._ -->
130. _Appelo, J. (2023) Bets and objectives, unFIX. At: [https://unfix.com/bets-and-objectives](https://unfix.com/bets-and-objectives) (2024年1月14日にアクセス)._
<!-- 131. _McChesney, C. (2023) The 4 disciplines of execution (new), FranklinCovey. At: [https://www.franklincovey.com/the-4-disciplines/](https://www.franklincovey.com/the-4-disciplines/) (Accessed: April 4, 2023)._ -->
131. _McChesney, C. (2023) The 4 disciplines of execution (new) (日本語訳版: 実行の4つの規律 行動を変容し継続性を徹底する), FranklinCovey. At: [https://www.franklincovey.com/the-4-disciplines/](https://www.franklincovey.com/the-4-disciplines/) (2023年4月4日にアクセス)._
<!-- 132. _Scrum.org (2024) Evidence-Based Management (EBM) Framework, Scrum.org. Available at: [https://www.scrum.org/resources/evidence-based-management](https://www.scrum.org/resources/evidence-based-management). (Accessed: 8 June 2025)._ -->
132. _Scrum.org (2024) Evidence-Based Management (EBM) Framework (日本語訳: エビデンスベースドマネジメント), Scrum.org. Available at: [https://www.scrum.org/resources/evidence-based-management](https://www.scrum.org/resources/evidence-based-management). (2025年6月8日にアクセス)._
<!-- 133. _Burrows, M. (2023) Home: Agendashift™, Agendashift. At: [https://www.agendashift.com/](https://www.agendashift.com/) (Accessed: April 4, 2023)._ -->
133. _Burrows, M. (2023) Home: Agendashift™, Agendashift. At: [https://www.agendashift.com/](https://www.agendashift.com/) (2023年4月4日にアクセス)._
<!-- 134. _Kniberg, H. and Ivarsson, A. (2012) Scaling at Spotify, Crisp. At: [https://blog.crisp.se/wp-content/uploads/2012/11/SpotifyScaling.pdf](https://blog.crisp.se/wp-content/uploads/2012/11/SpotifyScaling.pdf) (Accessed: April 5, 2023)._ -->
134. _Kniberg, H. and Ivarsson, A. (2012) Scaling at Spotify, Crisp. At: [https://blog.crisp.se/wp-content/uploads/2012/11/SpotifyScaling.pdf](https://blog.crisp.se/wp-content/uploads/2012/11/SpotifyScaling.pdf) (2023年4月5日にアクセス)._
<!-- 135. _Ambler, S.W. and Lines, M. (2023) Disciplined Agile® Toolkit \- Project Management Institute, PMI. At: [https://www.pmi.org/disciplined-agile/](https://www.pmi.org/disciplined-agile/) (Accessed: April 5, 2023)._ -->
135. _Ambler, S.W. and Lines, M. (2023) Disciplined Agile® Toolkit \- Project Management Institute, PMI. At: [https://www.pmi.org/disciplined-agile/](https://www.pmi.org/disciplined-agile/) (2023年4月5日にアクセス)._
<!-- 136. _Leffingwell, D. and Knaster, R. (2023) Safe 6.0 framework, Scaled Agile Framework. At: [https://www.scaledagileframework.com/](https://www.scaledagileframework.com/) (Accessed: April 5, 2023)._ -->
136. _Leffingwell, D. and Knaster, R. (2023) Safe 6.0 framework, Scaled Agile Framework. At: [https://www.scaledagileframework.com/](https://www.scaledagileframework.com/) (2023年4月5日にアクセス)._
<!-- 137. _Sutherland, J. (2021) Scrum@Scale \- the scaling framework created by dr. Jeff Sutherland, Scrum@Scale Framework. At: [https://www.scrumatscale.com/](https://www.scrumatscale.com/) (Accessed: April 5, 2023)._ -->
137. _Sutherland, J. (2021) Scrum@Scale - Jeff Sutherland博士によって作られたスケーリングフレームワーク, Scrum@Scale Framework. At: [https://www.scrumatscale.com/](https://www.scrumatscale.com/) (2023年4月5日にアクセス)._
<!-- 138. _Skelton, M. and Pais, M. (2023) Team topologies, Team Topologies. At: [https://teamtopologies.com/](https://teamtopologies.com/) (Accessed: April 5, 2023)._ -->
138. _Skelton, M. and Pais, M. (2023) Team topologies(日本語訳版: チームトポロジー　価値あるソフトウェアをすばやく届ける適応型組織設計), Team Topologies. At: [https://teamtopologies.com/](https://teamtopologies.com/) (2023年4月5日にアクセス)._
<!-- 139. _Appelo, J. (2023) Versatile Organization Design, unFIX. At: [https://unfix.com/](https://unfix.com/) (Accessed: April 5, 2023)._ -->
139. _Appelo, J. (2023) Versatile Organization Design, unFIX. At: [https://unfix.com/](https://unfix.com/) (2023年4月5日にアクセス)._
<!-- 140. _Merel, P. (2023) Xscale Alliance, XSCALE Alliance. At: [https://xscalealliance.org/\#manifesto](https://xscalealliance.org/#manifesto) (Accessed: April 5, 2023)._ -->
140. _Merel, P. (2023) Xscale Alliance, XSCALE Alliance. At: [https://xscalealliance.org/\#manifesto](https://xscalealliance.org/#manifesto) (2023年4月5日にアクセス)._
<!-- 141. _Schwaber, K. et al. (2021) Online nexus guide, Scrum.org. At: [https://www.scrum.org/resources/online-nexus-guide](https://www.scrum.org/resources/online-nexus-guide) (Accessed: April 5, 2023)._ -->
141. _Schwaber, K. et al. (2021) Online nexus guide (日本語訳: Nexusガイド), Scrum.org. At: [https://www.scrum.org/resources/online-nexus-guide](https://www.scrum.org/resources/online-nexus-guide) (2023年4月5日にアクセス)._
<!-- 142. _Quartel, R. et al. (2024) FaST guide, Fluid Scaling Technology. At: [https://www.fastagile.io/](https://www.fastagile.io/) (Accessed: December 6, 2023)._ -->
142. _Quartel, R. et al. (2024) FaST guide（日本語訳: FaSTガイド）, Fluid Scaling Technology. At: [https://www.fastagile.io/](https://www.fastagile.io/) (2023年12月6日にアクセス)._
<!-- 143. _Ramos, C. and Pavlichenko, I. (2023) Creating agile organizations, Creating Agile Organizations. At: [https://creatingagileorganizations.com/](https://creatingagileorganizations.com/) (Accessed: April 15, 2023)._ -->
143. _Ramos, C. and Pavlichenko, I. (2023) Creating agile organizations, Creating Agile Organizations. At: [https://creatingagileorganizations.com/](https://creatingagileorganizations.com/) (2023年4月15日にアクセス)._
<!-- 144. _Larman, C. & Vodde, B. (2025) LeSS (Large-Scale Scrum) Framework. Available at: [https://less.works/less/framework](https://less.works/less/framework) (Accessed: 8 June 2025\)_ -->
144. _Larman, C. & Vodde, B. (2025) LeSS (Large-Scale Scrum) Framework. Available at: [https://less.works/less/framework](https://less.works/less/framework) (2025年6月8日にアクセス)_
<!-- 145. _Flight Levels GmbH (2025) Flight Levels Framework. Available at: [https://www.flightlevels.io/what-is-flight-levels/](https://www.flightlevels.io/what-is-flight-levels/) (Accessed: 8 June 2025)._ -->
145. _Flight Levels GmbH (2025) Flight Levels Framework. Available at: [https://www.flightlevels.io/what-is-flight-levels/](https://www.flightlevels.io/what-is-flight-levels/) (2025年6月8日にアクセス)._
<!-- 146. _Krivitsky, A. and Flemm, R. (2022) Org topologies, Org Topologies. At: [https://www.orgtopologies.com/](https://www.orgtopologies.com/) (Accessed: April 4, 2023)._ -->
146. _Krivitsky, A. and Flemm, R. (2022) Org topologies, Org Topologies. At: [https://www.orgtopologies.com/](https://www.orgtopologies.com/) (2023年4月4日にアクセス)._
<!-- 147. _Singh, P. (2023) Scaling Simplified: A Practitioner's Guide to Scaling Flow. Florida: Self-published. Available at: [https://leanpub.com/scalingsimplified](https://leanpub.com/scalingsimplified) (Accessed: 8 June 2025\)_ -->
147. _Singh, P. (2023) Scaling Simplified: A Practitioner's Guide to Scaling Flow. Florida: 自費出版. Available at: [https://leanpub.com/scalingsimplified](https://leanpub.com/scalingsimplified) (2025年6月8日にアクセス)_
<!-- 148. _Davies, Dan. (2025) The Unaccountability Machine: Why Big Systems Make Terrible Decisions—and How the World Lost Its Mind. London: Profile Books Ltd. (Paperback edition)._ -->
148. _Davies, Dan. (2025) The Unaccountability Machine: Why Big Systems Make Terrible Decisions—and How the World Lost Its Mind. London: Profile Books Ltd. (ペーパーバック版)._
<!-- 149. _Stripe (2025) 'Sir Jony Ive and Patrick Collison Fireside Chat | Stripe Sessions 2025', YouTube video, 8 May. Available at: [https://youtu.be/wLb9g_8r-mE?si=1rEJxU0sxixvblQ3\&t=1390](https://youtu.be/wLb9g_8r-mE?si=1rEJxU0sxixvblQ3&t=1390) (Accessed: 8 June 2025\)_ -->
149. _Stripe (2025) 'Sir Jony Ive and Patrick Collison Fireside Chat | Stripe Sessions 2025', YouTube video, 8 May. Available at: [https://youtu.be/wLb9g_8r-mE?si=1rEJxU0sxixvblQ3\&t=1390](https://youtu.be/wLb9g_8r-mE?si=1rEJxU0sxixvblQ3&t=1390) (2025年6月8日にアクセス)_


## スクラムガイド拡張パック用語集
&nbsp;

**役割・チーム**  

| 英語 | 日本語 | 説明 |
|------|--------|------|
| Scrum Team | スクラムチーム | スクラムマスター、プロダクトオーナー、開発者で構成される |
| Product Owner | プロダクトオーナー | プロダクトの価値最大化に責任を持つ |
| Scrum Master | スクラムマスター | スクラムの確立に責任を持つ |
| Product Developers / Developers | プロダクト開発者 / 開発者 | インクリメントの作成に責任を持つ |
| Stakeholders | ステークホルダー | プロダクトに関心を持つ関係者 |
| Supporters | サポーター | スクラムチームを支援する人々 |
| Self-managing Scrum Team | 自己管理スクラムチーム | 自律的に意思決定を行うスクラムチーム |
| Customer | 顧客 | プロダクトを購入・選択することで価値を受け取るステークホルダー |
| User | ユーザー | プロダクトと直接相互作用するステークホルダー |
| Decision-maker | 意思決定者 | プロダクトの採用・購入を承認・認可する権限を持つステークホルダー |
| Financial Sponsors | 資金提供者 | プロダクト開発・改善のための資金・リソースを提供する |
| Subject Matter Experts | 特定分野のエキスパート | プロダクト作成に不可欠な深い知識・スキルを提供する |
| Legislators | 立法者 | プロダクト運用のためのルール・政策・境界を確立する |
| Accountability | 説明責任 |  |
| Responsibility | 責任 |  |
&nbsp;

**作成物（Artifacts）**  

| 英語 | 日本語 | 説明 |
|------|--------|------|
| Product | プロダクト | 価値を提供する成果物 |
| Product Backlog | プロダクトバックログ | プロダクト改善に必要な項目の一覧 |
| Product Backlog Item | プロダクトバックログアイテム | プロダクトバックログの個別項目 |
| Sprint Backlog | スプリントバックログ | スプリントの作業計画 |
| Increment | インクリメント | 利用可能な成果物 |

&nbsp;

**コミットメント（Commitments）**  

| 英語 | 日本語 | 説明 |
|------|--------|------|
| Product Goal | プロダクトゴール | プロダクトの将来の状態 |
| Sprint Goal | スプリントゴール | スプリントの目的 |
| Definition of Output Done | アウトプット完成の定義 | インクリメントの品質基準 |
| Definition of Outcome Done | アウトカム完成の定義 | 価値実現の証拠基準 |
| Definition of Done | 完成の定義 | プロダクトの品質基準（公式スクラムガイド） |
| Acceptance Criteria | 受け入れ基準 | 個別項目の完了条件 |
| Outcome Criteria | アウトカム基準 | 価値実現の意図 |

&nbsp;

**イベント（Events）**  

| 英語 | 日本語 | 説明 |
|------|--------|------|
| Sprint | スプリント | 作業の反復期間 |
| Sprint Planning | スプリントプランニング | スプリントの計画立案 |
| Daily Scrum | デイリースクラム | 日次の進捗確認 |
| Sprint Review | スプリントレビュー | 成果の検査と適応 |
| Sprint Retrospective | スプリントレトロスペクティブ | 改善の計画 |
| Refinement | リファインメント | バックログ項目の詳細化 |

&nbsp;

**価値基準（Values）**  

| 英語 | 日本語 | 説明 |
|------|--------|------|
| Commitment | 確約 | ゴール達成への献身 |
| Focus | 集中 | 重要な作業への注力 |
| Openness | 公開 | 透明性のある情報共有 |
| Respect | 尊敬 | 互いを専門家として認める |
| Courage | 勇気 | 正しいことを行う勇気 |

&nbsp;

**三本柱**  

| 英語 | 日本語 | 説明 |
|------|--------|------|
| Transparency | 透明性 | 作業と成果の可視化 |
| Inspection | 検査 | 進捗と成果の確認 |
| Adaptation | 適応 | 学習に基づく調整 |

&nbsp;

**理論・概念**  

| 英語 | 日本語 | 説明 |
|------|--------|------|
| Empiricism | 経験主義 | 経験と観察に基づく知識獲得 |
| Empirical Process Control | 経験的プロセス制御 | 証拠に基づく意思決定プロセス |
| Lean Thinking | リーン思考 | 無駄を省き本質に集中する考え方 |
| Emergence | 創発 | 相互作用から生まれる新しいパターン |
| Self-Management | 自己管理 | チームによる自律的な意思決定 |
| Complex Work | 複雑な作業 | 予測困難で専門知識が必要な作業 |
| Complexity | 複雑性 | システムの予測困難性 |
| Complex Adaptive Systems| 複雑適応系 | 複雑適応系 |
| First Principles Thinking | 第一原理思考 | 基本的真実からの問題解決 |
| OODA | OODA | 観察・方向付け・決定・行動の意思決定ループ |

&nbsp;

**プロダクト関連**  

| 英語 | 日本語 | 説明 |
|------|--------|------|
| Product Vision | プロダクトビジョン | 長期的な望ましい成果 |
| Product Strategy | プロダクト戦略 | ビジョン達成の方針 |
| Product Thinking | プロダクト思考 | プロダクト中心の考え方 |
| Stakeholder Value | ステークホルダー価値 | ステークホルダーが重要と考える知覚されたニーズ |
| Value | 価値 | ステークホルダーの期待充足 |
| Value Realization | 価値実現 | 実際の価値の達成 |
| Value Validation | 価値検証 | 価値実現の確認 |
| Crossing the Chasm | キャズムの克服 | ニッチ成功から広範囲採用への移行 |
| Satisfaction Gap | 満足度ギャップ | 現在の体験と望ましい体験の差 |
| Effectiveness | 効果性 | 適切なことを適切に行う能力 |
| responsiveness | 反応性 | 変化や要求に迅速に対応する能力 |
| anti-goal | 避けるべきゴール | 達成してはならない望ましくない結果 |
| risk exposure | リスクエクスポージャー | リスクの影響度、リスクにさらされている程度 |
| Vertical Slice | 垂直スライス | 独立して価値を提供できる、システム全層にわたる機能単位 |

&nbsp;

**プロセス・活動**  

| 英語 | 日本語 | 説明 |
|------|--------|------|
| Discovery | 発見 | 問題や機会の探索 |
| Delivery | 提供 | ソリューションの実装 |
| Product Delivery | プロダクトデリバリー | プロダクトのデリバリー |
| Release | リリース | ステークホルダーへの提供 |
| Feedback | フィードバック | 結果からの学習 |
| Result Feedback | 結果フィードバック | 成果から得られる情報 |
| High-bandwidth Conversations | 帯域幅の太い会話 | 最も豊富で速く明確な情報交換を可能にする会話 |
| Cross-pollination | 他家受粉 | 異なる組織・チーム・分野間での知識・アイデア・実践の交換と移転 |

&nbsp;

**品質・技術**  

| 英語 | 日本語 | 説明 |
|------|--------|------|
| Technical Excellence | 技術的卓越性 | 高品質な技術実践 |
| Technical Debt | 技術的負債 | 短期的な選択による長期的なコスト |
| UX/CX Debt | UX/CX負債 | ユーザー体験の改善不足 |
| Professionalism | プロフェッショナリズム | 職業的責任と優秀性の追求 |

&nbsp;

**組織・フレームワーク**  

| 英語 | 日本語 | 説明 |
|------|--------|------|
| Beyond Budgeting | 脱予算経営 | 従来予算を超越した管理手法 |
| Humanocracy | ヒューマノクラシー | 人間中心の組織運営手法 |
| Sociocracy | ソシオクラシー | 同意による意思決定システム |
| Adaptive Enterprise | 適応力のある企業 | 変化に対応できる組織 |
| Emergent Strategy | 創発的戦略 | 状況に応じて発展する戦略 |

&nbsp;

**AI・技術**  

| 英語 | 日本語 | 説明 |
|------|--------|------|
| Artificial Intelligence (AI) | 人工知能（AI） | 人間の知能を模倣する技術 |
| Cognitive Augmentation | 認知的拡張 | AIによる人間能力の強化 |
| Human in the Loop | 人間をループ内に保つ | AI使用時の人間による監督 |

&nbsp;

**フレームワーク・理論**  

| 英語 | 日本語 | 説明 |
|------|--------|------|
| Cynefin® | クネビン | 意思決定のためのフレームワーク Basic Cynefin® |
| Ordered | 秩序 | クネビン：因果関係が明確で、ベストプラクティスが適用可能な問題領域 |
| Complicated | 煩雑 | クネビン：因果関係は分析可能だが、専門知識が必要な問題領域 |
| Complex | 複雑 | クネビン：因果関係が事後的にのみ理解でき、創発的実践が必要な問題領域 |
| Chaotic | 混沌 | クネビン：因果関係が不明で、迅速な行動と安定化が必要な問題領域 |
| Aporetic | 無秩序 | クネビン：どの領域に属するか不明な状態 |
| OODA | OODA | 観察・方向付け・決定・行動のサイクル。迅速な意思決定と適応のためのループ |
| Systems Thinking | システム思考 | 部分最適化を避け、システム全体の相互作用を考慮した思考法 |

&nbsp;

**その他**  

| 英語 | 日本語 | 説明 |
|------|--------|------|
| Timebox | タイムボックス | 作業時間の上限設定 |
| Cadence | ケイデンス | 一定のリズム |
| Flow | フロー | 価値の流れ |
| Leadership | リーダーシップ | 影響力とガイダンス |
| Change Agent | チェンジエージェント | 組織変革を推進する人 |
| Systems Thinking | システム思考 | 全体的な相互関係の理解 |
| Aligned Autonomy | 整合された自律性 | 共有目標に集中しながら問題解決方法を決定する自由 |
| Cross-functional | 機能横断型 | 技術とビジネスドメインのスキルを含む多分野性 |
| Governance | ガバナンス | プロダクトの方向性・意思決定・責任を導く構造・基準 |
| Impediment | 障害物 | 進歩を阻害または遅延させるもの |
| Evidence | エビデンス | 客観的に観察された根拠 |
| Cognitive Diversity | 認知的多様性 | 思考パターンの多様性 |
| Guiding Coalition | 指導連合 | 変革を推進する強力なグループ |
| Genchi Genbutsu | 現地現物 | 決定を知らせるために事実と観察を収集すること |
| Side Effects | 副作用 | 予期しない、または意図しない結果や結末 |
| Exaptation | エクサプテーション | ある目的のものを異なる目的で使用すること |
| Estuarine Mapping | 河口域マッピング | クネビンフレームワークのマッピング手法 |
| RenDanHeYi | 人単合一 | ハイアールの経営モデル |
| Abduction | アブダクション | 推論の一形態 |
| Sense-making | センスメイキング | 意味形成、状況理解のプロセス |
| Product Operating Model | プロダクトオペレーティングモデル | プロダクト中心の運営モデル |
| Strategy Deployment | 戦略展開 | 戦略の実行計画への展開 |
| Motivation Crowding | モチベーション・クラウディング | 外発的動機付けが内発的動機を損なう現象 |
| B2B2B | B2B2B | Business to Business to Business |
| B2B2C | B2B2C | Business to Business to Consumer |

&nbsp;

**歴史的・理論的背景**  

| 英語 | 日本語 | 説明 |
|------|--------|------|
| Toyota Production System | トヨタ生産方式 | リーン思考の基盤となった生産管理システム |
| The New New Product Development Game | 「新たなる新製品開発の方法」 | Takeuchi・Nonaka論文、スクラムの語源となった研究 |
