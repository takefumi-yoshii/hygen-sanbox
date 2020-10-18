---
to: <%= abs_path %>/<%= component_name %>.stories.tsx
---
import React from "react";
import { storiesOf } from "@storybook/react";
import { <%= component_name %> } from "./";
// ______________________________________________________
//
storiesOf("<%= path %>", module)
  .add("default", () => <<%= component_name %> />);
