let rec tncRec = (~data: array<Data.tnctype>) => {
  let printPoint = (~item: Data.tnctype) => {
    Belt.List.toArray(item.header)
    ->Belt.Array.map(subArrayItem => {
      switch subArrayItem.decorationType {
      | Bold =>
        <span key={subArrayItem.message} className="bold">
          {subArrayItem.message->React.string}
        </span>
      | Orange =>
        <span key={subArrayItem.message} className="orange">
          {subArrayItem.message->React.string}
        </span>
      | None =>
        <React.Fragment key={subArrayItem.message}>
          {subArrayItem.message->React.string}
        </React.Fragment>
      }
    })
    ->React.array
  }

  data
  ->Belt.Array.mapWithIndex((ind: int, item: Data.tnctype) => {
    switch item.subList.bulletType {
    | Roman =>
      <React.Fragment key={string_of_int(ind)}>
        <ol type_="I"> {tncRec(~data=item.subList.arrayList)} </ol>
      </React.Fragment>
    | Number =>
      <React.Fragment key={string_of_int(ind)}>
        <li className={"point-header"}> {printPoint(~item={item})} </li>
        <ol type_="1"> {tncRec(~data=item.subList.arrayList)} </ol>
      </React.Fragment>
    | Disc =>
      <React.Fragment key={string_of_int(ind)}>
        <li className={"point-header"}> {printPoint(~item={item})} </li>
        <ul className="disc-dot-dark"> {tncRec(~data=item.subList.arrayList)} </ul>
      </React.Fragment>
    | Circle =>
      <React.Fragment key={string_of_int(ind)}>
        <li className="normal-point"> {printPoint(~item={item})} </li>
        <ul className="circle-dot-light"> {tncRec(~data=item.subList.arrayList)} </ul>
      </React.Fragment>
    | None =>
      <li className="normal-point" key={string_of_int(ind)}> {printPoint(~item={item})} </li>
    }
  })
  ->React.array
}

@react.component
let make = (~data: array<Data.tnctype>) => {
  <div> {tncRec(~data={data})} </div>
}
