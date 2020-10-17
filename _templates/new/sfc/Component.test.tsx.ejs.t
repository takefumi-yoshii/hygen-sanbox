---
to: <%= abs_path %>/<%= component_name %>.test.tsx
---
import React from "react";
import renderer from "react-test-renderer";
import { <%= component_name %> } from "./";
// ______________________________________________________
//
describe("<%= path %>", () => {
  it("Snap Shot", () => {
    const component = renderer.create(<<%= component_name %> />);
    const tree = component.toJSON();
    expect(tree).toMatchSnapshot();
  });
});
