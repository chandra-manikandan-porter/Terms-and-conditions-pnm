// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Bull from "./Bull.bs.mjs";
import * as Data from "./Data.bs.mjs";
import * as Header from "./Header.bs.mjs";
import * as JsxRuntime from "react/jsx-runtime";

function App(props) {
  return JsxRuntime.jsxs("div", {
              children: [
                JsxRuntime.jsx(Header.make, {}),
                JsxRuntime.jsx(Bull.make, {
                      dataList: Data.newList
                    })
              ]
            });
}

var make = App;

export {
  make ,
}
/* Bull Not a pure module */