/*==============================================================*/
/* Database name:  PD_test                                      */
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2015/9/29 20:14:07                           */
/*==============================================================*/


/*==============================================================*/
/* Database: PD_test                                            */
/*==============================================================*/
create database PD_test
go

use PD_test
go

/*==============================================================*/
/* Table: Major                                                 */
/*==============================================================*/
create table Major (
   num                  int                  identity,
   grade                int                  not null,
   major                varchar(20)          not null,
   people               int                  not null,
   cname                varchar(40)          not null,
   type                 varchar(20)          not null,
   credit               double               not null,
   chour                int                  not null,
   otime                int                  null,
   ctime                int                  null,
   week                 varchar(10)          not null,
   teacher              varchar(10)          not null,
   remark               varchar(50)          null,
   constraint PK_MAJOR primary key (num)
)
go

