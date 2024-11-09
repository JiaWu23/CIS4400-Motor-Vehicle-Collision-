this is the diagrams

## Information Architecture:
-Gather Data: The dataset is the Motor Vehicle Collision from NYC Open Data Website;
-Temporary Storage: This is a step that where raw data is held before it processed 
-Clean Data: The clean data step is cleaned the missing data, remove erros, and correct the errors. 
-Reformat: During this stage, the data is reformatted to meet the requirments, such as converting data types, structuring the data, and etc
-Transform: the data will transform to create the nsights
-Process: The data is prepared forr its final form before loading to the data warehouse
-Loading: The data is ready to load into the data warehouse, put everything into db schema with facts and dimension
-Data Warehouse: The destination of the data, it's reeady to use for the analyze


## Data Architecture:
The Motor Vehicle Collision project's data architecture includes collecting collision data from the NYC Open Data website, temporarily storing it, and then processing it via steps of transformation, reformatting, and cleaning. A primary fact table with accident facts relates to dimension tables for attributes like date, location, vehicle type, and victims once this processed data has been imported into a data mart with a star schema. Lastly, dashboards and reports can be created thanks to the data mart's support for data visualization tools. Stakeholders may examine accident trends and make data-driven decisions for public safety thanks to this architecture's guaranteed effective data flow, optimized querying, and easily available insights.