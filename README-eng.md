<p align="center">
<img src="app/assets/images/buildnote/linkedin_banner_image_2.png" alt="buildnote">
</p>

<p align="center">
Application for Portfolio
</p>

<p align="center">
<img src="https://img.shields.io/badge/SNS-ffd700" alt="SNS">
<img src="https://img.shields.io/badge/Recording-ffd700" alt="Recording">
<img src="https://img.shields.io/badge/themes-ffd700" alt="themes">
<br>
<img src="https://img.shields.io/badge/-Linux-6C6694.svg?logo=linux&style=flat" alt="Linux">
<img src="https://img.shields.io/badge/-HTML-333.svg?logo=html5&style=flat" alt="HTML">
<img src="https://img.shields.io/badge/-CSS-1572B6.svg?logo=css3&style=flat" alt="CSS">
<img src="https://img.shields.io/badge/Javascript-276DC3.svg?logo=javascript&style=flat" alt="Javascript">
<img src="https://img.shields.io/badge/-Ruby%203.1.2p20-CC342D.svg?logo=Ruby&style=flat" alt="Ruby">
<img src="https://img.shields.io/badge/-MySQL-4479A1.svg?logo=mysql&style=flat" alt="MySQL">
<img src="https://img.shields.io/badge/-Rails%206.1.4-CC0000.svg?logo=rubyonrails&style=flat" alt="Rails">
<img src="https://img.shields.io/badge/-Bootstrap-563D7C.svg?logo=bootstrap&style=flat" alt="Bootstrap">
<img src="https://img.shields.io/badge/-Font%20Awesome%205.15.4-fffafa.svg?logo=fontawesome&style=flat" alt="Font Awesome">
<img src="https://img.shields.io/badge/-jQuery%203.7.0-0769AD.svg?logo=jquery&style=flat" alt="jQuery">
<img src="https://img.shields.io/badge/Amazon%20Cloud9-blue" alt="Amazon Cloud9">
<img src="https://img.shields.io/badge/-Amazon%20EC2-ff4500.svg?logo=amazonec2&style=flat" alt="Amazon EC2">
<img src="https://img.shields.io/badge/-Amazon%20RDS-000080.svg?logo=amazonrds&style=flat" alt="Amazon RDS">
<br>
<a href="https://github.com/yusukeee811">
<img src="https://img.shields.io/badge/Created%20by-yusukeee811-blue?logo=github" alt="link to Developer">
</a>
</p>

[ [Japanese](README.md) | English ]
# Site Overview
### Site Theme
"<b>buildnote</b>" is a specialized record-keeping SNS site designed for individuals engaged in training activities. <br>
It supports tracking and managing training records, facilitating the visualization of training progress, and fostering interaction among users engaged in training.

### Reasons for Choosing the Theme
1. Visualizing Training Progress <br>
   By utilizing graphs and other visual tools, buildnote enables clear visualization of training progress, surpassing traditional note-taking methods. <br>

2. Need for a Training-Focused SNS<br>
   While conventional SNS platforms may deter individuals from posting about their physical fitness or training achievements, a training-focused SNS like buildnote creates a space where people with a shared interest and purpose in fitness and exercise can naturally share their accomplishments.

### Target Users
Individuals engaged in training and exercise.

### Key Usage Scenarios
- Tracking and managing training records
- Interacting and sharing information among individuals engaged in training

# Implemented Features
- 🚪 <b> [Guest Login](#guest-login) </b> - Allows users to try the application before registering, reducing the registration barrier.
- 👥 <b> [User Registration](#user-registration) </b> - Clearly identifies the author of posts. Displays customized information such as timelines, follow/follower information for each member.
- 🔍 <b> [User Search Feature](#user-search-feature) </b> - Users can search for acquaintances and follow them.
- 🤝 <b> [Follow Feature](#follow-feature) </b> - Users can follow acquaintances or people who post content of interest to receive the desired information.
- 📸 <b> [Post Creation](#post-creation) </b>- Allows members to publish their desired content.
- ❤  <b> [Like Feature](#like-feature) </b> - Allows users to react to and bookmark posts they like or want to save.
- 💕 <b> [Liked Posts List Display](#liked-posts-list-display) </b> - Enables users to view bookmarked posts at any time.
- 💬 <b> [Comment Feature](#comment-feature) </b> - Users can react to posts of interest and promote communication.
- #️⃣ <b> [Post Search (Hashtag Search)](#post-search) </b> - Enables users to check posts related to topics of interest.
- 🗓 <b> [Calendar Feature](#calendar-feature) </b> - Visualizes training days to check if training is being consistently maintained.
- 📝 <b> [Training Record Management Feature](#training-record-management-feature) </b> - Users can input and save training data such as sets, repetitions, and weights.
- 📊 <b> [Graph Feature](#graph-feature) </b> - Creates graphs from training data to visualize training progress.
- 👑 <b> [User Management (Admin)](#user-management) </b> - Allows administrators to view a list of members and their registration details. Can suspend the usage of members who registered using fraudulent means or engage in inappropriate posts.

# Design
## Screen Design
### UI Flows
- User Side

<p align="center">
<img src="app/assets/images/UI_Flows/UIFlows_user.jpg" alt="UI Flows User">
</p>

- Admin Side

<p align="center">
<img src="app/assets/images/UI_Flows/UIFlows_admin.jpg" alt="UI Flows Admin">
</p>

### Wireframes
- User Side - [Wireframe](app/assets/pdf/Wire_frame/wireframe_user.pdf)

- Admin Side - [Wireframe](app/assets/pdf/Wire_frame/wireframe_admin.pdf)

## Database Design
### ER Diagram

<p align="center">
<img src="app/assets/images/ER_diagram/ER_diagram.jpg" alt="ER diagram">
</p>

### Table Definitions
[Google spreadsheets](https://docs.google.com/spreadsheets/d/1eoqDMm04hEqI0XbXiWhPfNqwQ6nZfI0DdmKXfF4AtBg/edit?usp=sharing)

## Detailed Design
### Application Detailed Design Document

[Google spreadsheets](https://docs.google.com/spreadsheets/d/15XIUHg1zwqNAPrMz759BzxNL3kP_FmTqh-AW7rmOd30/edit?usp=sharing)

# Guest Login
You can log in from the header. <br>
If you log in as a guest, you won't be able to update or withdraw guest user.

https://github.com/yusukeee811/buildnote/assets/132319174/4fa9180b-ebf0-4024-860b-6f722270ed12

# User Registration
It clearly indicates which member's post it is. <br>
Customized information for each member, such as timeline, follow/follower information, is displayed.

https://github.com/yusukeee811/buildnote/assets/132319174/6d0aadb9-63c3-4124-a777-9bb356721a5c

# User Search Feature
You can search for acquaintances and follow them from the 'Search' in the header.

https://github.com/yusukeee811/buildnote/assets/132319174/187705b3-9bfb-4b71-949c-b22665b6899e

# Follow Feature
You can follow acquaintances or people posting interesting content to get the information you want.

https://github.com/yusukeee811/buildnote/assets/132319174/5cc50e84-572f-4324-b1a3-91c3a318642d

# Post Creation
You can navigate to the new post page from the 'Post' in the header. <br>
Members can share the content they want to convey.

https://github.com/yusukeee811/buildnote/assets/132319174/73f47fb8-c590-4d64-aa07-ca82a0c82cf2

# Like Feature
You can react to posts you like or want to save.

https://github.com/yusukeee811/buildnote/assets/132319174/57150b98-4437-43fa-ace4-dc4a360f682b

# Liked Posts List Display
You can navigate to the 'Liked Posts' page from the header. <br>
You can view posts you've liked at any time.

https://github.com/yusukeee811/buildnote/assets/132319174/fc6dca9e-2e4d-4d43-b401-8606d0708011

# Comment Feature
You can comment on posts you find interesting and promote communication.

https://github.com/yusukeee811/buildnote/assets/132319174/d348aa7c-c02d-4d46-a451-1e8d2276c03f

# Post Search (Hashtag Search)
You can navigate to the '#Search' page from the 'Search' in the header. <br>
You can check posts related to topics you're interested in.

https://github.com/yusukeee811/buildnote/assets/132319174/2188ea64-5d23-4df2-9fbb-6342de64dd35

# Calendar Feature
You can navigate to the calendar page from the 'Calendar' in the header. <br>
Visualize training days and check if you're consistently training.

<img width="1437" alt="カレンダー機能" src="https://github.com/yusukeee811/buildnote/assets/132319174/a443d3a9-2e49-4820-a69d-b0fd24b2f728">

# Training Record Management Feature
You can navigate to the training record page from 'Training Record' in the header. <br>
You can input and save training data such as sets, reps, and weights.

https://github.com/yusukeee811/buildnote/assets/132319174/8566ce3c-d6f9-4cb4-8200-d59d64b2dd27

# Graph Feature
You can navigate to the graph page from the 'Graph' in the header. <br>
Create graphs from training data and visualize training progress.

https://github.com/yusukeee811/buildnote/assets/132319174/77d6b977-0286-40b4-8270-cb89d125d86a

# User Management (Admin)
Login method for the admin page (/admin/sign_in). The email address and password required to log in to the admin page are as follows. Add /admin/sign_in after the URL.

#### email
```shell
admin@example.com
```

#### password
```shell
password
```

You can review the list of members and posts, as well as registration details. You can suspend the use of members who have registered by improper means or who have made inappropriate posts.

https://github.com/yusukeee811/buildnote/assets/132319174/2a6e2ff9-08ff-40ea-aaf3-8673708ce157


# Materials Used
- [logo-maker](https://www.shopify.com/jp/tools/logo-maker)
- [icon-icons.com](https://icon-icons.com/ja/)
- [O-DAN](https://o-dan.net/ja/)