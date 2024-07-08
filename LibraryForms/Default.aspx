<%@ Page Language="C#"  Debug="true" AutoEventWireup="true" validateRequest="false" CodeBehind="Default.aspx.cs" Inherits="LibraryForms.Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="BooksData" InsertItemPosition="LastItem">
         <AlternatingItemTemplate>
             <span style="background-color: #FFFFFF; color: #284775;">
                 Фамилия Автора:
                 <asp:Label Text='<%# Eval("author") %>' runat="server" ID="authorLabel" /><br />
                 Год Издания:
                 <asp:Label Text='<%# Eval("year") %>' runat="server" ID="yearLabel" /><br />
                 Название:
                 <asp:Label Text='<%# Eval("title") %>' runat="server" ID="titleLabel" /><br />
                 Описание:
                 <asp:Label Text='<%# Eval("description") %>' runat="server" ID="descriptionLabel" /><br />
                 Оглавление:
                 <asp:Label Text='<%# Eval("table_contents") %>' runat="server" ID="table_contentsLabel" /><br />
                 <asp:Button runat="server" CommandName="Edit" Text="Изменить" ID="EditButton" />
                 <asp:Button runat="server" CommandName="Delete" Text="Удалить" ID="DeleteButton" />
                 <br />
                 <br />
             </span>
         </AlternatingItemTemplate>
         <EditItemTemplate>
             <span style="background-color: #999999;">
                 Фамилия Автора:
                 <asp:TextBox Text='<%# Bind("author") %>' runat="server" ID="authorTextBox" /><br />
                 Год Издания:
                 <asp:TextBox Text='<%# Bind("year") %>' runat="server" ID="yearTextBox" /><br />
                 Название:
                 <asp:TextBox Text='<%# Bind("title") %>' runat="server" ID="titleTextBox" /><br />
                 Описание:
                 <asp:TextBox Text='<%# Bind("description") %>' runat="server" ID="descriptionTextBox" /><br />
                 Оглавление:
                 <asp:TextBox Text='<%# Bind("table_contents") %>' runat="server" ID="table_contentsTextBox" /><br />
                 <asp:Button runat="server" CommandName="Update" Text="Обновить" ID="UpdateButton" /><asp:Button runat="server" CommandName="Cancel" Text="Отмена" ID="CancelButton" /><br />
                 <br />
             </span>
         </EditItemTemplate>
         <EmptyDataTemplate>
             <span>Нет данных.</span>
         </EmptyDataTemplate>
         <InsertItemTemplate>
             <span style="">
                 Фамилия Автора:
                 <asp:TextBox Text='<%# Bind("author") %>' runat="server" ID="authorTextBox" /><br />
                 Год Издания:
                 <asp:TextBox Text='<%# Bind("year") %>' runat="server" ID="yearTextBox" /><br />
                 Название:
                 <asp:TextBox Text='<%# Bind("title") %>' runat="server" ID="titleTextBox" /><br />
                 Описание:
                 <asp:TextBox Text='<%# Bind("description") %>' runat="server" ID="descriptionTextBox" /><br />
                 Оглавление:
                 <asp:TextBox Text='<%# Bind("table_contents") %>' runat="server" ID="table_contentsTextBox" /><br />
                 <asp:Button runat="server" CommandName="Insert" Text="Добавить" ID="InsertButton" /><asp:Button runat="server" CommandName="Cancel" Text="Очистить" ID="CancelButton" /><br />
                 <br />
             </span>
         </InsertItemTemplate>
         <ItemTemplate>
             <span style="background-color: #E0FFFF; color: #333333;">
                 Фамилия Автор:
                 <asp:Label Text='<%# Eval("author") %>' runat="server" ID="authorLabel" /><br />
                 Год Издания:
                 <asp:Label Text='<%# Eval("year") %>' runat="server" ID="yearLabel" /><br />
                 Название:
                 <asp:Label Text='<%# Eval("title") %>' runat="server" ID="titleLabel" /><br />
                 Описание:
                 <asp:Label Text='<%# Eval("description") %>' runat="server" ID="descriptionLabel" /><br />
                 Оглавление:
                 <asp:Label Text='<%# Eval("table_contents") %>' runat="server" ID="table_contentsLabel" /><br />
                 <asp:Button runat="server" CommandName="Edit" Text="Изменить" ID="EditButton" />
                 <asp:Button runat="server" CommandName="Delete" Text="Удалить" ID="DeleteButton" />
                 <br />
                 <br />
             </span>
         </ItemTemplate>
         <LayoutTemplate>
             <div runat="server" id="itemPlaceholderContainer" style="font-family: Verdana, Arial, Helvetica, sans-serif;"><span runat="server" id="itemPlaceholder" /></div>
             <div style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF;">
                 <asp:DataPager runat="server" ID="DataPager1">
                     <Fields>
                         <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                         <asp:NumericPagerField></asp:NumericPagerField>
                         <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                     </Fields>
                 </asp:DataPager>

             </div>
         </LayoutTemplate>
         <SelectedItemTemplate>
             <span style="background-color: #E2DED6; font-weight: bold; color: #333333;">
                 Фамилия Автора:
                 <asp:Label Text='<%# Eval("author") %>' runat="server" ID="authorLabel" /><br />
                 Год:
                 <asp:Label Text='<%# Eval("year") %>' runat="server" ID="yearLabel" /><br />
                 Название:
                 <asp:Label Text='<%# Eval("title") %>' runat="server" ID="titleLabel" /><br />
                 Описание:
                 <asp:Label Text='<%# Eval("description") %>' runat="server" ID="descriptionLabel" /><br />
                 Оглавление:
                 <asp:Label Text='<%# Eval("table_contents") %>' runat="server" ID="table_contentsLabel" /><br />
                 <asp:Button runat="server" CommandName="Edit" Text="Изменить" ID="EditButton" />
                 <asp:Button runat="server" CommandName="Delete" Text="Удалить" ID="DeleteButton" />
                 <br />
                 <br />
             </span>
         </SelectedItemTemplate>
     </asp:ListView>

     <asp:SqlDataSource runat="server" ID="BooksData" ConnectionString='<%$ ConnectionStrings:LibraryConnectionString %>' DeleteCommand="DeleteBook" DeleteCommandType="StoredProcedure" InsertCommand="AddBook" InsertCommandType="StoredProcedure" SelectCommand="SelectedBooks" SelectCommandType="StoredProcedure" UpdateCommand="UpdateBook" UpdateCommandType="StoredProcedure">
         <DeleteParameters>
             <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="author" Type="String"></asp:Parameter>
             <asp:Parameter Name="year" Type="Int16"></asp:Parameter>
             <asp:Parameter Name="title" Type="String"></asp:Parameter>
             <asp:Parameter Name="description" Type="String"></asp:Parameter>
             <asp:Parameter Name="table_contents" Type="String"></asp:Parameter>
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
             <asp:Parameter Name="author" Type="String"></asp:Parameter>
             <asp:Parameter Name="year" Type="Int16"></asp:Parameter>
             <asp:Parameter Name="title" Type="String"></asp:Parameter>
             <asp:Parameter Name="description" Type="String"></asp:Parameter>
             <asp:Parameter Name="table_contents" Type="String"></asp:Parameter>
         </UpdateParameters>
     </asp:SqlDataSource>
 </form>
</body>
</html>
