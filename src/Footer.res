@react.component
let make = () => {
  <div className="footer">
    {"Feel free to contact Porter customer care at "->React.string}
    <span className="bold"> {"022 4410 4444 / 022 6268 4444 "->React.string} </span>
    {"or mail us at "->React.string}
    <span className="bold"> {"packermover@porter.in "->React.string} </span>
    {"for any further assistance."->React.string}
  </div>
}
