@react.component
let make = () => {
  <div>
    <Header />
    <TermsAndConditionList data={Data.tncList} />
    <Footer />
  </div>
}
