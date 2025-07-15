---
tags:
  - planning
  - projects
zero-links: "[[00 Planning]]"
start: ""
deadline: 
priority: ❕Low
status: 📫 Inbox
prompt: 
progress:
---
📫 Inbox, 📌 In Progress, ✅ Done, ❕Low, ❗Medium,‼️High

status:: 📫 Inbox
priority::❕Low
# GE







# == kind == # Required when specifying a time based progress bar # # Optional if manually specifying value # # Possible values: # day-year: # day-month: # day-week: # month: # day-custom: min, and max is required, both min and max should in format: YYYY-MM-DD kind: day-year # == name == # Specify the progress bar name, in front of the bar # support templates: max, value, percentage # # quote is recommanded if templates are used # # Optional, will use kind as name if not specified name: "{percentage} from {min} to {max}" # == width == # Specify the progress bar width # Optional # Possible format: 50%, 100px width: 50% # == value == # Specify the progress bar current value # Optional when specified a valid kind # Required when not having a kind # Possible format: numbers value: 10 # == min == # Specify the progress bar max value # # Optional when specified a valid kind # Only Required when kind is day-custom # # Possible format: # day-custom: YYYY-MM-DD # others: number min: 2024-02-01 # == max == # Specify the progress bar max value # # Optional when specified a valid kind # Required when not having a kind # # Possible format: numbers # day-custom: YYYY-MM-DD # others: number max: 2024-04-30 # == button == # Specify whether you wish to show the buttons to +1 or -1 the current value # # Requires an id # Can only be used with kind manual/others or no kind # # Possible format: boolean (true or false) button: true # == id == # Specify the id for a progressbar. # Multiple progressbar throughout the same document will be synced for buttons # # Optional when buttons are turned off # Required when buttons are turned on # # Possible format: numbers, text id: homework-progressbar