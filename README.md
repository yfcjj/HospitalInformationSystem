# HospitalInformationSystem SSM+JSP医院住院管理系统

#### 介绍
该医院住院管理系统使用Spring+SpringMVC+Mybatis+jsp实现的，实现医院住院管理智能化

> 🍅程序员小王的博客：[程序员小王的博客](https://www.wolai.com/wnaghengjie/ahNwvAUPG2Hb1Sy7Z8waaF)

> 🍅 欢迎点赞 👍 收藏 ⭐留言 📝 

> 🍅 如有编辑错误联系作者，如果有比较好的文章欢迎分享给我，我会取其精华去其糟粕

> 😊 扫描主页左侧二维码，加我微信 一起学习、一起进步 

> 🍅java自学的学习路线：[java自学的学习路线](https://blog.csdn.net/weixin_44385486/article/details/121241079)

# 一、前言

这是一位朋友让我指导她做的毕业设计——医院住院管理系统，然后现在毕业了嘛，就把它分享出来，和大家一起学习！

项目开源地址：[https://gitee.com/wanghengjie563135/hospitalInformationSystem.git](https://gitee.com/wanghengjie563135/hospitalInformationSystem.git "https://gitee.com/wanghengjie563135/hospitalInformationSystem.git")

> 注意：项目部署有问题开源私聊我解决的!

![](https://img-blog.csdnimg.cn/img_convert/5fc5951ad2b366e1ebddab1f919effc9.png)

# 二、项目使用技术

### 1.Javascript

JavaScript是一种基于对象和事件驱动并具有相对安全性的客户端脚本语言。同时也是一种广泛用于客户端Web开发的脚本语言，常用来给HTML网页添加动态功能，比如响应用户的各种操作。它最初由网景公司（Netscape）的Brendan Eich设计，是一种动态、弱类型、基于原型的语言，内置支持类。

Javascript语言与Java语言在语法上比较相似，但随着对Javascript的深入了解后你会发现，它们说到底是两种语言！

### 2. jQuery

jQuery是一个兼容多浏览器的javascript框架，核心理念是write less,do more(写得更少,做得更多)。jQuery在2006年1月由美国人John Resig在纽约的barcamp发布，吸引了来自世界各地的众多JavaScript高手加入，由Dave Methvin率领团队进行开发。如今，jQuery已经成为最流行的javascript框架，在世界前10000个访问最多的网站中，有超过55%在使用jQuery。

jQuery是免费、开源的，使用MIT许可协议。jQuery的语法设计可以使开发者更加便捷，例如操作文档对象、选择DOM元素、制作动画效果、事件处理、使用Ajax以及其他功能。除此以外，jQuery提供API让开发者编写插件。其模块化的使用方式使开发者可以很轻松的开发出功能强大的静态或动态网页。

### 3.Bootstrap

Bootstrap是美国Twitter公司的设计师Mark Otto和Jacob Thornton合作基于HTML、CSS、JavaScript 开发的简洁、直观、强悍的前端开发框架，使得 Web 开发更加快捷。Bootstrap提供了优雅的HTML和CSS规范，它即是由动态CSS语言Less写成。Bootstrap一经推出后颇受欢迎，一直是GitHub上的热门开源项目，包括NASA的MSNBC（微软全国广播公司）的Breaking News都使用了该项目。国内一些移动开发者较为熟悉的框架，如WeX5前端开源框架等，也是基于Bootstrap源码进行性能优化而来。

### 4.EasyUI

EasyUI是一种基于jQuery、Angular、Vue和React的用户界面插件集合。它为创建现代化、互动的JavaScript应用程序提供必要的功能。使用EasyUI不需要编写很多代码，你只需要通过编写一些简单HTML标记，就可以定义用户界面，虽然很简单但功能强大的。EasyUI完美支持HTML5网页框架，它的出现大大降低了开发者开发时间与规模。

### 5.MySQL

MySQL是一个开放源码的小型关联式数据库管理系统，开发者为瑞典MySQL AB公司。MySQL被广泛地应用在Internet上的中小型网站中。由于其体积小、速度快、总体拥有成本低，尤其是开放源码这一特点，许多中小型网站为了降低网站总体拥有成本而选择了MySQL作为网站数据库。

自从Oracle公司收购了MySQL后不久，就发行了MySQL的企业版（不再免费）！

### 6. MVC

MVC即模型－视图－控制器，是Xerox PARC在八十年代为编程语言Smalltalk－80发明的一种软件设计模式，至今已被广泛使用。最近几年被推荐为Sun公司J2EE平台的设计模式，并且受到越来越多的使用ColdFusion和PHP的开发者的欢迎。

MVC是一种设计模式，它强制性的使应用程序的输入、处理和输出分开。使用MVC应用程序被分成三个核心部件：模型、视图、控制器。它们各自处理自己的任务.

#### （1）模型

模型表示企业数据和业务规则。在MVC的三个部件中，模型拥有最多的处理任务。例如它可能用象EJBs和ColdFusion Components这样的构件对象来处理数据库。被模型返回的数据是中立的，就是说模型与数据格式无关，这样一个模型能为多个视图提供数据。由于应用于模型的代码只需写一次就可以被多个视图重用，所以减少了代码的重复性。

#### （2）视图

视图是用户看到并与之交互的界面。对老式的Web应用程序来说，视图就是由HTML元素组成的界面，在新式的Web应用程序中，HTML依旧在视图中扮演着重要的角色，但一些新的技术已层出不穷，它们包括Macromedia Flash和象XHTML，XML/XSL，WML等一些标识语言和Web services.如何处理应用程序的界面变得越来越有挑战性。MVC一个大的好处是它能为你的应用程序处理很多不同的视图。在视图中其实没有真正的处理发生，不管这些数据是联机存储的还是一个雇员列表，作为视图来讲，它只是作为一种输出数据并允许用户操纵的方式。

#### （3）控制器

控制器接受用户的输入并调用模型和视图去完成用户的需求。所以当单击Web页面中的超链接和发送HTML表单时，控制器本身不输出任何东西和做任何的处理。它只是接收请求并决定调用哪个模型构件去处理请求，然后确定用哪个视图来显示模型处理返回的数据。

综上所述，MVC的处理过程是首先控制器接收用户的请求，并决定应该调用哪个模型来进行处理，然后模型用业务逻辑来处理用户的请求并返回数据，最后控制器用相应的视图格式化模型返回的数据，并通过表示层呈现给用户。

### 6. SSM

SSM为Spring+SpringMVC+ MyBatis的缩写，由Spring、MyBatis两个开源框架整合而成（SpringMVC是Spring中的部分内容）。

#### （1）Spring

Spring是一个开源框架，Spring是于2003 年兴起的一个轻量级的Java 开发框架，由Rod Johnson 在其著作Expert One-On-One J2EE Development and Design中阐述的部分理念和原型衍生而来。它是为了解决企业应用开发的复杂性而创建的。Spring使用基本的JavaBean来完成以前只可能由EJB完成的事情。然而，Spring的用途不仅限于服务器端的开发。从简单性、可测试性和松耦合的角度而言，任何Java应用都可以从Spring中受益。 简单来说，Spring是一个轻量级的控制反转（IoC）和面向切面（AOP）的容器框架。

#### （2）SpringMVC

Spring MVC属于SpringFrameWork的后续产品，已经融合在Spring Web Flow里面。Spring MVC分离了控制器、模型对象、分派器以及处理程序对象的角色，这种分离让它们更容易进行定制。

#### （3）MyBatis

MyBatis本是apache的一个开源项目iBatis, 2010年这个项目由apache software foundation迁移到了google code，并且改名为MyBatis 。MyBatis是一个基于Java的持久层框架。iBATIS提供的持久层框架包括SQL Maps和Data Access Objects（DAO）MyBatis 消除了几乎所有的JDBC代码和参数的手工设置以及结果集的检索。MyBatis 使用简单的 XML或注解用于配置和原始映射，将接口和 Java 的POJOs（Plain Old Java Objects，普通的 Java对象）映射成数据库中的记录。

### 6. JSP

JSP 与 PHP、ASP、[ASP.NET](http://ASP.NET "ASP.NET") 等语言类似，运行在服务端的语言。

JSP（全称Java Server Pages）是由 Sun Microsystems 公司倡导和许多公司参与共同创建的一种使软件开发者可以响应客户端请求，而动态生成 HTML、XML 或其他格式文档的Web网页的技术标准。

JSP 技术是以 Java 语言作为脚本语言的，JSP 网页为整个服务器端的 Java 库单元提供了一个接口来服务于HTTP的应用程序。

JSP文件后缀名为 \***.jsp** 。

JSP开发的WEB应用可以跨平台使用，既可以运行在 Linux 上也能运行在 Windows 上。

### 7. 系统开发平台

系统的开发是在Tomcat环境下进行的。Tomcat是一个免费的开源的Servlet容器，它是Apache基金会的Jakarta项目中的一个核心项目，由Apache，Sun和其它一些公司及个人共同开发而成。由于有了Sun的参与和支持，最新的Servlet和Jsp规范总能在Tomcat中得到体现。Tomcat被Java World杂志的编辑选为2001年度最具创新的Java产品，可见其在业界的地位。

Tomcat的环境主要有以下几方面技术优势：

1．Tomcat中的应用程序是一个WAR（Web Archive）文件。WAR是Sun提出的一种Web应用程序格式，与JAR类似，也是许多文件的一个压缩包。

2．在Tomcat中，应用程序的部署很简单，你只需将你的WAR放到Tomcat的webapp目录下，Tomcat会自动检测到这个文件，并将其解压。

3．Tomcat不仅仅是一个Servlet容器，它也具有传统的Web服务器的功能：处理html页面。

4．Tomcat也可以与其它一些软件集成起来实现更多的功能。

### 8. 运行环境

操作系统：Windows XP以上版本。

服务器软件：Tomcat6.0以上版本。

浏览器：IE、Fire Fox、Google Chrome。

# 三、医院住院管理系统数据库表设计文档

**数据库名：**hospital

**文档版本：**V1.0.0

**文档描述：**医院住院管理系统数据库表设计描述

## 表admins

|      |                 |          |      |        |          |      |        |      |
| ---- | --------------- | -------- | ---- | ------ | -------- | ---- | ------ | ---- |
| 编号 | 名称            | 数据类型 | 长度 | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| 1    | admin\_name     | varchar  | 8    | 0      | N        | Y    |        |      |
| 2    | admin\_password | varchar  | 20   | 0      | N        | N    |        |      |

## 表bed

|      |           |          |      |        |          |      |        |                            |
| ---- | --------- | -------- | ---- | ------ | -------- | ---- | ------ | -------------------------- |
| 编号 | 名称      | 数据类型 | 长度 | 小数位 | 允许空值 | 主键 | 默认值 | 说明                       |
| 1    | bed\_id   | varchar  | 6    | 0      | N        | Y    |        | 床位号，主键               |
| 2    | bed\_stat | int      | 10   | 0      | N        | N    | 1      | 床位状态，空闲为1，非空为0 |
| 3    | ward\_id  | varchar  | 4    | 0      | N        | N    |        | 病房编号，外键             |

## 表department

|      |                  |          |      |        |          |      |        |                |
| ---- | ---------------- | -------- | ---- | ------ | -------- | ---- | ------ | -------------- |
| 编号 | 名称             | 数据类型 | 长度 | 小数位 | 允许空值 | 主键 | 默认值 | 说明           |
| 1    | department\_id   | varchar  | 4    | 0      | N        | Y    |        | 科室编号，主键 |
| 2    | department\_name | varchar  | 30   | 0      | N        | N    |        | 科室名称       |
| 3    | department\_ph   | varchar  | 11   | 0      | Y        | N    |        | 科室电话       |

## 表doctor

|      |                |          |       |        |          |      |        |                |
| ---- | -------------- | -------- | ----- | ------ | -------- | ---- | ------ | -------------- |
| 编号 | 名称           | 数据类型 | 长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明           |
| 1    | doctor\_id     | varchar  | 6     | 0      | N        | Y    |        | 医生编号，主键 |
| 2    | doctor\_name   | varchar  | 30    | 0      | N        | N    |        | 医生姓名       |
| 3    | doctor\_sex    | varchar  | 4     | 0      | N        | N    |        | 性别           |
| 4    | doctor\_age    | decimal  | 4     | 0      | N        | N    |        | 年龄           |
| 5    | doctor\_ph     | varchar  | 11    | 0      | Y        | N    |        | 联系方式       |
| 6    | introduction   | text     | 65535 | 0      | Y        | N    |        | 个人简介       |
| 7    | department\_id | varchar  | 4     | 0      | N        | N    |        | 科室编号，外键 |

## 表doctors

|      |                  |          |      |        |          |      |        |      |
| ---- | ---------------- | -------- | ---- | ------ | -------- | ---- | ------ | ---- |
| 编号 | 名称             | 数据类型 | 长度 | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| 1    | doctor\_username | varchar  | 6    | 0      | N        | Y    |        |      |
| 2    | doctor\_password | varchar  | 20   | 0      | N        | N    |        |      |

## 表history

|      |               |          |      |        |          |      |        |      |
| ---- | ------------- | -------- | ---- | ------ | -------- | ---- | ------ | ---- |
| 编号 | 名称          | 数据类型 | 长度 | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| 1    | count\_id     | int      | 10   | 0      | N        | Y    |        |      |
| 2    | patient\_name | varchar  | 30   | 0      | Y        | N    |        |      |
| 3    | resident\_id  | varchar  | 18   | 0      | Y        | N    |        |      |
| 4    | patient\_sex  | varchar  | 4    | 0      | Y        | N    |        |      |
| 5    | patient\_age  | decimal  | 4    | 0      | Y        | N    |        |      |
| 6    | patient\_ph   | varchar  | 11   | 0      | Y        | N    |        |      |
| 7    | in\_time      | date     | 10   | 0      | Y        | N    |        |      |
| 8    | out\_time     | date     | 10   | 0      | Y        | N    |        |      |
| 9    | doctor\_name  | varchar  | 30   | 0      | Y        | N    |        |      |
| 10   | bed\_id       | varchar  | 6    | 0      | Y        | N    |        |      |

## 表outhospital

|      |              |          |       |        |          |      |        |      |
| ---- | ------------ | -------- | ----- | ------ | -------- | ---- | ------ | ---- |
| 编号 | 名称         | 数据类型 | 长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| 1    | count\_id    | int      | 10    | 0      | N        | Y    |        |      |
| 2    | patient\_id  | varchar  | 8     | 0      | N        | N    |        |      |
| 3    | submit\_date | date     | 10    | 0      | Y        | N    |        |      |
| 4    | postscript   | text     | 65535 | 0      | Y        | N    |        |      |
| 5    | stat         | int      | 10    | 0      | N        | N    |        |      |

## 表patient

|      |                 |          |       |        |          |      |        |                    |
| ---- | --------------- | -------- | ----- | ------ | -------- | ---- | ------ | ------------------ |
| 编号 | 名称            | 数据类型 | 长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明               |
| 1    | patient\_id     | varchar  | 8     | 0      | N        | Y    |        | 病人编号，主键     |
| 2    | resident\_id    | varchar  | 18    | 0      | N        | N    |        | 身份证号，唯一     |
| 3    | patient\_name   | varchar  | 30    | 0      | N        | N    |        | 姓名               |
| 4    | patient\_sex    | varchar  | 4     | 0      | N        | N    |        | 性别               |
| 5    | patient\_age    | decimal  | 4     | 0      | N        | N    |        | 年龄               |
| 6    | address         | text     | 65535 | 0      | Y        | N    |        | 住址               |
| 7    | patient\_ph     | varchar  | 11    | 0      | N        | N    |        | 联系方式           |
| 8    | register\_price | decimal  | 9     | 2      | N        | N    |        | 挂号费             |
| 9    | in\_time        | date     | 10    | 0      | N        | N    |        | 入院时间           |
| 10   | out\_time       | date     | 10    | 0      | N        | N    |        | 出院时间           |
| 11   | host\_ex        | decimal  | 9     | 2      | N        | N    |        | 住院费用           |
| 12   | doctor\_id      | varchar  | 6     | 0      | N        | N    |        | 主治医生编号，外键 |
| 13   | bed\_id         | varchar  | 6     | 0      | N        | N    |        | 病床编号，外键     |

## 表prescribe

|      |                   |          |       |        |          |      |        |                    |
| ---- | ----------------- | -------- | ----- | ------ | -------- | ---- | ------ | ------------------ |
| 编号 | 名称              | 数据类型 | 长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明               |
| 1    | prescribe\_id     | varchar  | 12    | 0      | N        | Y    |        | 处方编号，主键     |
| 2    | prescribe\_detail | text     | 65535 | 0      | Y        | N    |        | 处方内容           |
| 3    | create\_time      | date     | 10    | 0      | N        | N    |        | 开具时间           |
| 4    | treat\_ex         | decimal  | 9     | 2      | N        | N    |        | 治疗费用           |
| 5    | doctor\_id        | varchar  | 6     | 0      | N        | N    |        | 主治医生编号，外键 |
| 6    | patient\_id       | varchar  | 8     | 0      | N        | N    |        | 病人编号，外键     |

## 表register\_doc

|      |              |          |      |        |          |      |        |      |
| ---- | ------------ | -------- | ---- | ------ | -------- | ---- | ------ | ---- |
| 编号 | 名称         | 数据类型 | 长度 | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| 1    | count\_id    | int      | 10   | 0      | N        | Y    |        |      |
| 2    | patient\_id  | varchar  | 8    | 0      | N        | N    |        |      |
| 3    | doctor\_id   | varchar  | 6    | 0      | N        | N    |        |      |
| 4    | submit\_date | date     | 10   | 0      | Y        | N    |        |      |
| 5    | stat         | int      | 10   | 0      | N        | N    | 0      |      |

## 表report

|      |                |          |       |        |          |      |        |                |
| ---- | -------------- | -------- | ----- | ------ | -------- | ---- | ------ | -------------- |
| 编号 | 名称           | 数据类型 | 长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明           |
| 1    | report\_id     | varchar  | 12    | 0      | N        | Y    |        | 报告编号，主键 |
| 2    | create\_time   | date     | 10    | 0      | N        | N    |        | 报告日期       |
| 3    | report\_detail | text     | 65535 | 0      | Y        | N    |        | 报告内容       |
| 4    | report\_ex     | decimal  | 9     | 2      | N        | N    |        | 检验费用       |
| 5    | department\_id | varchar  | 4     | 0      | N        | N    |        | 科室编号，外键 |
| 6    | patient\_id    | varchar  | 8     | 0      | N        | N    |        | 病人编号，外键 |

## 表users

|      |          |          |      |        |          |      |        |      |
| ---- | -------- | -------- | ---- | ------ | -------- | ---- | ------ | ---- |
| 编号 | 名称     | 数据类型 | 长度 | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| 1    | username | varchar  | 8    | 0      | N        | Y    |        |      |
| 2    | password | varchar  | 20   | 0      | N        | N    |        |      |

## 表ward

|      |             |          |      |        |          |      |        |                    |
| ---- | ----------- | -------- | ---- | ------ | -------- | ---- | ------ | ------------------ |
| 编号 | 名称        | 数据类型 | 长度 | 小数位 | 允许空值 | 主键 | 默认值 | 说明               |
| 1    | ward\_id    | varchar  | 4    | 0      | N        | Y    |        | 病房编号，主键     |
| 2    | ward\_nurse | varchar  | 30   | 0      | N        | N    |        | 护理护士姓名       |
| 3    | bed\_num    | decimal  | 3    | 0      | N        | N    |        | 空闲床位数         |
| 4    | doctor\_id  | varchar  | 6    | 0      | N        | N    |        | 值班医生编号，外键 |

## 表ward\_ex

|      |              |          |      |        |          |      |        |      |
| ---- | ------------ | -------- | ---- | ------ | -------- | ---- | ------ | ---- |
| 编号 | 名称         | 数据类型 | 长度 | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| 1    | count\_id    | int      | 10   | 0      | N        | Y    |        |      |
| 2    | patient\_id  | varchar  | 8    | 0      | N        | N    |        |      |
| 3    | submit\_date | date     | 10   | 0      | Y        | N    |        |      |
| 4    | o\_bed\_id   | varchar  | 6    | 0      | Y        | N    |        |      |
| 5    | bed\_id      | varchar  | 6    | 0      | N        | N    |        |      |
| 6    | stat         | int      | 10   | 0      | N        | N    | 0      |      |

# 四、系统登录与登出实现

### 1、系统登录

使用 PC 端或移动端浏览器(支持 Firefox、chrome、Edge 浏览器)访问系统登录页面，输入正确的用户名、密码和验证码，点击按钮

```markdown
#1.管理员登录
   管理员登录进入管理员登录页面，可以做病人的信息录入与管理，医生信息录入与管理，
   病房管理，出入院管理等
#2.医生登录
    医生登录主要管理的是病人信息，开处方，看自己有哪些病人等
#3.病人登录
   病人登录可以挂号，查看自己的医生信息，转病床，查看缴费信息，出院手续办理等
```

![](https://img-blog.csdnimg.cn/img_convert/3a5cf268b18e5f2eb5c8427b2aded42b.png)

如果信息正确，系统将自动跳转到用户首页

*   管理员首页

![](https://img-blog.csdnimg.cn/img_convert/e3aa7ad0ac4a6b58d473f21dc0c1bd32.png)

*   医生首页

![](https://img-blog.csdnimg.cn/img_convert/ba7321eadde506fc9ac718f6d8897dd3.png)

*   病人首页

![](https://img-blog.csdnimg.cn/img_convert/8f92cdb9c89ccf1da287cefc9cba2ce3.png)

*   注意：如果您不慎忘记了用户名或密码，请联系所在医院系统管理员协助解决。

### 2、系统登出

在用户首页，点击右上角的系统登出，选择红色的登出，系统将自动退出，并跳转至登录页面。

![](https://img-blog.csdnimg.cn/img_convert/e561d7ab86f34d7f2bca0d7cab9d8fe3.png)

# 五、管理员系统

系统首次使用之前，请联系您所在医院的系统管理员以【系统管理员】角色(系统管理员角色默认账户和密码皆为:admin)登录系统进行系统配置初始化。

注意：系统不进行初始化将无法使用！

### 1、首页

*   第一次登录可以下载系统使用说明书

![](https://img-blog.csdnimg.cn/img_convert/2d48ea75cac929f1e9279340a8dc9c84.png)

### 2、修改密码

*   可以修改当前用户的密码

![](https://img-blog.csdnimg.cn/img_convert/e9fab64a31ca2568d24deb40a71191fd.png)

### 3、刷新

*   就是当前页面如果出现卡顿，可以刷新页面

### 4、帮助

*   帮助可以下载使用说明书，也可以通过图片查看系统使用说明

![](https://img-blog.csdnimg.cn/img_convert/f725a102242a1ecff7610e31ad6cbdb1.png)

### 5、实时疫情

*   可以查看国内的疫情信息

![](https://img-blog.csdnimg.cn/img_convert/ba4ed6173d3b28e64249735ba9386c0a.png)

### 6、医院信息网

*   查看医院的信息及知名医生，方便预约

![](https://img-blog.csdnimg.cn/img_convert/78b43d88b3407a51cd24b7c8bbab5b44.png)

### 7、信息查询

#### （1）病人

*   查看病人信息

![](https://img-blog.csdnimg.cn/img_convert/66fd2772e130efb3340eba1c57871ad1.png)

#### （2）医生

![](https://img-blog.csdnimg.cn/img_convert/455918236c5141ac3183e08df2757b9e.png)

#### （3）病房

![](https://img-blog.csdnimg.cn/img_convert/c3c44a8cb51e829f251bf9fe9aa538c2.png)

#### （4）科室

![](https://img-blog.csdnimg.cn/img_convert/fb8d743da9ce3a17ceff724a481ee326.png)

### 8、操作

![](https://img-blog.csdnimg.cn/img_convert/64b35eb21664372388ff345122333c20.png)

#### （1）医生录入

录入新进入的医生信息，分配部门等

![](https://img-blog.csdnimg.cn/img_convert/6e576506c3875a0144a1ed7250476dbc.png)

#### （2）病人录入

主要就是部门的一些住院登记

![](https://img-blog.csdnimg.cn/img_convert/1131e71bef8c9f4e471bd51d64c11b5c.png)

#### （3）新增病房

新增加的病房录入系统

![](https://img-blog.csdnimg.cn/img_convert/77e270176c3bdd598f80f338a7825d06.png)

#### （4）新增科室

新增加的科室录入系统

![](https://img-blog.csdnimg.cn/img_convert/455670543cab3ce83d024e96b82d5041.png)

#### （5）申请核实

主要涉及病房出院申请和换病房申请

![](https://img-blog.csdnimg.cn/img_convert/293716b3d6bfccd5f6519cf281af703f.png)

# 六、医生系统实现

系统首次使用之前，请联系您所在医院的系统管理员以【系统管理员】角色(系统管理员角色默认账户和密码皆为:admin)登录系统进行系统配置初始化。

注意：系统不进行初始化将无法使用！

### 1、首页

*   第一次登录可以下载系统使用说明书

![](https://img-blog.csdnimg.cn/img_convert/423ecf5ce710484b07030ae87ffd2f66.png)

### 2、修改密码

*   可以修改当前用户的密码

![](https://img-blog.csdnimg.cn/img_convert/a8546604b747637e114812177360e82d.png)

### 3、刷新

*   就是当前页面如果出现卡顿，可以刷新页面

### 4、帮助

*   帮助可以下载使用说明书，也可以通过图片查看系统使用说明

![](https://img-blog.csdnimg.cn/img_convert/a2e28f11618df8b55b70b30b25539b14.png)

### 5、实时疫情

*   可以查看国内的疫情信息

![](https://img-blog.csdnimg.cn/img_convert/441b3191d8da60d19ef3202e29546dfc.png)

### 6、医院信息网

*   查看医院的信息及知名医生，方便预约

![](https://img-blog.csdnimg.cn/img_convert/1570dc07705cce7dd2c0558013e07e21.png)

### 7、使用说明参考

![](https://img-blog.csdnimg.cn/img_convert/54e44aa0a7a0d6746b8c1d1fd07bf924.png)

# 七、病人系统实现

系统首次使用之前，请联系您所在医院的系统管理员以【系统管理员】角色(系统管理员角色默认账户和密码皆为:admin)登录系统进行系统配置初始化。

注意：系统不进行初始化将无法使用！

### 1、首页

*   第一次登录可以下载系统使用说明书

![](https://img-blog.csdnimg.cn/img_convert/212b444eeaa5dc01445dc8b309bcbd8e.png)

### 2、修改密码

*   可以修改当前用户的密码

![](https://img-blog.csdnimg.cn/img_convert/af34770f905068374c9690482e19aaae.png)

### 3、刷新

*   就是当前页面如果出现卡顿，可以刷新页面

### 4、帮助

*   帮助可以下载使用说明书，也可以通过图片查看系统使用说明

![](https://img-blog.csdnimg.cn/img_convert/e3b1dc4be48f2eaf5aef05f841f0d232.png)

### 5、实时疫情

*   可以查看国内的疫情信息

![](https://img-blog.csdnimg.cn/img_convert/3fe6cfbba324cf0d3a14854afaedeeda.png)

### 6、医院信息网

*   查看医院的信息及知名医生，方便预约

![](https://img-blog.csdnimg.cn/img_convert/d306a95abb0e71710204873445507dd6.png)

### 7、使用说明参考

![](https://img-blog.csdnimg.cn/img_convert/8d5720477cf8ee15f83092963971b389.png)

### 八、项目开源

*   医院住院管理系统开源地址：[https://gitee.com/wanghengjie563135/hospitalInformationSystem.git](https://gitee.com/wanghengjie563135/hospitalInformationSystem.git "https://gitee.com/wanghengjie563135/hospitalInformationSystem.git")

> 注意：安装部署有问题，需要解决可以私聊我的！

*   如果还需要数据库设计和项目使用手册的可以CSDN下载：[https://download.csdn.net/download/weixin\_44385486/85613817](https://download.csdn.net/download/weixin_44385486/85613817 "https://download.csdn.net/download/weixin_44385486/85613817")

![](https://img-blog.csdnimg.cn/img_convert/6a42473bf4412b5109fc14974e3e44a8.png)

> 🧐 微信公众号：搜索《程序员小王》
> 📒原创不易,如果觉得不错请给我一个,三连、收藏、加关注,需要资料的同学可以私聊我!
> 😉 有问题可以点击下方私信交流 😆
> 如果我的博客对您有帮助 再次希望大家点赞 👍 收藏 ⭐留言 📝 啦 、感谢大家对我支持,让我有了更多的创作动力,希望我的博客能帮助到你

![输入图片说明](https://images.gitee.com/uploads/images/2022/0612/003254_6eeed483_9131808.png "屏幕截图.png")
