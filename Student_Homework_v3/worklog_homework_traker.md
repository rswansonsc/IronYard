Instructions given by Nick the designated Instructo Con ;-)
Ref: 5-6-Student_Homework_Traker.md - located in the file folder

Work log entries:

Date: 	Start_time 	Stop_Time Total_Time_Worked (15min_increm)		Detail_Log
5-6-14	1130am			230pm			4 hours		

Initial design and layout, performed GEM research, documented plan, review with Nick

5-7-14 	1000am			1240pm		2.5 hours (setup/table design/layout project)

decided to buld rails project to track research and time on this project in effore to 
comply to John Saddington requests from 5-2-14 discussion/tutoring/lecture

Rails_time, Date, Start, Stop, Total, Category, Description

Spoke with Nick, he wants me to track time manually for now but recommended that I look at a web 
site called Harvest, setup free Harvest account, established categories for work, started making entries.

New Harvest time tracking site: kangaroosoftware.harvest.com
Project Created: 30 day free trial, 12.00/mo after free period
company name: Kangaroo Software

Conroller build commands:

rails g scaffold home
rails g scaffold locations name_l city state zip
rails g scaffold classes name_cl description_cl links_cl
rails g scaffold assignments name_a description_a links_a
rails g scaffold comments date_c time_c comment_detail links_c
rails g scaffold users name_u email

Should have been: 
rails g controller locations new create  
rails g controller classes name_cl description_cl links_cl
rails g controller assignments name_a description_a links_a
rails g controller comments date_c time_c comment_detail links_c
rails g controller users name_u email
***********************************************************************************
Related Scaffold commands:
older version of scaffolding script
ruby script/generate scaffold Modelname name:string title:string employed_on:date remarks:text

Ver4.1 scaffold command:
rails generate scaffold xxxxx name:string

Root Controller:
rails generate controller welcome index

Locations MVC
*** Table:locations 
name_l city state zip

	rails g controller scaffold locations name_l:string city:string state:string zip:string

	rails g controller locations index:string  show:string  new:string  edit:string  create:string  update:string  destroy:string  _form


** Table:classes
name_cl description_cl links_cl



rails g controller assignments 

name_a description_a links_a
rails g controller comments date_c time_c comment_detail links_c
rails g controller users name_u email