@react.component
let make = (~points: array<string>) => {
  <ul>
    {points
    ->Belt.Array.map(point =>
      <li key={point}>
        <p> {point->React.string} </p>
      </li>
    )
    ->React.array}
  </ul>
}
