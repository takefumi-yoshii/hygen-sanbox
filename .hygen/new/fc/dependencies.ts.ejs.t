---
to: <%= abs_path %>/dependencies.ts
---
<% if (have_props) { -%>
import type { Props } from "./<%= component_name %>"
// ______________________________________________________
//
export function useDependencies(props: Props) {
  return {}
}
<% } else { -%>
export function useDependencies() {
  return {}
}
<% } -%>
