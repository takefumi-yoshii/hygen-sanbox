---
to: <%= abs_path %>/dependencies.ts
---
import type { Props } from "./<%= component_name %>"
// ______________________________________________________
//
export function use<%= component_name %>Deps(props: Props) {
  return {}
}
