local ok, org_bullets = pcall(require, "org-bullets")
if not ok then
    return
end

org_bullets.setup {}
