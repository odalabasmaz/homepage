---
title: "Handle With Care: Approximate Creation Date Time of DynamoDB Streams"
date: 2017-11-14T12:00:00+03:00
draft: false
---

False time metrics are not acceptable in sub-second latency systems, and you can’t rely on these metrics to make critical decisions

In our previous blog post, we mentioned the adventure of cross-region replication with DynamoDB. We strongly recommend reading this blog if you need to replicate your data in DynamoDB across regions in order to build a highly available and fault tolerant system.

As mentioned in the previous blog, monitoring is a must to make sure that the whole replication process is working as expected. Thus, we should continuously perform the following in order to achieve minimum data loss in case of regional failures and to be ready to switch anytime.

*You have to be sure that monitoring metrics are reliable and up-to-date.*

[Continue reading...](https://engineering.opsgenie.com/handle-with-care-approximatecreationdatetime-of-dynamodb-streams-9124478f4af2)
