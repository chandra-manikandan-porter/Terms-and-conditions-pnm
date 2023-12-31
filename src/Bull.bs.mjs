// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Belt_Array from "rescript/lib/es6/belt_Array.js";
import * as BulletPoints from "./BulletPoints.bs.mjs";
import * as JsxRuntime from "react/jsx-runtime";

function Bull(props) {
  var renderPointList = function (pointList) {
    return JsxRuntime.jsx("ul", {
                children: Belt_Array.map(pointList, (function (pointItem) {
                        return JsxRuntime.jsxs("li", {
                                    children: [
                                      JsxRuntime.jsx("div", {
                                            children: pointItem.point
                                          }),
                                      JsxRuntime.jsx(BulletPoints.make, {
                                            points: pointItem.subPointList
                                          })
                                    ]
                                  }, pointItem.point);
                      }))
              });
  };
  var renderSubList = function (subList) {
    return JsxRuntime.jsx("ul", {
                children: Belt_Array.map(subList, (function (subItem) {
                        return JsxRuntime.jsxs("li", {
                                    children: [
                                      JsxRuntime.jsx("div", {
                                            children: subItem.subHeader
                                          }),
                                      renderPointList(subItem.pointList)
                                    ]
                                  }, subItem.subHeader);
                      }))
              });
  };
  return JsxRuntime.jsx("div", {
              children: Belt_Array.map(props.dataList, (function (item) {
                      return JsxRuntime.jsxs("div", {
                                  children: [
                                    JsxRuntime.jsx("h2", {
                                          children: item.mainHeader
                                        }),
                                    renderSubList(item.subList)
                                  ]
                                }, item.mainHeader);
                    }))
            });
}

var make = Bull;

export {
  make ,
}
/* BulletPoints Not a pure module */
