// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Data from "./Data.bs.mjs";
import * as Footer from "./Footer.bs.mjs";
import * as Header from "./Header.bs.mjs";
import * as JsxRuntime from "react/jsx-runtime";
import * as TermsAndConditionList from "./TermsAndConditionList.bs.mjs";

function App(props) {
  return JsxRuntime.jsxs("div", {
              children: [
                JsxRuntime.jsx(Header.make, {}),
                JsxRuntime.jsx(TermsAndConditionList.make, {
                      data: Data.tncList
                    }),
                JsxRuntime.jsx(Footer.make, {})
              ]
            });
}

var make = App;

export {
  make ,
}
/* Footer Not a pure module */
