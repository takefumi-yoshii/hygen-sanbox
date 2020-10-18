---
to: <%= abs_path %>/<%= component_name %>.tsx
---
import React from "react";
import style from "./style.module.css";
<% if (have_props) { -%>
// ______________________________________________________
//
type Props = {
};
<% } -%>
// ______________________________________________________
//
export const <%= component_name %>: <%- type_annotate %> = <%= props %> => (
  <<%= tag %> className={style.module}>
<% if (have_children) { -%>
    {props.children}
<% } -%>
  </<%= tag %>>
);
