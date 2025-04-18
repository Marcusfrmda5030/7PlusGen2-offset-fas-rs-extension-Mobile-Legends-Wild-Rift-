API_VERSION = 4

function load_fas(pid, pkg)
    if (pkg == "com.mobile.legends") then
        set_extra_policy_rel(0, 4, -75000, 0)
        set_extra_policy_abs(0, 1400000, 1700000)
        set_extra_policy_rel(4, 7, -50000, 0)
        set_extra_policy_abs(4, 1800000, 2200000)
        set_ignore_policy(7, true)

    elseif (pkg == "com.tencent.lolm") then
        set_extra_policy_rel(0, 4, -100000, 0)
        set_extra_policy_abs(4, 1800000, 2400000)
    end
end

function unload_fas()
    set_ignore_policy(0, false)
    set_ignore_policy(4, false)
    set_ignore_policy(7, false)
    remove_extra_policy(0)
    remove_extra_policy(4)
    remove_extra_policy(7)
end
