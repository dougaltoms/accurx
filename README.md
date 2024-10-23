## Accurx Analaytics Engineer Task
---
- ❄️ Snowflake Instance: https://app.snowflake.com/qgexdqj/lp72831/#/homepage
- 👤 Users: `BETH` & `FRAN`
- 🔐 Passwords: Reset on login
- 📁 Database: `ACCURX` 

### Table of contents
1. [Business Context](#BusinessContext)
2. [Questions](#Questions)
3. [Conceptual Data Model](#ConceptualDataModel)
4. [Physical Data Model](#PhysicalDataModel)
5. [Solution Design Overview](#SolutionDesignOverview)
    - [Power BI Report](#PowerBIReport)
    - [Streamlit Predictive Analytics](#StreamlitPredictiveAnalytics)
6. [Next Steps](#NextSteps)

### Business Context <a name="BusinessContext"></a>
The Data team have been receiving multiple ad-hoc requests from colleagues in the Commercial team around access and usage of our product features. Each of these requests have been answered with one-off queries to our Snowflake warehouse. Many of our contracts are due for renewal in the next few months and we therefore expect the volume of these queries to increase significantly.

### Questions <a name="Questionss"></a>
1. How many customers and users currently have access to a particular feature?
2. Which features did an individual customer have access to on a given week?
3. Which customers are using their features the least, and which are using them the most?
4. They have identified a customer who has used a feature that they don’t pay for. How often does this happen and why?
5. Do we experience churn of any features?

### Conceptual Data Model <a name="ConceptualDataModel"></a>
Aims to understand key data entities and how they are related.

![alt text](https://github.com/dougaltoms/accurx/blob/main/images/cdm.png?raw=true)

### Physical Data Model <a name="PhysicalDataModel"></a>
**Star Schema**
- *Simple* - intuitive for business users
- *Future proof* - can add new dimensions e.g. this model could be enriched with location data `DIM_GEOG`
- *Scalable*  - dimensions are independent e.g. As NHS organisations evolve and change, so can the `DIM_ORG` table

![alt text](https://github.com/dougaltoms/accurx/blob/main/images/pdm.png?raw=true)

### Solution Design Overview <a name="SolutionDesignOverview"></a>
High level data flow showing ingestion into Snowflake from source systems, logical separation of transformations by schemas and downstream reporting systems (Power BI & Streamlit)

![alt text](https://github.com/dougaltoms/accurx/blob/main/images/flow.png?raw=true)

##### Power BI Report <a name="PowerBIReport"></a>
*BI Subteam* can work with Commercial team to build internal report answering Qs 1-5. The provided data model enables self-service, meaning views can be built ad-hoc in Snowflake `04_PRESENTATION` schema by the BI team or business users

##### Streamlit Predictive Analytics <a name="StreamlitPredictiveAnalytics"></a>
*Data Science and Analytics subteam* can prototype some predictive analytics and forecasting, using Snowflake out-of-the-box models from Cortex. Combined with Streamlit, this can provide the business with an interactive UI, helping them to explore data and gain new insights

### Next Steps <a name="NextSteps"></a>
Difficulties faced with this task:
- Fully understanding business logic and context of data
- Time limitations meant I couldn't deep-dive into code

With more time to work on this solution I would:
- Build a logical data model
- Build views in Snowflake to answer questions 1-5
- Mock up a Power BI / Streamlit dashboard to demo
- Think about object types in Snowflake to optimise queries (e.g. view/materialized view/dynamic table)

