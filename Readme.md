<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128543779/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E2168)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [DataClasses.designer.cs](./CS/WebSite/App_Code/DataClasses.designer.cs) (VB: [DataClasses.designer.vb](./VB/WebSite/App_Code/DataClasses.designer.vb))
* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
<!-- default file list end -->
# How to use timestamp to check for data conflicts when updating data via LinqDataSource


<p>This demo is based on the <a href="http://msdn.microsoft.com/en-us/library/bb470449.aspx">Using a Timestamp with the LinqDataSource Control to Check Data Integrity</a> MSDN article. It illustrates how to use a timestamp to check for data conflicts when updating data via a <a href="http://msdn.microsoft.com/en-us/library/system.web.ui.webcontrols.linqdatasource.aspx">LinqDataSource</a> control. </p><p>The LinqDataSource control stores the timestamp value on the Web page. When a user updates or deletes data, the LinqDataSource control checks the timestamp value against the current timestamp value in the database. If the LinqDataSource control detects that the value in the timestamp column has changed, the control does not update or delete a record. In this case, the record has been changed by another process. Instead, the LinqDataSource control raises an exception that indicates that the record has changed.</p><p>A timestamp column is automatically updated by SQL Server every time a record is modified. For more information, see <a href="http://msdn.microsoft.com/en-us/library/ms182776.aspx">Timestamp (Transact-SQL)</a>. </p>

```sql
<newline/>
CREATE TABLE DemoTable(<newline/>
...    <newline/>
    [TimeStamp] timestamp NOT NULL,<newline/>
...<newline/>
)<newline/>

```



```cs
<newline/>
...<newline/>
[Column(Storage="_TimeStamp", ... UpdateCheck=UpdateCheck.Always)]<newline/>
public System.Data.Linq.Binary TimeStamp {<newline/>
...<newline/>
 }<newline/>

```



```vb
<newline/>
...<newline/>
<Column(Storage:="_TimeStamp", ... UpdateCheck:=UpdateCheck.Always)> _<newline/>
Public Property TimeStamp() As System.Data.Linq.Binary <newline/>
...<newline/>
End Property<newline/>

```

<p>The column's attribute <a href="http://msdn.microsoft.com/en-us/library/system.data.linq.mapping.updatecheck.aspx">UpdateCheck=UpdateCheck.Always</a> means that records should be always tested for concurrency conflicts.</p><p><strong>See Also:</strong><br />
<a href="http://msdn.microsoft.com/en-us/library/bb399373.aspx">Optimistic Concurrency Overview (LINQ to SQL)</a></p>

<br/>


