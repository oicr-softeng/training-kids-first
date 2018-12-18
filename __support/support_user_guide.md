---
layout: support_detail
title: User Guides
bannerSentence_txt: Support
permalink: /support/user-guide/
published: false
isPublic_b: false
pageType_txt: support

---


## Getting Started


### Quick Start

Users can get started in the Kids First DRC Data Portal in three easy steps:

1. Register for the Kids First DRC Data Portal and complete your online profile.
2. Browse and search through clinical & phenotypic data in the File Repository to build a cohort of interest.
3. Push your dbGaP authorized genomic files to Cavatica (or download) to begin your analysis on the data.


### Portal Registration

Per the DRC’s [data access](/support/user-guide/#access-data) guidelines, users are required to register in order to browse the clinical and phenotypic data. The Kids First DRC Portal currently supports login integration with popular platforms Facebook and Google. 
[IMAGE__images/support-resource-portal.md]

We plan on adding additional login integrations very soon. However, for now, users are required to link either a google-enabled account such as a gmail account or their Facebook profile in order to register. 

Don’t have Facebook or a Google account or don’t want to link a personal email address to your Portal account? Don’t worry - you needn’t have to create another email address. You can register an existing email address (such as a school or organizational email) with Google [here](https://accounts.google.com/signin/v2/identifier?hl=en&passive=true&continue=https%3A%2F%2Fwww.google.com%2F%3Fgws_rd%3Dssl&flowName=GlifWebSignIn&flowEntry=ServiceLogin "Portal Registration - Link to Google Registration"). 

Make sure you select the option to use an existing email address.
[IMAGE__images/support-email.md]

Then, complete the form with your existing email address.

[NOTE_START]

**Note:** The Kids First DRC Portal is currently in an early-access beta phase that requires our support team to pre-approve access. If you attempt to login and receive a message about not being able to register (image below), please contact [support@kidsfirstdrc.org](mailto:support@kidsfirstdrc.org "Portal Registration Note - Email to KidsFirst Support") so we can pre-approve your access.

[NOTE_END]


[WARNING_START]

The Kids First DRP is currently in the internal review phase and is not accessible for beta testing. Please contact a Kids First administrator if you have registered for internal review and are not able to log in.

[WARNING_END] 


### Adding Profile details and a Profile Picture

Profile pictures are integrated with the global online profile picture platform, Gravatar. To add your profile picture, you will need to integrate your Portal profile with Gravatar using the same email address that you used for registration.

To edit your profile data and profile image:

1. Click edit underneath your name. This will bring up a box to edit your basic profile information. 
2. To add a profile picture, click on the button that says “Change Gravatar”. You will be redirected to Wordpress & Gravatar’s website to complete the profile picture set up process.
3. Once you have set up & selected a profile picture within the Gravatar platform, navigate back to your DRC Portal Profile and refresh the page to see your new profile picture.
[IMAGE__images/change-gravitar.md]


### Connecting to Gen3/eRA Commons

In order to work with controlled access data on Cavatica or download the genomic files for those which you’ve been granted access to, users will need to connect their Kids First DRC Portal with Gen3 - the NIH Trusted Partner platform for data access. This involves linking your eRA Commons account with Gen3 and the Portal. 

For a step by step on how to do this and other information about Data Access, see the Data Access user guide [here](/support/user-guide/#access-data "Connecting to Gen3/eRA - Link to Data Access").


### Connecting to Cavatica

In order to analyze Kids First data on Cavatica, you will need to link your Cavatica account & an API token with your Portal profile. Please see the Analyzing Data user guide [here](/support/user-guide/#linking-your-cavatica-account "Connecting to Cavatica - Link to Analyzing Data") for information on how to connect your account.



## Access Data


### File Repository

The File Repository section is the primary method of accessing data in the Kids First Data Portal. It provides an overview of all cases and files available in Kids First and offers users a variety of filters for identifying and browsing participants and files of interests. Users can access the File Repository section from the Kids First Data Portal top menu bars.

#### Filter/Facets

On the left, a panel of data facets allows users to filter participants and files using a variety of criteria. If facet filters are applied, the table on the right will display information about matching participants and files. If no filters are applied, the table on the right will display information about all available data. 

When the user applies filters, a banner appears above the table displaying the active filters that have been applied and provides access to share and save the query for later reference. 

#### Filters Panel

Filters represent properties of the data that can be used for narrowing down the data. The filter panel on the left allows users to filter the participants and files presented in the table on the right. 

By default the filter panel shows the following categories:

| Category  | Description | 
|:----------|:-----|
| {::nomarkdown}<h4>Family Analysis</h4><ul><li>Composition</li><li>Common Data Type</li><li>Phenotype</li><li>Is a Proband</li></ul>{:/}   |  <br> {::nomarkdown}<ul><li>Individual participants with corresponding family data such both a mother and father</li><li>Individual participants whose family members have submitted the same file data types</li><li>Individual participants whose family members share, or do not share the same phenotype</li><li>Individual participants who are the main patient under investigation or review</li></ul>{:/}|
|{::nomarkdown}<h4>Primary Site</h4>{:/}|{::nomarkdown}<ul><li>Anatomical site of the cancer or structural birth defect under investigation or review</li></ul>{:/} |
|{::nomarkdown}<h4>Disease Type</h4>{:/}|{::nomarkdown}<ul><li>Type of cancer or structural birth defect studied</li></ul>{:/} |
|{::nomarkdown}<h4>Demographic</h4><ul><li>Age at last followup </li><li>Gender</li><li>Ethnicity</li></ul>{:/} | <br>{::nomarkdown}<ul><li>Participant age at the time of the last followup</li><li>Participant gender</li><li>Participant ethnicity</li></ul>{:/} |
| {::nomarkdown}<h4>File Properties</h4><ul><li>Experimental Strategy</li><li>Modified between</li><li>Data format </li><li>Data Type</li></ul>{:/} | <br>{::nomarkdown}<ul><li>Experimental strategies used for molecular characterization of the cancer and/or birth defect</li><li>When the file was last modified</li><li>Data file format, such as "Submitted aligned reads" or "Simple nucleotide variation"</li><li>Data file type, such as "bam" or "fastq"</li></ul>{:/}  |

<!-- Think of a better way to do this -->

### Advanced Filter Search 

The File Repository section provides access to additional data filters beyond those listed above. Filters corresponding to additional properties listed in the Kids First Data Dictionary can be added using the ALL FILTERS button available at the top of the filter panel. 
[IMAGE__images/file-repository.md]

The button open a search window that allows the user to find an additional filter by name or value. Not all filters have values available for filtering; checking the “Show only fields with values” checkbox will limit the search results to only those that do. 


### Downloading Data

While browsing the Kids First Data Portal, files can either be downloaded individually from file detail pages or collected in the file cart to be downloaded as a bundle. Clicking on the shopping cart icon that is next to any item will add the item to your cart.


### Data Access Levels

The Kids First DRC supports three different data access tiers. 
[IMAGE__images/support-tiers.md]


### Kids First as an NIH Trusted Partner

A “**trusted partner**” is defined as a public or private, national or international organization that is able to meet core [NIH standards](https://osp.od.nih.gov/wp-content/uploads/Trusted_Partner_Checklist.pdf) for establishing data quality and data management service protocols for NIH, based on the programmatic need of an NIH funding Institute or Center (IC)

**Bionimbus** is a **trusted partner** that is cloud agnostic, operated by the University of Chicago, and is powered by the Gen3 software stack

Bionimbus for Kids First fulfills the DRC’s **Data Distribution** roles in support of the the NIH’s current genomic data sharing policies:

* *Data will be maintained through controlled access:*
  * *A. Permission to access data will be requested through NIH Data Access Committees, per NIH-prescribed processes for the institutional certification of data sharing requests*
  * *B. Standard telemetry will be used to communicate with NIH systems for authenticating Approved Users through the dbGaP data request process*


### Linking your eRA Commons Account to Gen3 & the Portal

To analyze data on Cavatica or to download genomic files locally, you must link your Kids First DRC Account to Gen3 via your eRA Commons login.

1. Sign into your Kids First DRC Portal account.
2. Navigate to Settings from the upper right hand corner drop down, under your name.
3. Under settings, scroll down to the Integrations section. Locate Gen3 Data Commons. Click Connect.
[IMAGE__images/support-integrations-connect.md]
4. Follow the instructions on the Connect Popup 
[IMAGE__images/support-connect-popup.md]


[NOTE_START]

**Note:** When copying your API token, use the “copy” button on Gen3’s token popup (instead of copying the text on the page) as it will copy the token with all its required json formatting. Use right click -> paste, or Control +V in the Gen3 Authentication Token field on the portal to paste the copied token into the field. 

[NOTE_END]


### Applying for Data Access

Access to the genomic files requires authorization from the appropriate DAC. While most data set access within the Kids First DRC is granted through dbGaP, there are some datasets whose access is reviewed & granted through consortia DAC’s. Please reference the below table for access management for each of the available Kids First studies. For any questions on how to apply for dbGaP access, please visit their page [here](https://dbgap.ncbi.nlm.nih.gov/aa/wga.cgi?page=login "dbGap Questions for Application Link"). 

|Dataset|Study ID|Access Managed by|Link|
|:---|:---|:---|:---|
|Pediatric Brain Tumor Atlas||CBTTC DAC|[https://cbttc.org/research/scientific-projects/](https://cbttc.org/research/scientific-projects/)


## Analyze Data


### About Cavatica

CAVATICA is a data analysis and sharing platform designed to accelerate discovery in a scalable, cloud-based compute environment where data, results, and workflows are shared among the world’s research community. CAVATICA and its partners continuously seek to find ways to collaborate, share, interoperate, and connect with any and all other data platforms in order to empower data across diseases, ages and geography supporting researchers and patients across the United States and throughout the world.

The portal integrates with CAVATICA to authenticate file access and push genomic files from the Kids First DRC Portal to Cavatica. Here, researchers and bioinformaticians can create their own workflows or use existing, registered workflows to analyze Kids First datasets. Cavatica users can also bring external datasets into their private Cavatica project space to work with alongside the Kids First Data.

For more information on Cavatica, visit the Fact Sheet [here](https://d3b.center/wp-content/uploads/2018/01/Cavatica-Fact_Foundation.pdf "About Cavatica - Link to Cavatica Fact Sheet").


### Pushing Data to Cavatica Requirements

There are three prerequisites to being able to push data from the Portal to Cavatica:

1. Your Kids First DRC Portal account must be linked to Gen3/eRA Commons. For information how to do this, click here.
2. You must have been granted access to the datasets of choice through dbGap. For information on this process, click here.
3. Your Kids First DRC Portal account must be linked to your Cavatica account. For information on how to do this, see below.


### Linking your Cavatica Account

One of the requirements to push data from the Kids First DRC Portal to Cavatica is that the user must have their Cavatica account linked in the portal. (This also, by default, means you must have a Cavatica account!)

1. Sign into your Kids First DRC Portal account.
2. Navigate to Settings from the upper right hand corner drop down, under your name.
3. Under settings, scroll down to the Integrations section. Locate Cavatica. Click connect.
[IMAGE__images/support-integrations.md]
4. Follow the instructions on the Connect Popup
[IMAGE__images/support-connect.md]

You can register for a Cavatica account [here](https://pgc-accounts.sbgenomics.com/auth/register "Linking your Cavatica Account - Link to Register for Cavatica"). Cavatica now supports both traditional usernames and passwords AND eRA Commons/NIH account authentication!


### Funding your Cavatica Analysis

Each new Cavatica account comes with $150 in compute credits for users to get familiar with the platform. Further compute costs are self-funded by the investigator. There are several mechanisms available for obtaining additional analysis funding support for your Kids First data. Contact [support@kidsfirstdrc.org](mailto:support@kidsfirstdrc.org "Funding your Cavatica Analysis - Link to Email KidsFirst Support") to learn more.


### Cavatica Support Documentation

For more technical support on Cavatica, please visit Cavaica Docs here: [http://docs.cavatica.org/](http://docs.cavatica.org/)




<!-- 
1. #### test One
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 
2. #### test Two
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 
3. #### test Three
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 


[NOTE_START]

<strong>Example of a note</strong>: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

[NOTE_END]

[WARNING_START]

<strong>Example of a warning</strong>: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

[WARNING_END]

-->

