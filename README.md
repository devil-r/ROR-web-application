# ROR-web-applicaiton
this is a ror web application with following functionalities:
1. User authentication with 1 admin user.
2. Accept complains from all users.
3. Allow admin (with special priveledges) to update the status of complaint from pending, to processing and complete.
4. The person who created the complaint should be finally able to close the complaint after resolution.
5.  2 different dashboards for normal users and resolving authorities.

 instruction for adding admin:
 1. Open ruby console
    >rails c
 2. In console:
    >@user=User.last
    press ENTER
    >@user.update(:admin=>true)
    press enter
    
   This will make your last user admin
