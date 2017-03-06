# hk-society
It is a projects run in Open Data Hackathon 2017 in Hong Kong.
The original idea and source data are contributed by Brian Leung.
Other teammates Horace Tang and Jason Lam contribute the part of data processing and visualization.

Data Source:
- A list of Hong Kong Society is uploaded to the website by Hong Kong Police monthly and replaced the older one.
- The format of documnet is in PDF format and it needs to be transferred to machine readable format (e.g. csv, sql...)

Existing work:
- Source data is processed with PHP to structure format such that it is stored into SQL database
- The wordings from society name are extracted and analyze the frequency of occurrence 
- Visualize the location of Chinese societies in google map


We wish to open source this project to:
- Build up a database hosting in network
- More attributes data is prepared to integrated with other datasets (e.g. district, address..)
- Keep update the data as well as data quality
- Analyze the relationship between the Hong Kong society
- Visualize the society in forms of their nature
- Recommendation to citizens which societies they are suitable to join
