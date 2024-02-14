#let gutter = (90mm - 1em * 17 * 2) / 3

#let typ-24xs = doc => {
  set text(
    7pt, top-edge: 7pt,
    font: ("Tex Gyre Heros", "Noto Sans CJK SC"),
    lang: "zh",
    baseline: -0.11em,
  )

  show regex("[·“”‘’…]"): set text(font: "Noto Sans CJK SC")

  set block(spacing: 0pt)

  set par(leading: 0.25em)
  show par: it => block(
    inset: (y: 0.125em),
    spacing: 1.25em / 4,
    it
  )

  set page(
    paper: "cn-business-card",
    margin: (
      x: gutter,
      y: (54mm - 1.25em * 16.5) / 2
    ),
  )

  doc
}

#let debug-grid = doc => {
  place(
    for _ in range(100) {
      line(length: 100%, stroke: 0.1pt + blue)
      v(7pt * 1.25 / 4)
    }
  )
  set block(stroke: 0.1pt + red)
  doc
}

#let logo = {
  show heading: it => it.body
  heading({
    set block(spacing: 0pt)
    // to offset
    show par: it => block(inset: (y: -0.125em), it)
    block(
      inset: (
        left: -1.5pt,
        right: -1.5pt,
        top: 7pt * 1.25 / 4 * 19 - 48pt,
        bottom: -7pt * 1.25 / 4 * 2,
      ),
      text(48pt, top-edge: 48pt)[2#h(1fr)4#h(1fr)X#h(1fr)S]
    )
    block(
      inset: (
        top: 7pt * 1.25 / 4 * 6 - 12pt,
        bottom: 0pt,
      ),
      text(12pt, top-edge: 12pt)[微#h(1fr)型#h(1fr)单#h(1fr)人#h(1fr)冒#h(1fr)险]
    )
  })
}

#let rules-page = doc => page(columns(2, gutter: gutter, doc))

#let adventure-page = (..cells) => page(grid(
  columns: (1fr, 1fr),
  rows: (1fr, 1fr),
  column-gutter: gutter,
  row-gutter: 1.25em * 0.5,
  ..cells
))

#let random-table = (title, ..cells) => grid(
  columns: 1, rows: 2,
  block(
    width: 100%,
    height: 10em / 7,
    inset: (x: 0.25em),
    fill: black,
    stroke: 0.5pt,
    align(horizon, text(white, weight: "bold", title))
  ),
  grid(
    columns: (auto, 1fr), rows: 6,
    ..cells.pos().enumerate(start: 1)
      .map(((i, x)) => (
        block(
          width: 10em / 7,
          height: 10em / 7,
          fill: silver,
          stroke: 0.5pt,
          align(horizon + center)[*#i*]
        ),
        block(
          width: 100%,
          height: 10em / 7,
          inset: (x: 0.25em),
          stroke: 0.5pt,
          align(horizon, x)
        )
      ))
      .flatten()
  )
)
