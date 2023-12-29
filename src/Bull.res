@react.component
let rec make = (~dataList: array<Data.recordType>) => {
let renderPointList = (pointList: array<Data.pointListType>) =>
    <ul>
      {pointList
      ->Belt.Array.map(pointItem =>
        <li key={pointItem.point}>
          <div> {pointItem.point->React.string} </div>
          
          <BulletPoints points=pointItem.subPointList />
        </li>
      )
      ->React.array}
    </ul>

  let renderSubList = (subList: array<Data.subListType>) =>
    <ul>
      {subList
      ->Belt.Array.map(subItem =>
        <li key={subItem.subHeader}>
          <div> {subItem.subHeader->React.string} </div>
          {renderPointList(subItem.pointList)}
        </li>
      )
      ->React.array}
    </ul>

  <div>
    {dataList
    ->Belt.Array.map(item =>
      <div key={item.mainHeader}>
        <h2> {item.mainHeader->React.string} </h2>
        {renderSubList(item.subList)}
      </div>
    )
    ->React.array}
  </div>
}
