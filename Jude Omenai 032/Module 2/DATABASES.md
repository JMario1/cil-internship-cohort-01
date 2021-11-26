## DATABASE USECASE COMPARISON

### Use Cases for Relational Database
- Online Transaction application (OLTP) due to it fast update and reterivsl time.
- Edge devices for internet of things (IoT) that require lightweight databases.
- Data warehousing where historical data need to be analyze for business insight.
- Application where  structure data analysis is needed.
- Application that need to enforcce good database security measures.


### Use Cases for NoSQL Database
- Application where zero Downtime is essential as there is no migration downtime.
- Apllication with real-time/ near real-time processing big data processsing.
- Application whose data model is flexible and change constantly.
- Content management/social interaction application as it can handle structured, semi-structured and unstructured data.
- Mobile/Web application with very large distributed users, as it's easily scales out horizontally.
- Use for data caching and archiving.


### Use Cases for Hierarchical Database
- Application that need to maintain data context.
- Apllication with hierarchical structure like libraries, healthcare systems.
- Application that need to preserve employer - employee structure.


### Use Cases for Object-Oriented Database
- Application with highly complex data types as it easier to store as object.
- Application with deep object structures that need to be maintained
- Embedded application with limited resource for ORM overhead
- Application where the object persistence is require


### Use Cases for Network Database
- It is great with application with a lot of many to many relationship.
- Application that require that all data has an owner.


| Use Cases                                                     | Relational Database | NoSQL Database | Object-Oriented  Database |
|---------------------------------------------------------------|---------------------|----------------|---------------------------|
| Application where the data are structured                     | best                | better         | good                      |
| Application with no particular data schema                    | poor                | best           | poor                      |
| Application with real time data processing                    | better              | best           | good                      |
| Critical application where database downtime is costly        | good                | best           | better                    |
| Social media interaction (feeds)                              | better              | best           | good                      |
| Application where data relationship to be maintain            | best                | poor           | better                    |
| Application where high transaction consistency is needed      | best                | good           | good                      |
| Application a highly complex objects                          | good                | better         | best                      |
| Application that require object persistence after termination | poor                | poor           | best                      |

