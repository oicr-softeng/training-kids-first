---
title: Studies and Access
date_tdt: 2018-07-12T01:00:49.802Z
author: ''
layout: support_detail
permalink: /support/studies-and-access/
published: true
isPublic_b: true
bannerSentence_txt: Support
pageType_txt: support

---












### Overview

This page outlines each available dataset and release notes on the searchable and downloadable data in the Kids First Data Resource Portal. Users requesting access to controlled data are required to have an [eRA Commons](https://public.era.nih.gov/commons/public/login.do?TYPE=33554433&REALMOID=06-1edb031f-46c7-44b3-b803-60b537de74d2&GUID=&SMAUTHREASON=0&METHOD=GET&SMAGENTNAME=-SM-938PYmoLVb4VrDeXo04LZUDVDvc%2b3899ByInEAjuSUvWNIGfB2zRpWiCivYGCogG&TARGET=-SM-HTTPS%3a%2f%2fpublic%2eera%2enih%2egov%2fcommons%2f) account. Dataset authentication is managed by dbGaP or consortia Data Access Committees (DAC’s). To learn more about how to apply for data access, please review the [“Applying for Data Access”](https://kidsfirstdrc.org/support/studies-and-access/#applying-for-data-access) guide. 

We are continuously adding more data and working on quality improvements. As such, the data in the file repository may change as we work through known issues and improve our processing pipelines.

### Available Datasets

* <a href="#cbttc">Pediatric Brain Tumor Atlas - CBTTC</a>
* <a href="#marazita">Orofacial Cleft: European Ancestry</a>
* <a href="#schiffman">Ewing Sarcoma: Genetic Risk</a>
* <a href="#engle">Syndromic Cranial Dysinnervation</a>
* <a href="#seidman">Congenital Heart Defects</a>
* <a href="#rios">Adolescent Idiopathic Scoliosis</a>
* <a href="#chung">Congenital Diaphragmatic Hernia</a>

### Pediatric Brain Tumor Atlas: CBTTC <a name="cbttc"></a>
* **First Portal Release Date (beta):** June 18th, 2018
* **Data Types Available:**: 
  * Whole Genome Sequencing (WGS), RNA-Seq, Histology Images, Pathology Reports, Radiology Images, Radiology Reports, Operation Reports
* **Sequencing Center**: Various  
* **About the Study**: [CBTTC Website](https://cbttc.org/)
* **Data Access Committee:** CBTTC Data Access Committee
* **Applying for Access:**  [CBTTC Data Access Form](https://redcap.chop.edu/surveys/?s=A7M873HMN8)
* **DOI:** [10.24370/SD_BHJXBDQK](http://dx.doi.org/10.24370/SD_BHJXBDQK)
* **Known Data Issues:**
  * CBTTC clinical event data is collected in a way that associates a diagnosis to a biospecimen, most often a tumor. A participant can have multiple tumors over time that have different diagnoses. Currently, this data in the Kids First Data Resource Portal is being presented as a diagnosis being attached to the participant and the association between tumor and diagnosis is not being displayed. This issue is being worked on. In the meantime, a list of diagnoses and directly associated clinical events is available by emailing support@kidsfirstdrc.org.
* **Release Notes:**
 * 11/5/18:
    * Published major release to account for underlying data model changes to add method_of_sample_procurement on biospecimen and to make HPO terms searchable by their standard name alongside their code. 
 * 10/11/18:
    * Released data model change to move Consent Type from Participant to Biospecimen. 
 * 10/05/18:
    * Mapped the harmonized files created by the DRC to the source genomic files' sequencing experiment. This allows both source & harmonized files to be searchable when filtering on Experiment Strategy.
    * As part of the mapping of harmonized files to Sequencing Experiments for CBTTC, we have changed the sequencing experiment external IDs.
    * Imported 36 new harmonized files for 36 existing biospecimens. 
    * Associated Diagnoses for 21 tumor Biospecimens; the biospecimen - diagnoses relationships were previously missing. 
    * Corrected a mis-assigned aliquot ID for sample 7316-238-T-232096.WGS. 
    * Corrected the analyte type for 7316-14-N-8710.WGS from RNA to DNA.
  * 9/18/18:
    * Removed source Expression (rsem) files from the portal. We will be providing harmonized versions in the near future.
    * Removed the biospecimen/diagnosis association for diagnoses classified as “Pre Existing Medical Conditions” and “Cancer Predispositions”. These are associated to participants and not to specific biospecimens. 
    * Refreshed all diagnosis values from the CBTTC source databases as the clinical team continues to reclassify missing or “Other” diagnoses into defined buckets. This refresh also brought in more diagnosis values for the “Pre Existing Medical Conditions” and “Cancer Predispositions”.
    * Updated composition for 12 biospecimens to Derived Cell Line. They were previously set to Solid Tissue: 
7316-1746-T-365613.WGS, 7316-1746-T-365613.RNA-Seq, 7316-1763-T-365902.RNA-Seq, 7316-3058-T-548405.WGS, 7316-85-T-61659.WGS, 7316-85-T-61659.RNA-Seq, 7316-1763-T-365902.WGS, 7316-3058-T-548405.RNA-Seq, 7316-913-T-345474.WGS, 7316-913-T-345474.RNA-Seq, 7316-85-T-61659.WGS, 7316-85-T-61659.RNA-Seq
    * Set composition for 4 biospecimens to Plasma. They were previously set to Blood: 7316-931-P-345767.WGS, 7316-467-P-323685.WGS, 7316-883-P-344950.WGS, 7316-378-P-242813.WGS
    * Removed the following biospecimens and associated data files because potential tumor-normal mismatch issues have been identified are undergoing further QC review: 7316-471-T-323762.WGS, 7316-406-T-311440.WGS, 7316-2658-T-479078.WGS, 7316-878-T-344873.WGS, 7316-471-N-323754.WGS, 7316-406-N-311439.WGS, 7316-2658-N-479074.WGS, 7316-878-N-344866.WGS
    * Set source text anatomical site to “Central Nervous System” for external ID 7316-333-N-242258.WGS
  * 9/10/18: Initial versioned release of the Pediatric Brain Tumor Atlas. CBTTC data are made publicly available pre-publications under the above DOI with processed data available on [PedCBioPortal](https://pedcbioportal.org/study?id=aptad_cbttc%2Catrt_cbttc%2Ccnc_cbttc%2Cchdm_cbttc%2Ccpc_cbttc%2Ccpp_cbttc%2Ccranio_cbttc%2Cdipg_cbttc%2Cdnt_cbttc%2Cepmt_cbttc%2Cgng_cbttc%2Cgmn_cbttc%2Cgnos_cbttc%2C5b934269e4b0185134fb4aff%2Clch_cbttc%2Cmpnst_cbttc%2Cmbl_cbttc%2Cmng_cbttc%2Cbmgct_cbttc%2Cnfib_cbttc%2Codg_cbttc%2Cother_cbttc%2Cphgg_cbttc%2Cplgg_cbttc%2Cpbl_cbttc%2Cpcnsl_cbttc%2Cpnet_cbttc%2Cschw_cbttc%2C5b9342a3e4b0185134fb4b01%2Ctt_cbttc#summary).

### Orofacial-Cleft:-European-Ancestry <a name="marazita"></a>
* **First Portal Release Date (beta):** June 18th, 2018
* **Data Types Available:**: Aligned Reads, gVCFs
* **Sequencing Center**: Washington University with harmonized data generated by the DRC  
* **About the Study**: [NIH X01 Project Abstract - Mary Marazita, PI](https://commonfund.nih.gov/kidsfirst/x01projects#Marazita)
* **Data Access Committee:** Joint NIAMS-NIDCR Data Access Committee
* **Applying for Access:**  [phs001168 dbGaP Study Page](https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/study.cgi?study_id=phs001168)
* **Known Data Issues:**
  * There is an external sample ID mismatch between dbGaP and the Kids First DRP. dbGaP sample PA1985 really should be PA1985B. Because of this, users cannot download this file from the Kids First Data Resource Portal at this time. 
* **Release Notes:**
 * 11/5/18:
    * Originally IA3006 was proband with parents IA3004 and IA3005. Now,  IA3004 is proband with parents IA3005 and IA3006
    * Published major release to account for underlying data model changes to add method_of_sample_procurement on biospecimen and to make HPO terms searchable by their standard name alongside their code.  
* 10/11/18:
    * Released data model change to move Consent Type from Participant to Biospecimen. 
 * 10/05/18:
    * Mapped the harmonized files created by the DRC to the source genomic files' sequencing experiment. This allows both source & harmonized files to be searchable when filtering on Experiment Strategy.
  * 9/18/18:
    * Removed the following biospecimens due to QC issues found during genomic data review.
      * External Participant &  Sample ID -> Exclusion Reason
      * MD0031 -> Uncertain Identity of samples 
      * MD0032 -> Uncertain Identity of samples 
      * MD0033 -> Uncertain Identity of samples 
      * MD0280 -> Uncertain Identity of samples 
      * MD0281 -> Uncertain Identity of samples 
      * MD0282 -> Uncertain Identity of samples 
      * PA2063 -> Uncertain identity of sample 
      * PA2027 -> Uncertain identity of sample
      * PA2200 -> High missing rate 
      * PA2254 -> Duplicate of another sample
      * IA2650 -> Uncertain identity of samples
      * IA2651 -> Uncertain identity of samples
      * IA2652 -> Uncertain identity of samples
      * IA2836 -> Uncertain identity of samples
      * IA2837 -> Uncertain identity of samples
      * IA2838 -> Uncertain identity of samples
      * IA4062 -> High missing rate
      * MD3181 -> High Het/Hom ratio
      * IA4019 -> High missing rate
      * IA4022 -> High missing rate
      * IA3038 -> Definitely unrelated to offspring
      * IA4054 -> High missing rate
  * 9/10/18: Initial versioned release of this study as part of the Kids First Data Resource Center. Latest dbGaP release notes found [here.](ftp://ftp.ncbi.nlm.nih.gov/dbgap/studies/phs001168/phs001168.v1.p1/release_notes/Release_Notes.phs001168.GMKF_GMKF_OrofacialCleft.v1.p1.MULTI.pdf)

### Ewing Sarcoma: Genetic Risk <a name="schiffman"></a>
* **First Portal Release Date (beta):** June 18th, 2018
* **Data Types Available:**: Aligned Reads, gVCFs
* **Sequencing Center**: Washington University with harmonized data generated by the DRC  
* **About the Study**: [NIH X01 Project Abstract - Joshua Schiffman, PI](https://commonfund.nih.gov/kidsfirst/x01projects#Schiffman)
* **Data Access Committee:** NCI DAC
* **Applying for Access:**  [phs001228 dbGaP Study Page](https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/study.cgi?study_id=phs001228)
* **Known Data Issues:**
  * None at this time.
* **Release Notes:**
 * 11/5/18:
    * Published major release to account for underlying data model changes to add method_of_sample_procurement on biospecimen and to make HPO terms searchable by their standard name alongside their code. 
 * 10/11/18:
    * Released data model change to move Consent Type from Participant to Biospecimen. 
 * 10/05/18:
    * Mapped the harmonized files created by the DRC to the source genomic files' sequencing experiment. This allows both source & harmonized files to be searchable when filtering on Experiment Strategy.
  * 9/18/18: Updated Participant consent types to align with dbGaP.
  * 9/10/18: Initial versioned release of this study as part of the Kids First Data Resource Center. Latest dbGaP release notes found [here.](ftp://ftp.ncbi.nlm.nih.gov/dbgap/studies/phs001228/phs001228.v1.p1/release_notes/Release_Notes.phs001228.GMKF_EWS.v1.p1.MULTI.pdf)

### Syndromic Cranial Dysinnervation <a name="engle"></a>
* **First Portal Release Date (beta):** August 23rd, 2018
* **Data Types Available:**: Aligned Reads, gVCFs
* **Sequencing Center**: Baylor College of Medicine with harmonized data generated by the DRC  
* **About the Study**: [NIH X01 Project Abstract - Elizabeth Engle, PI](https://commonfund.nih.gov/kidsfirst/x01projects#Engle)
* **Data Access Committee:** Kids First DAC 
* **Applying for Access:**  [phs001247 dbGaP Study Page](https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/study.cgi?study_id=phs001247)
* **Known Data Issues:**
  * None at this time.
* **Release Notes:**
 * 11/5/18:
    * Published major release to account for underlying data model changes to add method_of_sample_procurement on biospecimen and to make HPO terms searchable by their standard name alongside their code. 
 * 10/11/18:
    * Released data model change to move Consent Type from Participant to Biospecimen. 
 * 10/05/18:
    * Mapped the harmonized files created by the DRC to the source genomic files' sequencing experiment. This allows both source & harmonized files to be searchable when filtering on Experiment Strategy.
  * 9/18/18:
    * Fixed participant with missing family ID. PT_BX9B2A7T now has the correct family ID.
    * Updated participant consent types to align with dbGaP.
  * 9/10/18: Initial versioned release of this study as part of the Kids First Data Resource Center. Latest dbGaP release notes found [here.](ftp://ftp.ncbi.nlm.nih.gov/dbgap/studies/phs001247/phs001247.v1.p1/release_notes/Release_Notes.phs001247.GMKF_CDD.v1.p1.MULTI.pdf)

### Congenital Heart Defects <a name="seidman"></a>
* **First Portal Release Date (beta):** June 18th, 2018
* **Data Types Available:**: Aligned Reads, gVCFs
* **Sequencing Center**: Baylor College of Medicine with harmonized data generated by the DRC  
* **About the Study**: [NIH X01 Project Abstract - Christine Seidman, PI](https://commonfund.nih.gov/kidsfirst/x01projects#Seidman)
* **Data Access Committee:** Kids Fist DAC
* **Applying for Access:**  [phs001138 dbGaP Study Page](https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/study.cgi?study_id=phs001138)
* **Known Data Issues:**
  * None at this time. 
* **Release Notes:**
 * 11/5/18:
    * Published major release to account for underlying data model changes to add method_of_sample_procurement on biospecimen and to make HPO terms searchable by their standard name alongside their code.  
* 10/11/18:
    * Released data model change to move Consent Type from Participant to Biospecimen. 
 * 10/05/18:
    * Mapped the harmonized files created by the DRC to the source genomic files' sequencing experiment. This allows both source & harmonized files to be searchable when filtering on Experiment Strategy.
  * 9/18/18:
    * The study was successfully decoupled from its parent study. As part of this, the data is now downloadable from the portal for those who have been granted dbGaP access.
    * Updated participant consent types to align with dbGaP.
  * 9/10/18: Initial versioned release of this study as part of the Kids First Data Resource Center.

### Adolescent Idiopathic Scoliosis <a name="rios"></a>
* **First Portal Release Date:** October 12th, 2018
* **Data Types Available:**: Aligned Reads, gVCFs
* **Sequencing Center**:  Hudson Alpha with harmonized data generated by the DRC
* **About the Study**: [NIH X01 Project Abstract - Jonathan Rios, PI](https://commonfund.nih.gov/kidsfirst/x01projects#Rios16)
* **Data Access Committee:** Kids First DAC
* **Applying for Access:**  [phs001410 dbGaP Study Page](https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/study.cgi?study_id=phs001410)
* **Known Data Issues:**
  * None at this time. 
* **Release Notes:**
 * 11/5/18:
    * Published major release to account for underlying data model changes to add method_of_sample_procurement on biospecimen and to make HPO terms searchable by their standard name alongside their code. 
 * 10/11/18:
    * Initial portal release

### Congenital Diaphragmatic Hernia <a name="chung"></a>
* **First Portal Release Date (beta):** June 18th, 2018
* **Data Types Available:**: Aligned Reads, gVCFs
* **Sequencing Center**: Baylor College of Medicine with harmonized data generated by the DRC  
* **About the Study**: [NIH X01 Project Abstract - Wendy Chung, PI](https://commonfund.nih.gov/kidsfirst/x01projects#Chung)
* **Data Access Committee:** NICHD-DAC
* **Applying for Access:**  [phs001110 dbGaP Study Page](https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/study.cgi?study_id=phs001110)
* **Known Data Issues:**
  * This study is currently missing some phenotypic & clinical data. We are currently working on curating it.
* **Release Notes:**
 * 11/5/18:
    * Published major release to account for underlying data model changes to add method_of_sample_procurement on biospecimen and to make HPO terms searchable by their standard name alongside their code. 
 * 10/11/18:
    * Released data model change to move Consent Type from Participant to Biospecimen. 
 * 10/05/18:
    * Mapped the harmonized files created by the DRC to the source genomic files' sequencing experiment. This allows both source & harmonized files to be searchable when filtering on Experiment Strategy.
    * There are 12 participant/biospecimen IDs that have changed since the last release of this study. However, the old IDs are still referenced on dbGaP. Thus, in this release the `External Sample Id` and `External Aliquot Id` fields on biospecimen will refer to the old IDs. The `External Id` field on other clinical entities such as participant, family_relationship, diagnosis, phenotype, and outcome refer to/contain the new IDs. Once dbGaP is updated with the new IDs, the biospecimen `External Sample Id` and `External Aliquot Id` fields will be updated.
      * Old: 216 / New: CDH216
      * Old: 217 / New: CDH217
      * Old: 319 / New:  CDH319
      * Old: 320 / New: CDH320
      * Old: 549 / New: CDH549
      * Old: 576 / New:  CDH576
      * Old: 01-0218 / New: CDH218
      * Old: 01-0318 / New: CDH318
      * Old: 01-0577 / New: CDH577
      * Old: 05-0015 / New: CDH05-0015
      * Old: 5-15F / New: CDH5-15F
      * Old: 5-15M / New: CDH5-15M

  * 9/18/18: 
    * Assigned all pro bands “Congenital diaphragmatic hernia” as a diagnosis. Previously, no diagnoses were assigned.
    * Added proband label to the children in the trios.
    * Updated participant consent types abbreviations. 
  * 9/10/18: Initial versioned release of this study as part of the Kids First Data Resource Center. Latest dbGaP release notes found [here.](ftp://ftp.ncbi.nlm.nih.gov/dbgap/studies/phs001110/phs001110.v1.p1/release_notes/Release_Notes.phs001110.GMKF_CDH.v1.p1.MULTI.pdf)

### Known Data Issues
**Last Updated:** 9/7/18

Below is a list of known data issues that we are actively working to resolve.

* **HPO Values:** Some HPO values may be missing or incorrectly assigned. We are actively reviewing and QCing these across all studies.
* **Future Use Facets:** The following facets are available in the portal but are in development for future use and may not have valid values at this time:
  * Alias Group
  * Availability
  * ICD ID Diagnosis
  * HPO Observed/Not Observed
  * Release Status
  * Shipment Date
  * Shipment Origin
  * SNOMED Observed/Not Observed
  * Spatial Descriptor (Biospecimen)
  * Spatial Descriptor (Diagnosis)
  
  
  
  
### Notice an issue?
We are continuously looking for feedback on how to make the data on the Kids First DRP more searchable and usable to the community. If you notice an issue, have a question or want to provide a suggestion, please use the feedback widget within the portal or email us at <a href="mailto:support@kidsfirstdrc.org">support@kidsfirstdrc.org</a>.

## Access Data

### Data Access Levels

The Kids First DRC supports three different data access tiers. 
[IMAGE__images/f15bd450-bda9-11e8-83c8-59ef3dddab18.md]


### NIH Trusted Partner Environment

A “**trusted partner**” is defined as a public or private, national or international organization that is able to meet core [NIH standards](https://osp.od.nih.gov/wp-content/uploads/Trusted_Partner_Checklist.pdf) for establishing data quality and data management service protocols for NIH, based on the programmatic need of an NIH funding Institute or Center (IC)

**Bionimbus** is a **trusted partner** that is cloud-agnostic, operated by the University of Chicago, and is powered by the Gen3 software stack

Bionimbus fulfills the DRC’s **Data Distribution** roles in support of the NIH’s current genomic data sharing policies:

* *Data will be maintained through controlled access:*
  * *A. Permission to access data will be requested through NIH Data Access Committees, per NIH-prescribed processes for the institutional certification of data sharing requests*
  * *B. Standard telemetry will be used to communicate with NIH systems for authenticating Approved Users through the dbGaP data request process*


### Linking your eRA Commons Account to Gen3 & the Portal

To analyze data on Cavatica or to download genomic files locally, you must link your Kids First DRC Account to Gen3 via your eRA Commons login.

1. Sign into your Kids First DRC Portal account.
2. Navigate to Settings from the upper right-hand corner drop down, under your name.
3. Under settings, scroll down to the Integrations section. Locate Gen3 Data Commons. Click Connect.
[IMAGE__images/support-integrations-connect.md]
4. You will be directed to https://auth.nih.gov/ to sign in. Providing your eRA Commons credentials will redirect you back to the Portal and complete your Gen3 integration.

### Applying for Data Access

Access to controlled access data requires authorization from the appropriate Data Access Committee (DAC). While most dataset access within the Kids First DRC is granted through dbGaP, there are some datasets whose access is reviewed & granted through consortia DAC’s. Please reference the datasets above for their specific access management information. For any questions on how to apply for dbGaP access, please visit their page [here](https://dbgap.ncbi.nlm.nih.gov/aa/wga.cgi?page=login "dbGap Questions for Application Link"). 

