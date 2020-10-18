---
to: <%= abs_path %>/<%= component_name %>.tsx
---
import React from "react";
import style from "./style.module.css"
import { useDependencies } from './dependencies'
<% if (have_props) { -%>
// ______________________________________________________
//
export type Props = {
};
<% } -%>
// ______________________________________________________
//
export const <%= component_name %>: <%- type_annotate %> = <%= props %> => {
  const deps = useDependencies<%= deps_props %>
  return (
    <<%= tag %> className={style.module}>
<% if (have_children) { -%>
      {props.children}
<% } -%>
    </<%= tag %>>
  );
}
