

## The Pipe Line

1. **Collecting the data**: Receive the data from each source. This is the Extraction step. 
For example, we may load the titles and characteristics of books from several sources.

2. **Cleaning**: Remove duplicates and invalid data. This is part of the Transformation 
step. In this step, we would remove any duplicated book titles.

3. **Enhancing**: Add new attributes to the existing data. Again, this is an example of a 
Transformation step. We may, for example, add a new characteristic called media_count 
defined by the number of different media formats in which this title 
exists (audio, paperback, hardcover, e-book, etc).

4. **Storing**: Load the processed data into the data warehouse. This is the Load step. 
In our books example, we would store the books inside the data warehouse.

This simple pipeline idea consists of an **ETL** process: extract, transform and load.


About Data Lakes and Data Werehouse:

* Data lakes store data from different sources in raw form.
  * Data lakes typically store the data in its raw form. 
  This allows consumers to use the data in any way they please.
* Data warehouses store curated data from many sources.
  * Data warehouses will typically give some (or a lot of) structure 
  to the data before storing and making it available for consumers.


How large volumes of data can be stored
The goal of data lakes and data warehouses
The problems created by trying to centralize storage and contr


Data Product vs Data as a Product

We tend to abbreviate the idea of Data as a Product to "data product." As you can see from 
the article [Data as a product vs data products. What are the differences?](https://towardsdatascience.com/data-as-a-product-vs-data-products-what-are-the-differences-b43ddbb0f123), 
the two terms do have different meanings; however, this is not relevant in our situation.

In the data mesh context, we will be using the term "data product" to refer to the entity 
that transforms data and is treated as a product. Remember, terms have different meanings 
in different contexts, or even in the same context for different people. What is vital is 
that you understand the reasoning behind the usage of such terms. With that understanding, 
you'll be able to converse with others and align different perspectives on the same concept.

Product and platform Team

Because a distributed system based on the data mesh principles is built on top of a 
platform, it is natural that a team will be focused on the development and maintenance of
that platform. This is the platform team, which consists of many roles, 
including data engineers. These teams will develop a platform that is domain agnostic.

Meanwhile, product teams require domain knowledge and are expected to have fewer
(but not necessarily zero) members involved in understanding and handling the usage of the 
platform. They still might have data engineers, for example, or at least some knowledge of 
those aspects.


The concept of Data as a Product
Input and output ports
How to think about data products


https://www.thoughtworks.com/en-us/about-us/events/webinars/core-principles-of-data-mesh/data-mesh-and-governance

Tools.

Scala
Apache Spark
Apache Kafka
Apache Atlas
Apache Parquet file


As we create distributed Data Products, we have to face the new problems that arise. 
The Data Mesh architecture envisioned by Zhamak Dehghani tries to solve them through the use of four principles.

The aim of the four principles is to solve the problems of a distributed approach, as well as others that exist in centralized architectures.


As we create distributed Data Products, there must be a communication standard within and between domains - something that a Data Mesh architecture requires.

One of the principles for a Data Mesh architecture, as envisioned by Dehghani, is to have federated governance.
In the words of Andrew Tanenbaum, “The good thing about standards is that there are so many to choose from.” 
The idea is to provide proper and enough modes of access that all output ports will use.


https://courses.alura.online/certificate/2ed44f69-03b2-4f2b-856d-105f94194f69
