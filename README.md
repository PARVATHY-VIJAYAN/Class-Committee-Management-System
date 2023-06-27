# Class-Committee-Management-System
<h3>Introduction</h3>
<p>
  Class Committee Management System is a web-based system.The Head Of the Department(HOD), Class Committee Chair, faculties, and student representatives are the users. An HOD is the one who manages the department. He/She need must be monitoring the department. For that, HOD assigns Class Committee chairs to every batches under the department. Class Committee Chair have to manage everything under the class committee. He/she will be informed by the students and faculty if any issue is arising. This system provides features like conducting meetings, managing files, converting .xlsx files to graphical forms and marking reports, sending automated and manual reminders to the users, etc. HOD is the admin of the system, who manages all the batches, CC-Chairs, and faculties whereas, the CC-Chair manages everything under his/her class committee which includes managing the members, and data, reminding faculties to provide necessary documents, conducting class committee meetings, etc. The class committee meeting system provides a framework for conducting productive and efficient meetings. In this system, each semester includes five class committee meetings which are; Zeroth, First, Midterm, Internal finalization, and
Grade finalization. In the Zeroth meeting, the faculty needs to upload the course plan file and evaluation policy. For the mid-term meeting, the faculty needs to
upload the mid-term mark report as an Excel sheet. From this uploaded Excel sheet minimum, maximum and average are calculated. Based on this calculation, a list of students below 20 percent, above 90 percent, and absentees are displayed. Also, they upload attendance shortage reports in PDF form. In between there is a first class committee meeting. The internal finalization meeting file upload process is similar to the mid-term meeting. The grade finalization meeting is the last class committee meeting. Here, the faculty uploads an Excel file to generate a grade report. For the tentative grade report faculties can set a range for grading.
</p>

<h3>Problem Definition</h3>
<p>
  HOD is the admin user of the system who is responsible to add faculties and batches. HOD can assign CC-Chairs to each batch under the department. Now, the CC-Chairs have a group to be managed. So, he/she has to add committee members of his/her respective group. These members include student representatives, faculties handling the courses of this class (class instructors), and non-instructing faculties. There will be a file structure like department -batch - group - course - faculty - file Before every class committee meeting, CC-Chair will be asking the faculties to upload the necessary files as part of courses and evaluations. All these files will be well arranged and stored in the corresponding folders, which are accessible anytime by the faculties and the cc-chair. These files include course plans and mark reports, CC-Chair can set the files to ’not accessible for students’ if necessary. From the folders, Excel files are detected and its mark report is generated, which shows maximum marks, minimum marks, etc. We develop a graph generator for generating a graphical representation of the file. For that, faculties can upload organized data of exam results on an Excel sheet and the system will extract details from the file to give a graphical representation of marks attained by the whole batch. All the group members can read this. Meetings are scheduled and managed by the CC-Chair - meetings can be canceled and postponed. Also, the system provides a meeting history for each user. When the meeting is scheduled, faculties will get an interface to submit the files which have to be submitted before attending the meeting. meeting will be accessible only for those who are under the class committee and HOD. The system will be hosted on the web server. Automated reminders are generated to the faculties before 12 hours of due time. The system will look for file schedules that need to be submitted. If it needs to be submitted before the next 12 hours, the corresponding faculty will get reminders for submission. As the faculties need to manage many batches, sending reminders is a very important factor in a class committee. 
</p>

<h3>Requirements</h3>
The design of this project contains both hardware and software. The specifications are listed below.

<h2>Software</h2>
<ul>
  <li>Browser-supporting device</li>
  <li>A multi-core processor with a high clock speed for better performance</li>
  <li>Fast and reliable network connectivity</li>
</ul>

<h2>Hardware</h2>
<ul>
  <li>Browser</li>
  <li>Web server</li>
  <li>Operating system</li>
</ul>

<h3>Proposed System</h3>
![image](https://github.com/PARVATHY-VIJAYAN/Class-Committee-Management-System/assets/99131599/9dfb2c8e-0c2e-4319-9014-615845f60f81)

There are 4 users in the system. HOD is the admin of the system. Adding batches, faculties and assigning class committee chairs are the main duties of HOD. Class committee chairs adds the group members, schedule class committee meetings, send reminders, access files,etc. Advisor can be a faculty too. Faculties can be in multiple groups. They
need to upload files and attend meetings. Students are class representatives from a class. They can attend the meetings of their class committee only.
This system is mainly constructed for the ease of advisor. That is, advisor need to handle a lot of things in class committee. after the HOD add a faculty, he/she need to manage everything under this class committee. 

1. A Class Committee need to be created by the HOD.
2. HOD assigns CC-Chairs to every class committee.
3. Advisors can conduct meeting for the class committee members. Students
can be included or excluded. At the time of scheduling the meeting, requests for
submitting the files will be sent.
4. Faculties can upload the requested documents and if there is any issues about
the class committee, it can be sent to the class committee.
5. Status of the uploaded files can be tracked by the advisor.
6. Reminders for submitting the files will be sent to the faculties if there are
pending files.
7. All the committee members can attend the meeting.
8. If there are Excel files, they can be converted to grade reports.
   
![image](https://github.com/PARVATHY-VIJAYAN/Class-Committee-Management-System/assets/99131599/8778126b-7fa7-416c-9c7a-72264e087973)


When the HOD add a new faculty, he/she need to provide the id, name and department they are belonging to. CC-chair will be one of the faculties of the department, which can be selected by the HOD. Every CC-chair will have an auto generated id, which will be changed when the CC-chair is assigned to another batch. Thus the data about the previous advisors can be recorded.

![image](https://github.com/PARVATHY-VIJAYAN/Class-Committee-Management-System/assets/99131599/a77a091b-5d08-43c9-99b0-61b386f522da)
dfd level-0

![image](https://github.com/PARVATHY-VIJAYAN/Class-Committee-Management-System/assets/99131599/092379e7-8c17-489b-8b93-752b2c5be89c)
dfd level-1

<h3>Demo: STUDENT</h3>
This is how student portal looks like:
<img width="960" alt="image" src="https://github.com/PARVATHY-VIJAYAN/Class-Committee-Management-System/assets/99131599/9bad34a6-f812-43ce-b362-9b5b2c6c9e0a">

Marksheet of a particular course
<img src="https://github.com/PARVATHY-VIJAYAN/Class-Committee-Management-System/assets/99131599/86bafe60-b322-4fbf-b96a-04aa082ad4b5">
<img src="https://github.com/PARVATHY-VIJAYAN/Class-Committee-Management-System/assets/99131599/ddd4f276-2bfe-4609-bf1b-4fdaa2b97f34">

Display graph report
<img src="https://github.com/PARVATHY-VIJAYAN/Class-Committee-Management-System/assets/99131599/0c2349aa-c4fe-4307-b12a-d55ed2f53607">

Final Exam grade sheet of a particular course
<img src="https://github.com/PARVATHY-VIJAYAN/Class-Committee-Management-System/assets/99131599/25560831-0a79-4808-800f-c14eeef9b474">
