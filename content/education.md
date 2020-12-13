---
title: "Education"
date: 2020-12-12T16:23:41+03:00
draft: false
---

### Hacettepe University / Computer Engineering - MS @2018

**Thesis Topic: A Load Balancing Algorithm for Distributed Stream Processing Engines**

[Read the article](../files/article-dkg.pdf "A Load Balancing Algorithm for Distributed Stream Processing Engines")

**Abstract:**
With the technological age we are in, technological devices are an indispensable part of our life. Every day, variety of devices, applications and number of users are also increasing. All these increases cause a huge grow of data produced and so the variety of data. The volume and the variety of the produced data is so increased that it is no longer possible for single machine to handle alone. On the other hand, requirements force us to process data in real-time. Therefore, cluster of machines is used for high efficiency, fault-tolerant and robust systems. By using a cluster, we aim to process all data as soon as possible by distributing the data to all nodes in the cluster. In order to achieve this, the data or the load should be distributed to the machines as equally as possible. Unbalanced distribution of the load means that a number of machines will work more intensively than others, and thus each machine will not be used efficiently. Reduced productivity and efficiency leads the increase of latency and decrease of throughput. Therefore, the system cannot produce real-time results. In such systems, balancing the load to the machines is directly connected to the contents of the data. The more homogeneous the data, the more balanced the load is, the more skewed it will be distributed unevenly. Shuffle Grouping (SG) is the best option when there is no relation between the data incoming. On the other hand, when there is a relation between the incoming data, the best option is Key Grouping (KG) which assigns the incoming data to the target machines by examining the data content. While the data is distributed to machines randomly by using Round-Robin with Shuffle Grouping, the data is distributed to machines by calculation a hash value for each data with Key Grouping. Therefore, related data can be gathered in the same machine and there is no need to aggregate from several machines. However, both of the grouping methods may become useless and inefficient depending on the data. When there is a relation between the data incoming, Shuffle Grouping cannot be used efficiently, because Shuffle Grouping does not care about the content of incoming data. On the other hand, when the data is skewed, Key Grouping routes the skewed data to the only one machine and most of the load will be concentrated on single machine. In other words, the more the data is skewed, the more inefficient load balancing occurs. This also leads inefficiency, more latency, less throughput and non-real-time results. Partial Key Grouping (PKG), on the other hand, specifies two target machines by calculating two different hash values and chooses the less loaded one for efficient load balancing. With Partial Key Grouping, every data can be distributed to two different machines. Even if the data is slightly skewed, system may have better performance and better load balancing than Key Grouping. However, if the data is so skewed and some of the data is recurring so many times, even Partial Key Grouping may show bad performance. Highly skewed load would be distributed to only two machines, thus, other machines in the cluster would have far less load to process and this leads to inefficiency and performance issues. On the other hand, this method, Partial Key Grouping, does not guarantee the two calculated hash values for one data will be different. In all these conditions, the efficiency and performance of the system must be consistently high regardless of the content of the data. In this study, Dynamic Key Grouping (DKG) method is proposed to distribute the load to the machines at all times regardless of the data content. With this method, skewed data are detected and can be distributed to more servers. Moreover, improvements were observed in the throughput and latency of the system, especially when the data is highly skewed and very successful results were obtained.


---
### Hacettepe University / Computer Engineering - BS @2010

**Senior Project:** Real-Time Hand Recognition (Image Processing)

[Read the article](../files/article-hand-recognition.pdf "Real-Time Hand Recognition")

**Abstract:**
This article provides an example of a project developed using real-time image processing techniques. Within the scope of the project, 2-dimensional images were processed and hand tracking was made by distinguishing the skin color. The project was first run on still images and then modeled in real time at the later development stage. When operating in real time, hardware requirements and powerful computers were required. The project was developed on high hardware computers with Intel I7 processors and 640x480 images were worked on.


---
