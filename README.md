## OBS Radial Menu

This project is a [Godot Engine](https://godotengine.org/) addon implementing a pair of Control nodes, `OBSRadialButton` and `OBSRadialMenu` used to create a radial menu popup dialog.

### Installation
---
Clone the repository and copy the repository's `addons` folder into your Godot project and enable the `OBS Radial Menu` plugin.

### The OBSRadial* Node
---
The `OBSRadialMenu` node is the root node of the radial menu system. It is based on a `Popup` dialog and functions similarly. To add to the radial menu, simply add new `OBSRadialButton` nodes as children of the `OBSRadialMenu`.

As a child of `OBSRadialMenu`, `OBSRadialButton` non-theming configuration is controled by it's parent. While changes to the 'OBSRadialButton' settings may appear to change in editor, the settings will be reset either during further editing, or at runtime.

`OBSRadialButton` nodes *can* be used outside of `OBSRadialMenu`, however, these two nodes are designed to work as a pair.

#### OBSRadialButton Parameters ![Menu Icon](./addons/obs_radial_menu/assets/icons/icon_obsradialmenu.svg?raw=true&sanitize=true)

* `icon` [Optional, Texture] - A texture icon to display on the button.
* `arc_start_degree` [float, 0, 360] - The start angle (in degrees) from which the button arc will start.
* `arc_end_degree` [float, 0, 360] - The end angle (in degrees) from which the button arc will end. **NOTE:** The end degree cannot be any smaller than the value defined under `arc_start_degree`
* `arc_offset_degree` [float, 0, 360] - The angle (in degrees) in which the arc considers to be 0 degrees when rendering the button. With `arc_offset_degrees` set to zero, arc buttons will start their rendering at the 9o'clock mark.
* `inner_radius` [float, 0, 1] - Determines the relative inner radius of the button. The outer radius is half the size of the smallest `rect_size` axis. For example, with a rect_size of 100x50, 50 is the smallest axis, so the outer radius would be 25. If the `inner_radius` value is set to 0.5, then the inner radius of the example would be 12.5 pixels.
* `pressed` [bool] - If true, the button will start in the pressed state. 

#### OBSRadialMenu Parameters ![Menu Icon](./addons/obs_radial_menu/assets/icons/icon_obsradialbutton.svg?raw=true&sanitize=true)
* `max_arc_degrees` [float, 0, 360] - The total arc degrees the buttons will take. This will allow for the creation of radial menus taking up less than 360 degrees.
* `outer_radius` [float, 0, 1] - The relative outer radius of the radial menu buttons. At a value of **1** the outer radius would be equal to half of the smallest `rect_size` axis of the `OBSRadialMenu`. *(This parameter is tied with the `outer_radius_pixels` parameter)*
* `outer_radius_pixels` [float] - The outer radius, in pixels, of the radial menu buttons. The maximum pixel radius is equal to half of the smallest `rect_size` axis of the `OBSRadialMenu`. *(This parameter is tied with the `outer_radius` parameter)*
* `inner_radius` [float, 0, 1] - The relative inner radius of the radial menu buttons. At a value of **1** the inner radius would be equal to the outer radius. *(This parameter is tied with the `inner_radius_pixels` parameter)*
* `inner_radius_pixels` [float] - The inner radius, in pixels, of the radial menu buttons. The maximum pixel radius is equal to the current `outer_radius_pixels` value. *(This parameter is tied with the `inner_radius` parameter)*
* `offset_angle` [float, 0, 360] - The angle (in degrees) in which the arc considers to be 0 degrees when rendering the button. With `offset_angle` set to zero, arc buttons will start their rendering at the 9o'clock mark.
* `gap_degrees` [float, 0, 10] - The angle (in degrees) seperating each button.
* `force_neighboring` [bool] - If true, at runtime, the focus neighboring of each `OBSRadialButton` will be calculated at runtime. If false, focus neighboring will remain unchanged to what is configured in the editor.

### Theming
---
The `OBSRadialButton` nodes support theming by either theme_override values found in the node inspector, or via the *OBSRadialButton* class in a theme file.

For a reference for defining `OBSRadialButton` themes in a godot theme file, refer to the *OBSRadialButton.theme* file located in the repository.

