m = Map("filerun", translate("FileRun"), translate(
            "Self-Hosted File Sync and Sharing"))
m:append(Template("filerun/status"))

s = m:section(TypedSection, "filerun", translate("Global Settings"))
s.anonymous = true
s.addremove = false

o = s:option(Flag, "enable", translate("Enable PHP"))
o.rmempty = false

o = s:option(Value, "port", translate("FileRun Port"))
o.datatype = "port"
o.placeholder = "8081"
o.default = "8081"
o.rmempty = false

o = s:option(Value, "kodomain", translate("FileRun Bind Domain"))
o.placeholder = "filerun.xx.com"
o.rmempty = true

o = s:option(Value, "memory_limit", translate("Maximum memory usage"),
             translate(
                 "If your device has a lot of memory, you can increase it."))
o.default = "100M"
o.rmempty = false

o = s:option(Value, "upload_max_filesize",
             translate("Maximum size for uploading files"))
o.default = "200M"
o.rmempty = false

o = s:option(Value, "storage_device_path", translate("Storage device path"),
             translate(
                 "It is recommended to insert a usb flash drive or hard disk and enter the path. For example, /mnt/sda1/"))
o.default = "/mnt/sda1/"
o.placeholder = "/mnt/sda1/"
o.rmempty = false

s:append(Template("filerun/version"))

return m
