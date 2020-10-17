---
to: <%= abs_path %>/<%= component_name %>.tsx
---
import React from "react";
import style from "./style.module.css";
// ______________________________________________________
//
<% if (have_children) { -%>
type Props = {
};
<% } else { -%>
type Props = {
  children?: never;
};
<% } -%>
// ______________________________________________________
//
export const <%= component_name %>: React.FC<Props> = (props) => (
  <div className={style.<%= component_name %>}>
<% if (have_children) { -%>
    {props.children}
<% } -%>
  </div>
);
