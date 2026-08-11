SELECT
    eventtime,
    useridentity.arn as user_identity,
    eventname,
    sourceipaddress,
    useragent
FROM
    cloudtrail_logs_tkh
WHERE
    eventsource = '://amazonaws.com'
ORDER BY
    eventtime DESC
LIMIT 50;
