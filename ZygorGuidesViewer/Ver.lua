assert(ZygorGuidesViewer,"Zygor Guides Viewer failed to load.")
local name,_=...
ZygorGuidesViewer.revision = tonumber(string.sub("$Revision: 20064 $", 12, -3))
ZygorGuidesViewer.version = GetAddOnMetadata(name,"version") .. "." .. ZygorGuidesViewer.revision
ZygorGuidesViewer.date = string.sub("$Date: 2019-04-23 02:13:45 -01000 (Tue, 23 Apr 2019) $", 8, 17)
--2019/04/23 02:13:45 
