The GrabIt website is built using Microsoft Visual Studio 2013 and the Database was linked using Microsoft SQL Server 2014
################### PREREQUISITES ###################
1.Visual Studio 2013 and SQL Server 2014 installed in the machine
2.DATABASE containing links and details of products
3.LOG FILE of that database

####################### LINKS #######################
DATABASE: https://drive.google.com/file/d/0B0hb8FIqfH7vdTAwUVBuOWJnbHc/view?usp=sharing
LOG FILE: https://drive.google.com/file/d/0B0hb8FIqfH7vakJraDhZZ3JHVms/view?usp=sharing

############### ATTACHING THE DATABASE ###############
1.In SQL Server Management Studio Object Explorer, connect to an instance of the SQL Server Database Engine, and then expand that instance.
2.Right-click Databases and click Attach.
3.In the Attach Databases dialog box, to specify the database to be attached, click Add; and in the Locate Database Files dialog box, 
select the disk drive where the database resides and expand the directory tree to find and select the .mdf file of the database; 
for example:
C:\Program Files\Microsoft SQL Server\MSSQL12.DHEERAJ\MSSQL\DATA\products.mdf

############### SETTING UP THE WEBSITE ###############
1.Download all the code files into a single folder, suppose "GrabIt"
2.Now open Visual Studio "FILE>Open>Web Site>.." and locate "GrabIt"
3.Finally open "search.aspx.cs" file with notepad and replace "server=DHEERAJ-PC;user id=sa;password=dheeraj;database=products;" with "server=  /*Server name*/  ;user id=  /*Login*/  ;password=  /*Password*/  ;database=products;"
Note:The server name, login and password will be those values used for SQL Server 2014. The login is usually "sa" 
4.Finally run the website from Visual Studio
