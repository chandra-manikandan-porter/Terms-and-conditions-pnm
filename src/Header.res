@module external closeIcon: string = "./assets/svg/close-icon.svg"

@react.component
let make = () => {
  <div className="tnc-header">
    <p> {"Terms & conditions"->React.string} </p>
    <CloseIcon />
  </div>
}
