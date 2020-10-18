---
to: <%= abs_path %>/<%= component_name %>.tsx
---
import React from "react";
<% if (have_style) { -%>
import style from "./style.module.css"
<% } -%>
<% if (have_hooks) { -%>
import { useDependencies } from './dependencies'
<% } -%>
<% if (have_props) { -%>
// ______________________________________________________
//
export type Props = {
};
<% } -%>
// ______________________________________________________
//
export const <%= component_name %>: <%- type_annotate %> = <%= props %> => {
<% if (have_hooks) { -%>
  const deps = useDependencies<%= props %>
<% } -%>
  return (
<% if (have_style) { -%>
    <<%= tag %> className={style.module}>
<% } else { -%>
    <<%= tag %>>
<% } -%>
    </<%= tag %>>
  );
}
