-- Get the status input and update button elements
local statusInput = get("input.status-input")
local updateBtn = get("button.update-btn")

-- Add an on_click event to the update button
updateBtn.on_click(function()
    local status = statusInput.get_value()
    if status and status ~= "" then
        print("Status updated to: " .. status)
        statusInput.set_value("") -- Clear the input field
    else
        print("Please enter a status.")
    end
end)

-- Add an on_input event to log input changes
statusInput.on_input(function(content)
    print("Status input changed: " .. content)
end)

-- Get all links and set their href properties
local all_links = get("a", true)
for key, value in pairs(all_links) do
    if value.get_class() == "email-link" then
        value.set_href("mailto:john.doe@example.com")
    elseif value.get_class() == "website-link" then
        value.set_href("buss://johns-website")
    end
end
