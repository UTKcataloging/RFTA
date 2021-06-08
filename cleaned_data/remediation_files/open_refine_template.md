# Open Refine Template for Rising from the Ashes Oral History (Phase1)

## Template

#### Prefix

```
<?xml version="1.0" encoding="UTF-8"?>
<modsCollection xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xlink="http://www.w3.org/1999/xlink" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-5.xsd">
```
####Body

```
<mods>
<identifier type="local">{{cells["filename"].value}}</identifier>
<identifier type="pid">{{cells["pid"].value}}</identifier>
{{if(isBlank(cells['title'].value), '', '<titleInfo><title>' + cells['title'].value + '</title></titleInfo>')}} 
<abstract>{{cells["Abstract"].value}}</abstract>

{{if(isBlank(cells['Narrator Name'].value), '', '<name' + if(isBlank(cells['Narrator Name URI'].value), '', ' authority="naf" valueURI="' + cells['Narrator Name URI'].value + '"') + '><namePart>' + cells['Narrator Name'].value + '</namePart><role><roleTerm authority="marcrelator" valueURI="http://id.loc.gov/vocabulary/relators/ive">Interviewee</roleTerm></role></name>')}}
{{if(isBlank(cells['Narrator Name 2'].value), '', '<name' + if(isBlank(cells['Narrator Name 2 URI'].value), '', ' authority="naf" valueURI="' + cells['Narrator Name 2 URI'].value + '"') + '><namePart>' + cells['Narrator Name 2'].value + '</namePart><role><roleTerm authority="marcrelator" valueURI="http://id.loc.gov/vocabulary/relators/ive">Interviewee</roleTerm></role></name>')}}
{{if(isBlank(cells['Narrator Name 3'].value), '', '<name><namePart>' + cells['Narrator Name 3'].value + '</namePart><role><roleTerm authority="marcrelator" valueURI="http://id.loc.gov/vocabulary/relators/ive">Interviewee</roleTerm></role></name>')}}
{{if(isBlank(cells['Interviewer Name'].value), '', '<name' + if(isBlank(cells['Interviewer Name URI'].value), '', ' authority="naf" valueURI="' + cells['Interviewer Name URI'].value + '"') + '><namePart>' + cells['Interviewer Name'].value + '</namePart><role><roleTerm authority="marcrelator" valueURI="http://id.loc.gov/vocabulary/relators/ivr">Interviewer</roleTerm></role></name>')}}
{{if(isBlank(cells['Interviewer Name 2'].value), '', '<name><namePart>' + cells['Interviewer Name 2'].value + '</namePart><role><roleTerm authority="marcrelator" valueURI="http://id.loc.gov/vocabulary/relators/ivr">Interviewer</roleTerm></role></name>')}}
<originInfo>
{{if(isBlank(cells['date_edtf'].value), '', '<originInfo><dateCreated encoding="edtf" keyDate="yes">' + cells['date_edtf'].value + '</dateCreated>')}}
{{if(isBlank(cells['Interviewer Location Recorded'].value), '', '<place><placeTerm' + if(isBlank(cells['Interviewer Location Recorded URI'].value), '', ' valueURI="' + cells['Interviewer Location Recorded URI'].value + '"') + '>' + cells['Interviewer Location Recorded'].value + '</placeTerm></place>')}}
{{if(isBlank(cells['Narrator Location Recorded'].value), '', '<place><placeTerm' + if(isBlank(cells['Narrator Location Recorded URI'].value), '', ' valueURI="' + cells['Narrator Location Recorded URI'].value + '"') + '>' + cells['Narrator Location Recorded'].value + '</placeTerm></place>')}}
</originInfo>
<physicalDescription><form authority="aat" valueURI="{{cells['form_URI'].value}}">{{cells['form'].value}}</form><extent>{{cells["extent"].value}}</extent></physicalDescription>
{{if(isBlank(cells['Narrator Class 1'].value), '', '<subject displayLabel="Narrator Class"><topic>' + cells['Narrator Class 1'].value + '</topic></subject>')}}
{{if(isBlank(cells['Narrator Class 2'].value), '', '<subject displayLabel="Narrator Class"><topic>' + cells['Narrator Class 2'].value + '</topic></subject>')}}
{{if(isBlank(cells['LCSH_Topic_1'].value), '', '<subject authority="lcsh" valueURI="' + cells['LCSH_Topic_1_URI'].value + '"><topic>' + cells['LCSH_Topic_1'].value + '</topic></subject>')}}
{{if(isBlank(cells['LCSH_Topic_2'].value), '', '<subject authority="lcsh" valueURI="' + cells['LCSH_Topic_2_URI'].value + '"><topic>' + cells['LCSH_Topic_2'].value + '</topic></subject>')}}
{{if(isBlank(cells['LCSH_Topic_3'].value), '', '<subject authority="lcsh" valueURI="' + cells['LCSH_Topic_3_URI'].value + '"><topic>' + cells['LCSH_Topic_3'].value + '</topic></subject>')}}
{{if(isBlank(cells['LCSH_Topic_4'].value), '', '<subject authority="lcsh" valueURI="' + cells['LCSH_Topic_4_URI'].value + '"><topic>' + cells['LCSH_Topic_4'].value + '</topic></subject>')}}
{{if(isBlank(cells['Geo_1'].value), '', '<subject valueURI="' + cells['Geo_1_URI'].value + '"><geographic>' + cells['Geo_1'].value + '</geographic></subject>')}}
{{if(isBlank(cells['Name_1'].value), '', '<subject authority="naf" valueURI="' + cells['Name_1_URI'].value + '"><name><namePart>' + cells['Name_1'].value + '</namePart></name></subject>')}}
<language>
<languageTerm type="text" authority="iso639-2b">English</languageTerm>
</language>
<typeOfResource>{{cells['typeOfResource'].value}}</typeOfResource>
<relatedItem displayLabel="Project" type="host"><titleInfo><title>Rising from the Ashes Oral Histories</title></titleInfo></relatedItem>
<recordInfo><recordContentSource valueURI="{{cells['recordContentSource_URI'].value}}">{{cells['recordContentSource'].value}}</recordContentSource></recordInfo>
<accessCondition type="use and reproduction" xlink:href="{{cells['License_URI'].value}}">{{cells['License'].value}}</accessCondition>
<extension>
<pbcoreDescriptionDocument xmlns:pbcore="http://www.pbcore.org/PBCore/PBCoreNamespace.html" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.pbcore.org/PBCore/PBCoreNamespace.html https://raw.githubusercontent.com/WGBH/PBCore_2.1/master/pbcore-2.1.xsd">
{{if(isBlank(cells['Interview_Question_1'].value), '', '<pbcore:pbcoreIdentifier>' + cells['filename'].value + '</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['title'].value + '</pbcore:pbcoreTitle>' + '<pbcore:pbcoreDescription>' + cells['Quote from Interview'].value + '</pbcore:pbcoreDescription>' +
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_1_TC'].value + if(isBlank(cells['Interview_Question_2_TC'].value), '', '" endTime="' + cells['Interview_Question_2_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q1</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_1'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 1</pbcore:pbcoreDescription>')}} +
{{if(isBlank(cells['Interview_Question_2'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_2_TC'].value + if(isBlank(cells['Interview_Question_3_TC'].value), '', '" endTime="' + cells['Interview_Question_3_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q2</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_2'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 2</pbcore:pbcoreDescription>')}}
{{if(isBlank(cells['Interview_Question_3'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_3_TC'].value + if(isBlank(cells['Interview_Question_4_TC'].value), '', '" endTime="' + cells['Interview_Question_4_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q3</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_3'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 3</pbcore:pbcoreDescription>')}}
{{if(isBlank(cells['Interview_Question_4'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_4_TC'].value + if(isBlank(cells['Interview_Question_5_TC'].value), '', '" endTime="' + cells['Interview_Question_5_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q4</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_4'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 4</pbcore:pbcoreDescription>')}}
{{if(isBlank(cells['Interview_Question_2'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_2_TC'].value + if(isBlank(cells['Interview_Question_3_TC'].value), '', '" endTime="' + cells['Interview_Question_3_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q2</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_2'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 2</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_22'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_22_TC'].value + if(isBlank(cells['Interview_Question_23_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_23_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q22</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_22'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 22</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_23'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_23_TC'].value + if(isBlank(cells['Interview_Question_24_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_24_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q23</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_23'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 23</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_24'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_24_TC'].value + if(isBlank(cells['Interview_Question_25_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_25_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q24</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_23'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 24</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_25'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_25_TC'].value + if(isBlank(cells['Interview_Question_26_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_26_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q25</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_25'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 25</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_26'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_26_TC'].value + if(isBlank(cells['Interview_Question_27_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_27_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q26</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_26'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 26</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_27'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_27_TC'].value + if(isBlank(cells['Interview_Question_28_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_28_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q27</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_27'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 27</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_28'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_28_TC'].value + if(isBlank(cells['Interview_Question_29_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_29_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q28</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_28'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 28</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_29'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_29_TC'].value + if(isBlank(cells['Interview_Question_30_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_30_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q29</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_29'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 29</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_30'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_30_TC'].value + if(isBlank(cells['Interview_Question_31_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_31_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q30</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_30'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 30</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_31'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_31_TC'].value + if(isBlank(cells['Interview_Question_32_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_32_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q31</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_31'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 31</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_32'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_32_TC'].value + if(isBlank(cells['Interview_Question_33_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_33_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q32</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_32'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 32</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_33'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_33_TC'].value + if(isBlank(cells['Interview_Question_34_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_34_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q33</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_33'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 33</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_34'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_34_TC'].value + if(isBlank(cells['Interview_Question_35_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_35_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q34</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_34'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 34</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_35'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_35_TC'].value + if(isBlank(cells['Interview_Question_36_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_36_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q35</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_35'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 35</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_36'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_36_TC'].value + if(isBlank(cells['Interview_Question_37_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_37_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q36</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_36'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 36</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_37'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_37_TC'].value + if(isBlank(cells['Interview_Question_38_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_38_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q37</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_37'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 37</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_38'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_38_TC'].value + if(isBlank(cells['Interview_Question_39_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_39_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q38</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_38'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 38</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_39'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_39_TC'].value + if(isBlank(cells['Interview_Question_40_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_40_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q39</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_39'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 39</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_40'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_40_TC'].value + if(isBlank(cells['Interview_Question_41_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_41_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q40</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_40'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 40</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_41'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_41_TC'].value + if(isBlank(cells['Interview_Question_42_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_42_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q41</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_41'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 41</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_42'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_42_TC'].value + if(isBlank(cells['Interview_Question_43_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_43_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q42</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_42'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 42</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_43'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_43_TC'].value + if(isBlank(cells['Interview_Question_44_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_44_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q43</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_43'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 43</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_44'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_44_TC'].value + if(isBlank(cells['Interview_Question_45_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_45_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q44</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_44'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 44</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_45'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_45_TC'].value + if(isBlank(cells['Interview_Question_46_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_46_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q45</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_45'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 45</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_46'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_46_TC'].value + if(isBlank(cells['Interview_Question_47_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_47_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q46</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_46'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 46</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_47'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_47_TC'].value + if(isBlank(cells['Interview_Question_48_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_48_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q47</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_47'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 47</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_48'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_48_TC'].value + if(isBlank(cells['Interview_Question_49_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_49_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q48</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_48'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 48</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_49'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_49_TC'].value + if(isBlank(cells['Interview_Question_50_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_50_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q49</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_49'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 49</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_50'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_50_TC'].value + if(isBlank(cells['Interview_Question_51_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_51_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q50</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_50'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 50</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_51'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_51_TC'].value + if(isBlank(cells['Interview_Question_52_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_52_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q51</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_51'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 51</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_52'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_52_TC'].value + if(isBlank(cells['Interview_Question_53_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_53_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q52</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_52'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 52</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_53'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_53_TC'].value + if(isBlank(cells['Interview_Question_54_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_54_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q53</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_53'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 53</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_54'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_54_TC'].value + if(isBlank(cells['Interview_Question_55_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_55_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q54</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_54'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 54</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_55'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_55_TC'].value + if(isBlank(cells['Interview_Question_56_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_56_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q55</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_55'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 55</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_56'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_56_TC'].value + if(isBlank(cells['Interview_Question_57_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_57_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q56</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_56'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 56</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_57'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_57_TC'].value + if(isBlank(cells['Interview_Question_58_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_58_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q57</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_57'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 57</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_58'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_58_TC'].value + if(isBlank(cells['Interview_Question_59_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_59_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q58</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_58'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 58</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_58'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_58_TC'].value + if(isBlank(cells['Interview_Question_59_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_59_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q58</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_58'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 58</pbcore:pbcoreDescription>')}}

{{if(isBlank(cells['Interview_Question_71'].value), '',
'<pbcore:pbcorePart partType="iiif" partTypeAnnotation="Interview Questions" startTime="' + cells['Interview_Question_71_TC'].value + if(isBlank(cells['Interview_Question_72_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_72_TC'].value + '"') + '><pbcore:pbcoreIdentifier>' + cells['filename'].value + '_Q71</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_71'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 71</pbcore:pbcoreDescription>')}}

</mods>

```

#### Suffix

```
</modsCollection>
```