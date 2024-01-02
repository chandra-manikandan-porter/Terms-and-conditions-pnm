type bulletType = Disc | Circle

let rec tncRec = (~data: array<Data.dataType2>) => {
  // let chooseOrderList = (~type_, ~item: Data.dataType2, ~order: int) => {
  //   <>
  //     <li key={item.header}> {item.header->React.string} </li>
  //     {tncRec(~data=item.subList)}
  //   </>
  // }

  // let chooseUnOrderList = (~item: Data.dataType2, ~order: int, ~bulletType: bulletType) => {
  //   let bulletClass = switch bulletType {
  //   | Disc => "disc-dot-dark"
  //   | Circle => "circle-dot-light"
  //   }

  //   <>
  //     <li> {item.header->React.string} </li>
  //     {tncRec(~data=item.subList)}
  //   </>
  // }

  // let arrangeListItems = (~data) => {
  //   data
  //   ->Belt.Array.mapWithIndex((i: int, item: Data.dataType2) => {
  //     switch order {
  //     | 1 | 2 => chooseOrderList(~type_={order == 1 ? "I" : "1"}, ~item={item}, ~order={order})
  //     | 3 => chooseUnOrderList(~item={item}, ~order={order}, ~bulletType=Disc)
  //     | 4 => chooseUnOrderList(~item={item}, ~order={order}, ~bulletType=Circle)
  //     | _ => React.null
  //     }
  //   })
  //   ->React.array
  // }

  // switch order {
  // | 1 | 2 => <ol type_={order == 1 ? "I" : "1"}> {arrangeListItems(~data)} </ol>
  // | 3 | 4 => <ul> {arrangeListItems(~data)} </ul>
  // | _ => React.null
  // }

  // if order == 1 || order == 2 {
  //   <ol type_={order == 1 ? "I" : "1"}> {arrangeListItems(~data)} </ol>
  // } else if order == 3 || order == 4 {
  //   <ul> {arrangeListItems(~data)} </ul>
  // } else {
  //   <li />
  // }

  let printPoint = (~item: Data.dataType2) => {
    Belt.List.toArray(item.header)
    ->Belt.Array.mapWithIndex((i, subArrayItem) => {
      switch subArrayItem.decorationType {
      | Bold => <span className="bold"> {subArrayItem.message->React.string} </span>
      | Orange => <span className="orange"> {subArrayItem.message->React.string} </span>
      | None => subArrayItem.message->React.string
      }
    })
    ->React.array
  }

  data
  ->Belt.Array.mapWithIndex((ind: int, item: Data.dataType2) => {
    switch item.bulletType {
    | Roman =>
      <>
        <li key={string_of_int(ind)}> {printPoint(~item={item})} </li>
        <ol type_="I"> {tncRec(~data=item.subList)} </ol>
      </>
    | Number =>
      <ol type_="1">
        <li key={string_of_int(ind)}> {printPoint(~item={item})} </li>
        {tncRec(~data=item.subList)}
      </ol>
    | Disc =>
      <ul className="disc-dot-dark">
        <li key={string_of_int(ind)}> {printPoint(~item={item})} </li>
        {tncRec(~data=item.subList)}
      </ul>
    | Circle =>
      <ul className="circle-dot-light">
        <li key={string_of_int(ind)}> {printPoint(~item={item})} </li>
        {tncRec(~data=item.subList)}
      </ul>
    }
  })
  ->React.array
}

@react.component
let make = (~data: array<Data.dataType2>) => {
  <div> {tncRec(~data={data})} </div>
}
