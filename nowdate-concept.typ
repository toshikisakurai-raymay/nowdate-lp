#set document(
  title: "NowDate Concept",
  author: "RayMay",
)

#set page(
  paper: "a4",
  margin: (x: 22mm, y: 18mm),
)

#set text(
  font: ("Hiragino Sans", "Noto Sans CJK JP", "Yu Gothic"),
  size: 10.2pt,
  lang: "ja",
)

#set heading(numbering: none)
#show heading: it => [
  #v(0.8em)
  #it
  #v(0.25em)
]

#let pill(label, fill-color: rgb("#edf5f0"), text-color: rgb("#1f745e")) = box(
  fill: fill-color,
  radius: 8pt,
  inset: (x: 8pt, y: 4pt),
  text(fill: text-color, weight: "bold", size: 8.5pt)[#label],
)

#let card(title, body, accent: rgb("#1f745e")) = block(
  fill: white,
  stroke: rgb("#dfe5e1"),
  radius: 6pt,
  inset: 11pt,
  [
    #text(fill: accent, weight: "bold", size: 9pt)[#title]
    #v(0.3em)
    #body
  ],
)

#let section-title(kicker, title) = [
  #text(fill: rgb("#d95e74"), weight: "bold", size: 8.5pt)[#kicker]
  #v(0.2em)
  #text(weight: "bold", size: 18pt)[#title]
]

#align(center)[
  #text(weight: "bold", size: 28pt)[NowDate]
  #v(0.35em)
  #text(size: 15pt, fill: rgb("#42504c"))[今日、会う予定が決まる。]
  #v(0.8em)
  #pill("自動マッチ")
  #h(0.45em)
  #pill("成立前に最終確認")
  #h(0.45em)
  #pill("公開店舗のみ")
  #h(0.45em)
  #pill("本人確認制")
]

#v(1em)

#block(
  fill: rgb("#fbfaf6"),
  stroke: rgb("#dfe5e1"),
  radius: 8pt,
  inset: 14pt,
)[
  #text(weight: "bold", size: 13pt)[コンセプト]
  #v(0.35em)
  NowDateは、「いますぐ会いたい」という当日の熱量に最適化した、自動マッチ型の即日デートサービス。
  従来のマッチングアプリにある、検索、いいね、メッセージ、日程調整、店選びの摩擦を取り除き、
  _今日会う意思がある人同士_ を、時間・エリア・会い方・安全条件にもとづいて自動でつなぐ。

  #v(0.5em)
  ただし、完全に勝手には決まらない。成立前に、相手の基本情報、開始時間、場所、キャンセル条件を確認できる。
  つまり、体験価値は「早い」だけではなく、#text(weight: "bold")[探さないのに、納得して会える] ことにある。
]

#v(0.8em)

#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  card(
    "ターゲット",
    [
      - 仕事終わりや休日に、今日の予定を作りたい20〜35歳
      - メッセージよりも、まず短時間で会って相性を確かめたい人
      - 既存アプリのやりとり、日程調整、店選びに疲れている人
      - 安全性と透明性が担保されるなら、当日でも会いたい人
    ],
    accent: rgb("#d95e74"),
  ),
  card(
    "初期エリア",
    [
      初期は東京の高密度エリアに限定する。
      渋谷、恵比寿、新宿、銀座、六本木など、仕事終わりに移動しやすく、
      提携店舗を確保しやすい場所から開始する。

      #v(0.4em)
      即会いサービスは、全国展開よりも局所密度が重要。
    ],
  ),
)

#v(0.9em)

#section-title("PROBLEM", "既存マッチングアプリの摩擦")

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 9pt,
  card("会うまでが長い", [いいね、メッセージ、日程調整で、当日の熱量が冷めやすい。]),
  card("会う意思が不明", [マッチしても、相手が本当に会いたいのか分からない。]),
  card("安全面が不安", [即日で会うほど、相手・場所・条件の透明性が重要になる。]),
)

#v(0.9em)

#section-title("SOLUTION", "NowDateの体験設計")

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 9pt,
  card(
    "1. 今から会えるをON",
    [
      エリア、開始可能時間、所要時間、会い方、年齢帯、NG条件を選ぶ。
    ],
    accent: rgb("#d95e74"),
  ),
  card(
    "2. 条件内で自動マッチ",
    [
      会う意思があり、本人確認済みで、条件に合う相手だけを紹介する。
    ],
    accent: rgb("#d95e74"),
  ),
  card(
    "3. 確認して成立",
    [
      相手、時間、場所、キャンセル条件を確認してから、双方承認で成立する。
    ],
    accent: rgb("#d95e74"),
  ),
)

#v(0.9em)

#section-title("POSITIONING", "Koyoiに対する勝ち筋")

#table(
  columns: (1.05fr, 1.4fr, 1.55fr),
  inset: 7pt,
  stroke: rgb("#dfe5e1"),
  fill: (_, y) => if y == 0 { rgb("#edf5f0") } else { white },
  [観点], [Koyoiの強み], [NowDateの勝ち筋],
  [即時性], [今夜飲みたい人同士をつなぐ], [30〜90分後の予定確定に寄せる],
  [手間], [やりとりなし、自動マッチ], [やりとりなしに加え、店・時間も確定],
  [納得感], [AIが相手を決定], [条件内マッチ + 成立前の最終確認],
  [安全性], [審査制、評価制、飲食店で会う], [公開店舗限定、本人確認、チェックイン、相互評価],
  [不安解消], [ドタキャン対策], [キャンセル条件・料金発生タイミングを成立前に明示],
)

#v(0.9em)

#section-title("PRODUCT PRINCIPLES", "プロダクト原則")

#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  card(
    "自動なのに、勝手に決まらない",
    [
      ユーザーの許容条件から外れた相手とは成立させない。
      最終確認を入れることで、自動化の便利さと納得感を両立する。
    ],
  ),
  card(
    "速さよりも、空振りの少なさ",
    [
      ただ早くマッチするだけでなく、相手が来る、店がある、条件が見える状態を作る。
      体験の約束は「会えるかも」ではなく「予定が決まる」。
    ],
  ),
  card(
    "即会いだから安全を前面に",
    [
      本人確認、顔写真認証、公開店舗、通報、相互評価、チェックイン、解散確認を基本設計に含める。
    ],
  ),
  card(
    "ブランドを荒らさない",
    [
      奢り、謝礼、飯目的、性的訴求を前面に出さない。
      訴求は「今日会える」「条件が見える」「安心して会える」に置く。
    ],
  ),
)

#v(0.9em)

#section-title("BUSINESS MODEL", "料金と収益モデル")

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 9pt,
  card(
    "成立課金",
    [
      男性を中心に、成立ごとに3,000〜5,000円。
      初回はトライアル価格を用意する。
    ],
    accent: rgb("#8d5d46"),
  ),
  card(
    "月額プラン",
    [
      9,800〜19,800円で成立料割引、優先マッチ、月内無料枠を提供。
    ],
    accent: rgb("#8d5d46"),
  ),
  card(
    "店舗送客",
    [
      提携店舗から予約送客手数料、または飲食売上に応じた手数料を得る。
    ],
    accent: rgb("#8d5d46"),
  ),
)

#v(0.9em)

#section-title("MVP", "最初に作るべき範囲")

#grid(
  columns: (1.1fr, 0.9fr),
  gutter: 10pt,
  card(
    "必須機能",
    [
      - プロフィール登録
      - 本人確認
      - 今から会えるON/OFF
      - 希望条件入力
      - 自動マッチ
      - 成立前の最終確認
      - 店舗・時間の提示
      - チェックイン
      - 相互評価
      - 通報・ブロック
    ],
  ),
  card(
    "初期KPI",
    [
      - 登録から本人確認完了率
      - 今から会えるON率
      - 自動マッチ提示率
      - 最終承認率
      - 成立率
      - 来店率
      - ドタキャン率
      - 初回後の再利用率
    ],
  ),
)

#v(0.9em)

#block(
  fill: rgb("#18201f"),
  radius: 8pt,
  inset: 14pt,
)[
  #text(fill: white, weight: "bold", size: 15pt)[一言で言うと]
  #v(0.45em)
  #text(fill: white, size: 12.5pt)[
    NowDateは、マッチングアプリではなく「今日の予定を成立させる即時デート予約サービス」。
    Koyoiに対しては、速さで並び、透明性・安全性・予定確定力で勝つ。
  ]
]
