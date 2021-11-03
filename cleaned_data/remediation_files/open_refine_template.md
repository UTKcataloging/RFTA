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
<identifier type="pid">{{cells["PID"].value}}</identifier>
{{if(isBlank(cells['title'].value), '', '<titleInfo><title>' + cells['title'].value + '</title></titleInfo>')}} 
<abstract>{{cells["Abstract"].value}}</abstract>

{{if(isBlank(cells['Narrator Name'].value), '', '<name' + if(isBlank(cells['Narrator Name URI'].value), '', ' authority="naf" valueURI="' + cells['Narrator Name URI'].value + '"') + '><namePart>' + cells['Narrator Name'].value + '</namePart><role><roleTerm authority="marcrelator" valueURI="http://id.loc.gov/vocabulary/relators/ive">Interviewee</roleTerm></role></name>')}}
{{if(isBlank(cells['Narrator Name 2'].value), '', '<name' + if(isBlank(cells['Narrator Name 2 URI'].value), '', ' authority="naf" valueURI="' + cells['Narrator Name 2 URI'].value + '"') + '><namePart>' + cells['Narrator Name 2'].value + '</namePart><role><roleTerm authority="marcrelator" valueURI="http://id.loc.gov/vocabulary/relators/ive">Interviewee</roleTerm></role></name>')}}
{{if(isBlank(cells['Narrator Name 3'].value), '', '<name><namePart>' + cells['Narrator Name 3'].value + '</namePart><role><roleTerm authority="marcrelator" valueURI="http://id.loc.gov/vocabulary/relators/ive">Interviewee</roleTerm></role></name>')}}
{{if(isBlank(cells['Interviewer Name'].value), '', '<name' + if(isBlank(cells['Interviewer Name URI'].value), '', ' authority="naf" valueURI="' + cells['Interviewer Name URI'].value + '"') + '><namePart>' + cells['Interviewer Name'].value + '</namePart><role><roleTerm authority="marcrelator" valueURI="http://id.loc.gov/vocabulary/relators/ivr">Interviewer</roleTerm></role></name>')}}
{{if(isBlank(cells['Interviewer Name 2'].value), '', '<name><namePart>' + cells['Interviewer Name 2'].value + '</namePart><role><roleTerm authority="marcrelator" valueURI="http://id.loc.gov/vocabulary/relators/ivr">Interviewer</roleTerm></role></name>')}}
<originInfo>
{{if(isBlank(cells['date_edtf'].value), '', '<dateCreated encoding="edtf" keyDate="yes">' + cells['date_edtf'].value + '</dateCreated>')}}
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
{{if(isBlank(cells['Geo_2'].value), '', '<subject valueURI="' + cells['Geo_2_URI'].value + '"><geographic>' + cells['Geo_2'].value + '</geographic></subject>')}}

{{if(isBlank(cells['Location_1'].value), '', '<subject authority="geonames" valueURI="' + cells['Location_1_URI'].value + '"><geographic>' + cells['Location_1'].value + '</geographic><cartographics><coordinates>' + cells['Location_1_Coordinates'].value + '</coordinates></cartographics></subject>')}}
{{if(isBlank(cells['Location_2'].value), '', '<subject authority="geonames" valueURI="' + cells['Location_2_URI'].value + '"><geographic>' + cells['Location_2'].value + '</geographic><cartographics><coordinates>' + cells['Location_2_Coordinates'].value + '</coordinates></cartographics></subject>')}}
{{if(isBlank(cells['Location_3'].value), '', '<subject authority="geonames" valueURI="' + cells['Location_3_URI'].value + '"><geographic>' + cells['Location_3'].value + '</geographic><cartographics><coordinates>' + cells['Location_3_Coordinates'].value + '</coordinates></cartographics></subject>')}}
{{if(isBlank(cells['Location_4'].value), '', '<subject authority="geonames" valueURI="' + cells['Location_4_URI'].value + '"><geographic>' + cells['Location_4'].value + '</geographic><cartographics><coordinates>' + cells['Location_4_Coordinates'].value + '</coordinates></cartographics></subject>')}}
{{if(isBlank(cells['Location_5'].value), '', '<subject authority="geonames" valueURI="' + cells['Location_5_URI'].value + '"><geographic>' + cells['Location_5'].value + '</geographic><cartographics><coordinates>' + cells['Location_5_Coordinates'].value + '</coordinates></cartographics></subject>')}}

{{if(isBlank(cells['Name_1'].value), '', '<subject authority="naf" valueURI="' + cells['Name_1_URI'].value + '"><name><namePart>' + cells['Name_1'].value + '</namePart></name></subject>')}}
<language>
<languageTerm type="text" authority="iso639-2b">English</languageTerm>
</language>
<typeOfResource>{{cells['typeOfResource'].value}}</typeOfResource>
<relatedItem displayLabel="Project" type="host"><titleInfo><title>Rising from the Ashes Oral Histories</title></titleInfo></relatedItem>
<recordInfo><recordContentSource valueURI="{{cells['recordContentSource_URI'].value}}">{{cells['recordContentSource'].value}}</recordContentSource></recordInfo>
<accessCondition type="use and reproduction" xlink:href="{{cells['License_URI'].value}}">{{cells['License'].value}}</accessCondition>
<extension xmlns:pbcore="http://www.pbcore.org/PBCore/PBCoreNamespace.html" xsi:schemaLocation="http://www.pbcore.org/PBCore/PBCoreNamespace.html https://raw.githubusercontent.com/WGBH/PBCore_2.1/master/pbcore-2.1.xsd"><pbcore:pbcoreDescriptionDocument>
<pbcore:pbcoreIdentifier source="local">{{cells['filename'].value}}</pbcore:pbcoreIdentifier><pbcore:pbcoreTitle>{{cells['title'].value}}</pbcore:pbcoreTitle><pbcore:pbcoreDescription>{{cells['Quote from Interview'].value}}</pbcore:pbcoreDescription>
{{if(isBlank(cells['Interview_Question_1'].value), '', '<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_1_TC'].value + if(isBlank(cells['Interview_Question_2_TC'].value), '" endTime="' + cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_2_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q1</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_1'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 1</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}
{{if(isBlank(cells['Location_1'].value), '',
'<pbcore:pbcorePart partType="geographic" startTime="' + cells['Location_1_Start_TC'].value + '" endTime="' + cells['Location_1_End_TC'].value + '"><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_G1</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Location_1'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Interviewee discusses ' + cells['Location_1'].value + '.</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}
{{if(isBlank(cells['Chapter_1'].value), '',
'<pbcore:pbcorePart partType="Chapters" startTime="' + cells['Chapter_1_Start_TC'].value + '"' + if(isBlank(cells['Chapter_1_End_TC'].value), ' endTime="' +cells['extent'].value + '"',' endTime="' + cells['Chapter_1_End_TC'].value) + '"><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_C1</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Chapter_1'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>' + cells['Chapter_1'].value + ' chapter.</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_2'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_2_TC'].value + if(isBlank(cells['Interview_Question_3_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_3_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q2</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_2'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 2</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}
{{if(isBlank(cells['Location_2'].value), '',
'<pbcore:pbcorePart partType="geographic" startTime="' + cells['Location_2_Start_TC'].value + '" endTime="' + cells['Location_2_End_TC'].value + '"><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_G2</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Location_2'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Interviewee discusses ' + cells['Location_2'].value + '.</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}
{{if(isBlank(cells['Chapter_2'].value), '',
'<pbcore:pbcorePart partType="Chapters" startTime="' + cells['Chapter_2_Start_TC'].value + '" endTime="' + cells['Chapter_2_End_TC'].value + '"><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_C2</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Chapter_2'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>' + cells['Chapter_2'].value + ' chapter.</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_3'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_3_TC'].value + if(isBlank(cells['Interview_Question_4_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_4_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q3</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_3'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 3</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}
{{if(isBlank(cells['Location_3'].value), '',
'<pbcore:pbcorePart partType="geographic" startTime="' + cells['Location_3_Start_TC'].value + '" endTime="' + cells['Location_3_End_TC'].value + '"><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_G3</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Location_3'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Interviewee discusses ' + cells['Location_3'].value + '.</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}
{{if(isBlank(cells['Chapter_3'].value), '',
'<pbcore:pbcorePart partType="Chapters" startTime="' + cells['Chapter_3_Start_TC'].value + '" endTime="' + cells['Chapter_3_End_TC'].value + '"><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_C3</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Chapter_3'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>' + cells['Chapter_3'].value + ' chapter.</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_4'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_4_TC'].value + if(isBlank(cells['Interview_Question_5_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_5_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q4</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_4'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 4</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}
{{if(isBlank(cells['Location_4'].value), '',
'<pbcore:pbcorePart partType="geographic" startTime="' + cells['Location_4_Start_TC'].value + '" endTime="' + cells['Location_4_End_TC'].value + '"><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_G4</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Location_4'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Interviewee discusses ' + cells['Location_4'].value + '.</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}
{{if(isBlank(cells['Chapter_4'].value), '',
'<pbcore:pbcorePart partType="Chapters" startTime="' + cells['Chapter_4_Start_TC'].value + '" endTime="' + cells['Chapter_4_End_TC'].value + '"><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_C4</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Chapter_4'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>' + cells['Chapter_4'].value + ' chapter.</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_5'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_5_TC'].value + if(isBlank(cells['Interview_Question_6_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_6_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q5</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_5'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 5</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}
{{if(isBlank(cells['Location_5'].value), '',
'<pbcore:pbcorePart partType="geographic" startTime="' + cells['Location_5_Start_TC'].value + '" endTime="' + cells['Location_5_End_TC'].value + '"><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_G5</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Location_5'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Interviewee discusses ' + cells['Location_5'].value + '.</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}
{{if(isBlank(cells['Chapter_5'].value), '',
'<pbcore:pbcorePart partType="Chapters" startTime="' + cells['Chapter_5_Start_TC'].value + '" endTime="' + cells['Chapter_5_End_TC'].value + '"><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_C5</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Chapter_5'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>' + cells['Chapter_5'].value + ' chapter.</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_6'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_6_TC'].value + if(isBlank(cells['Interview_Question_7_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_7_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q6</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_6'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 6</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}
{{if(isBlank(cells['Chapter_6'].value), '',
'<pbcore:pbcorePart partType="Chapters" startTime="' + cells['Chapter_6_Start_TC'].value + '" endTime="' + cells['Chapter_6_End_TC'].value + '"><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_C6</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Chapter_6'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>' + cells['Chapter_6'].value + ' chapter.</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_7'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_7_TC'].value + if(isBlank(cells['Interview_Question_8_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_8_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q7</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_7'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 7</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}
{{if(isBlank(cells['Chapter_7'].value), '',
'<pbcore:pbcorePart partType="Chapters" startTime="' + cells['Chapter_7_Start_TC'].value + '" endTime="' + cells['Chapter_7_End_TC'].value + '"><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_C7</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Chapter_7'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>' + cells['Chapter_7'].value + ' chapter.</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_8'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_8_TC'].value + if(isBlank(cells['Interview_Question_9_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_9_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q8</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_8'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 8</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}
{{if(isBlank(cells['Chapter_8'].value), '',
'<pbcore:pbcorePart partType="Chapters" startTime="' + cells['Chapter_8_Start_TC'].value + '" endTime="' + cells['Chapter_8_End_TC'].value + '"><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_C8</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Chapter_8'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>' + cells['Chapter_8'].value + ' chapter.</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_9'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_9_TC'].value + if(isBlank(cells['Interview_Question_10_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_10_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q9</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_9'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 9</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}
{{if(isBlank(cells['Chapter_9'].value), '',
'<pbcore:pbcorePart partType="Chapters" startTime="' + cells['Chapter_9_Start_TC'].value + '" endTime="' + cells['Chapter_9_End_TC'].value + '"><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_C9</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Chapter_9'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>' + cells['Chapter_9'].value + ' chapter.</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_10'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_10_TC'].value + if(isBlank(cells['Interview_Question_11_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_11_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q10</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_10'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 10</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_11'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_11_TC'].value + if(isBlank(cells['Interview_Question_12_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_12_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q11</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_11'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 11</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_12'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_12_TC'].value + if(isBlank(cells['Interview_Question_13_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_13_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q12</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_12'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 12</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_13'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_13_TC'].value + if(isBlank(cells['Interview_Question_14_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_14_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q13</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_13'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 13</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_14'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_14_TC'].value + if(isBlank(cells['Interview_Question_15_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_15_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q14</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_14'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 14</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_15'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_15_TC'].value + if(isBlank(cells['Interview_Question_16_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_16_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q15</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_15'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 15</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_16'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_16_TC'].value + if(isBlank(cells['Interview_Question_17_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_17_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q16</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_16'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 16</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_17'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_17_TC'].value + if(isBlank(cells['Interview_Question_18_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_18_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q17</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_17'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 17</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_18'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_18_TC'].value + if(isBlank(cells['Interview_Question_19_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_19_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q18</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_18'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 18</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_19'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_19_TC'].value + if(isBlank(cells['Interview_Question_20_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_20_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q19</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_19'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 19</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_20'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_20_TC'].value + if(isBlank(cells['Interview_Question_21_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_21_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q20</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_20'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 20</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_21'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_21_TC'].value + if(isBlank(cells['Interview_Question_22_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_22_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q21</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_21'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 21</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_22'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_22_TC'].value + if(isBlank(cells['Interview_Question_23_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_23_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q22</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_22'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 22</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_23'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_23_TC'].value + if(isBlank(cells['Interview_Question_24_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_24_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q23</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_23'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 23</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_24'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_24_TC'].value + if(isBlank(cells['Interview_Question_25_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_25_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q24</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_23'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 24</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_25'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_25_TC'].value + if(isBlank(cells['Interview_Question_26_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_26_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q25</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_25'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 25</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_26'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_26_TC'].value + if(isBlank(cells['Interview_Question_27_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_27_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q26</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_26'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 26</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_27'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_27_TC'].value + if(isBlank(cells['Interview_Question_28_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_28_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q27</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_27'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 27</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_28'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_28_TC'].value + if(isBlank(cells['Interview_Question_29_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_29_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q28</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_28'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 28</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_29'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_29_TC'].value + if(isBlank(cells['Interview_Question_30_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_30_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q29</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_29'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 29</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_30'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_30_TC'].value + if(isBlank(cells['Interview_Question_31_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_31_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q30</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_30'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 30</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_31'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_31_TC'].value + if(isBlank(cells['Interview_Question_32_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_32_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q31</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_31'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 31</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_32'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_32_TC'].value + if(isBlank(cells['Interview_Question_33_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_33_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q32</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_32'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 32</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_33'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_33_TC'].value + if(isBlank(cells['Interview_Question_34_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_34_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q33</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_33'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 33</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_34'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_34_TC'].value + if(isBlank(cells['Interview_Question_35_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_35_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q34</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_34'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 34</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_35'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_35_TC'].value + if(isBlank(cells['Interview_Question_36_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_36_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q35</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_35'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 35</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_36'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_36_TC'].value + if(isBlank(cells['Interview_Question_37_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_37_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q36</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_36'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 36</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_37'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_37_TC'].value + if(isBlank(cells['Interview_Question_38_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_38_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q37</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_37'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 37</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_38'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_38_TC'].value + if(isBlank(cells['Interview_Question_39_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_39_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q38</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_38'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 38</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_39'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_39_TC'].value + if(isBlank(cells['Interview_Question_40_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_40_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q39</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_39'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 39</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_40'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_40_TC'].value + if(isBlank(cells['Interview_Question_41_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_41_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q40</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_40'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 40</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_41'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_41_TC'].value + if(isBlank(cells['Interview_Question_42_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_42_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q41</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_41'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 41</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_42'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_42_TC'].value + if(isBlank(cells['Interview_Question_43_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_43_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q42</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_42'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 42</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_43'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_43_TC'].value + if(isBlank(cells['Interview_Question_44_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_44_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q43</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_43'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 43</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_44'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_44_TC'].value + if(isBlank(cells['Interview_Question_45_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_45_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q44</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_44'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 44</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_45'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_45_TC'].value + if(isBlank(cells['Interview_Question_46_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_46_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q45</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_45'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 45</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_46'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_46_TC'].value + if(isBlank(cells['Interview_Question_47_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_47_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q46</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_46'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 46</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_47'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_47_TC'].value + if(isBlank(cells['Interview_Question_48_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_48_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q47</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_47'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 47</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_48'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_48_TC'].value + if(isBlank(cells['Interview_Question_49_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_49_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q48</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_48'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 48</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_49'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_49_TC'].value + if(isBlank(cells['Interview_Question_50_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_50_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q49</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_49'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 49</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_50'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_50_TC'].value + if(isBlank(cells['Interview_Question_51_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_51_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q50</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_50'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 50</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_51'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_51_TC'].value + if(isBlank(cells['Interview_Question_52_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_52_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q51</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_51'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 51</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_52'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_52_TC'].value + if(isBlank(cells['Interview_Question_53_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_53_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q52</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_52'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 52</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_53'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_53_TC'].value + if(isBlank(cells['Interview_Question_54_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_54_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q53</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_53'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 53</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_54'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_54_TC'].value + if(isBlank(cells['Interview_Question_55_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_55_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q54</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_54'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 54</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_55'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_55_TC'].value + if(isBlank(cells['Interview_Question_56_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_56_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q55</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_55'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 55</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_56'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_56_TC'].value + if(isBlank(cells['Interview_Question_57_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_57_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q56</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_56'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 56</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_57'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_57_TC'].value + if(isBlank(cells['Interview_Question_58_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_58_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q57</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_57'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 57</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_58'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_58_TC'].value + if(isBlank(cells['Interview_Question_59_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_59_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q58</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_58'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 58</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_59'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_59_TC'].value + if(isBlank(cells['Interview_Question_60_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_60_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q59</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_59'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 59</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_60'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_60_TC'].value + if(isBlank(cells['Interview_Question_61_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_61_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q60</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_60'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 60</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_61'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_61_TC'].value + if(isBlank(cells['Interview_Question_62_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_62_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q61</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_61'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 61</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_62'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_62_TC'].value + if(isBlank(cells['Interview_Question_63_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_63_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q62</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_62'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 62</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_63'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_63_TC'].value + if(isBlank(cells['Interview_Question_64_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_64_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q63</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_63'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 63</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_64'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_64_TC'].value + if(isBlank(cells['Interview_Question_65_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_65_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q64</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_64'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 64</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_65'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_65_TC'].value + if(isBlank(cells['Interview_Question_66_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_66_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q65</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_65'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 65</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_66'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_66_TC'].value + if(isBlank(cells['Interview_Question_67_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_67_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q66</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_66'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 66</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_67'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_67_TC'].value + if(isBlank(cells['Interview_Question_68_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_68_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q67</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_67'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 67</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_68'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_68_TC'].value + if(isBlank(cells['Interview_Question_69_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_69_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q68</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_68'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 68</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_69'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_69_TC'].value + if(isBlank(cells['Interview_Question_70_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_70_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q69</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_69'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 69</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_70'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_70_TC'].value + if(isBlank(cells['Interview_Question_71_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_71_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q70</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_70'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 70</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_71'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_71_TC'].value + if(isBlank(cells['Interview_Question_72_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_72_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q71</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_71'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 71</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}

{{if(isBlank(cells['Interview_Question_72'].value), '',
'<pbcore:pbcorePart partType="Interview Questions" startTime="' + cells['Interview_Question_72_TC'].value + if(isBlank(cells['Interview_Question_73_TC'].value), '" endTime="' +cells['extent'].value + '"', '" endTime="' + cells['Interview_Question_73_TC'].value + '"') + '><pbcore:pbcoreIdentifier source="local">' + cells['filename'].value + '_Q72</pbcore:pbcoreIdentifier>' + '<pbcore:pbcoreTitle>' + cells['Interview_Question_72'].value + '</pbcore:pbcoreTitle><pbcore:pbcoreDescription>Question 72</pbcore:pbcoreDescription></pbcore:pbcorePart>')}}
</pbcore:pbcoreDescriptionDocument>
</extension>
</mods>

```

#### Suffix

```
</modsCollection>
```