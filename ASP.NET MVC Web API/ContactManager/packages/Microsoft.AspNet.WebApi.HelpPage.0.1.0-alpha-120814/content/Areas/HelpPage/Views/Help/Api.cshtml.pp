@using System.Web.Http
@using $rootnamespace$.Areas.HelpPage.Models
@model HelpPageApiModel
           
@{
    var description = Model.ApiDescription;
    ViewBag.Title = description.HttpMethod.Method + " " + description.RelativePath;
}

<div id="body">
    <section class="featured">
        <div class="content-wrapper">
            <p>
                @Html.ActionLink("Help Page Index", "Index")             
            </p>
        </div>
    </section>
    <section class="content-wrapper main-content clear-fix">
        @Html.DisplayFor(m => Model)
    </section>
</div>

@section Scripts {
    <link type="text/css" href="~/Areas/HelpPage/HelpPage.css" rel="stylesheet" />
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.10/jquery-ui.min.js"></script>
    <link type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.10/themes/smoothness/jquery-ui.css" rel="stylesheet" />
    <script>
        $(function () {
            $('.mediaTypeTabs').tabs();
        });
    </script>
}

