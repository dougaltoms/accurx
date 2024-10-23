## Accurx Analaytics Engineer Task
---
- ❄️ Snowflake Instance: https://app.snowflake.com/qgexdqj/lp72831/#/homepage
- 👤 Users: `BETH` & `FRAN`
- 🔐 Passwords: Reset on login
- 📁 Database: `ACCURX` 

### Table of contents
1. [Business Context](#Business Context)
2. [Questions](#Questions)
3. [Conceptual Data Model](#Conceptual Data Model)
4. [Physical Data Model](#Physical Data Model)
5. [Solution Design Overview](#Solution Design Overview)
    - [Power BI Report](#Power BI Report)
    - [Predictive Analytics](#Predictive Analytics)
6. [Next Steps](#Next Steps)

### Business Context <a name="Business Context"></a>
The Data team have been receiving multiple ad-hoc requests from colleagues in the Commercial team around access and usage of our product features. Each of these requests have been answered with one-off queries to our Snowflake warehouse. Many of our contracts are due for renewal in the next few months and we therefore expect the volume of these queries to increase significantly.

### Questions <a name="Questions"></a>
1. How many customers and users currently have access to a particular feature?
2. Which features did an individual customer have access to on a given week?
3. Which customers are using their features the least, and which are using them the most?
4. They have identified a customer who has used a feature that they don’t pay for. How often does this happen and why?
5. Do we experience churn of any features?

### Conceptual Data Model <a name="Conceptual Data Model"></a>
Aims to understand key data entities and how they relate.

![alt text](https://github.com/dougaltoms/accurx/blob/main/images/cdm.png?raw=true)

### Physical Data Model <a name="Physical Data Model"></a>
**Star Schema**
- *Simple* - intuitive for business users
- *Future proof* - can add new dimensions e.g. this model could be enriched with location data `DIM_GEOG`
- *Scalabile*  - dimensions are independent e.g. As NHS organisations evolve and change, so can the `DIM_ORG` table

![alt text](https://github.com/dougaltoms/accurx/blob/main/images/pdm.png?raw=true)

### Solution Design Overview <a name="Solution Design Overview"></a>
High level data flow showing ingestion into Snowflake from source systems, logical separation of transformations by schemas and downstream reporting systems (Power BI & Streamlit)

![alt text](https://github.com/dougaltoms/accurx/blob/main/images/flow.png?raw=true)

##### Power BI Report <a name="Power BI Report"></a>

##### Predictive Analytics <a name="Predictive Analytics"></a>

### Next Steps <a name="Next Steps"></a>

