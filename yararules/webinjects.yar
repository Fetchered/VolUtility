rule Webinjects
{
    meta:
        description = "Webinjects v0.1"
        date = "2017-10-30"
        author = "Peter Kalnai"
    strings:
        $s1 = "data_inject"
        $s2 = "exclude_url"
        $s3 = "data_after"
        $s4 = "data_before"

    condition:
        all of them
}
