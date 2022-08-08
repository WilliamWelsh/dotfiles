local status, comment = pcall(require, "Comment")
if (not status) then return end

lua << EOF

comment.setup()

EOF

nnoremape <silent> <Space> K
