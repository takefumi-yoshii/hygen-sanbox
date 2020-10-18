---
to: <%= abs_path %>/<%= component_name %>.tsx
---
import React from "react";
import style from "./style.module.css"
import { useDeps } from './dependencies'
// ______________________________________________________
//
<% if (have_children) { -%>
export type Props = {
};
<% } else { -%>
export type Props = {
  children?: never;
};
<% } -%>
// ______________________________________________________
//
export const <%= component_name %>: React.FC<Props> = (props) => {
  const deps = useDeps(props)
  return (
    <<%= tag %> className={style.module}>
<% if (have_children) { -%>
      {props.children}
<% } -%>
    </<%= tag %>>
  );
}
