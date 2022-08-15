# Hands-on DS-01 

Purpose of the this hands-on training is to give basic understanding of AWS and IAM 

## Learning Outcomes

At the end of the this hands-on training, students will be able to;

- understand root user and IAM user

- create IAM user 

- explain the credentials 

- create a settings for IAM user

- make troubleshooting about credentials

- create a Billing Alarm

## Outline

- Part 1 - Creating IAM user and arrange user settings
- Part 2 - Troubleshooting about credentials
- Part 3 - Creating a Billing Alarm

## Part 1 - Creating IAM user and arrange user settings

- Log in  as a Root user. !!!! Please use "your individual root account."

- Show the Dashboard of IAM 

- Show IAM users "sign-in link" and customize it as alias . Tell the student to write down the account alias.

- Create IAM user with Administrator access for your daily work :

    - Explain that  unless it is needed,  students won't use root account anymore.
    - Explain policy Administrator access*  policy and policy format

- Click on newly created User---->>> Security Credentials show the credentials. 

- Create bill settings: Since we'll not use root account for daily work, we also need to check our billing from IAM user console .So we need to make some setting for this issue. 

     - Right top of the page click your name ----> Select My account -->> IAM User and Role Access to Billing Information--->> Edit--->>

- Sign Out and Sign in  with newly created IAM user with "Clarusway IAM user". 

- Check the users and Billing services to be accessible or not.



##  Part 2 - Troubleshooting about credentials

### Step 1 - What if you forget the password 

- Click User>>>>> Select user ---->>Security Credential--->> Console Password---> Click "Manage"--->>Set  password >>>> Custom password

### Step 2-  What if you forgot your secret access keys key 

  Click User>>>>> Select user---->>Security Credential--->> Go Access keys ---> Deactivate---->> Delete --->>>Create new 


##  Part 3 Creating a Billing Alarm

- go to the AWS cloudwatch service
- navigate to to the Left hand menu select 

```
   >>> Alarms >>>> All Alarms !!!!! (Since you have already a billing alarm you may not see the same page with student  if you use "Billing" tab )

```   
- CLick on Create Alarms

``` 
  Select   "Metric >>> Billing >>> Total Estimated Charge >>> Currancy USD"
``` 
- Then click Select metric.
- Specify metric and conditions:

``` 
  Metric: keep it as is
  Conditions: 
     Threshold type                 : "Static "
     Whenever EstimatedCharges is...: "Greater or Greater/Equal"
     than..                         : 5/10 USD 
     Additional configuration       : Keep it as is

``` 


- Configure actions: 
``` 
  1.Notification:
    a.Alarm state trigger: In alarm (keep it as is)
    b.Send a notification to the following SNS topic:
        1) Select "Create new topic"
           - Enter Topic name 
           - Enter email
        2) Click on create Topic
        3) Go to the email and "Confirm subscription"
             
  2. Auto Scaling action    : keep it as is
  3. EC2 action             : keep it as is
  4. Systems Manager action : keep it as is
``` 
- Click on next 

- Add name and description:
``` 
  Alarm name  : Billing Alarm
  Descriptions: optional
``` 
- Preview and create