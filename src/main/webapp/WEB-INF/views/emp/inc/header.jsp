<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<nav class="navbar navbar-default navbar-fixed-top">
   <div class="container">
      <div class="navbar-header">
         <button type="button" class="navbar-toggle collapsed"
            data-toggle="collapse" data-target="#navbar" aria-expanded="false"
            aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span> <span
               class="icon-bar"></span> <span class="icon-bar"></span> <span
               class="icon-bar"></span>
         </button>
         <a class="navbar-brand" href="#">Davizn</a>
      </div>
      <div id="navbar" class="collapse navbar-collapse">
         <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li class="dropdown"><a href="#" class="dropdown-toggle"
               data-toggle="dropdown" role="button" aria-expanded="false">Emp
                  Management <span class="caret"></span>
            </a>
               <ul class="dropdown-menu" role="menu">
                  <li><a href="empList.dvn">Emp List</a></li>
                  <li><a href="empSearch.dvn">Emp Search</a></li>
                  <li class="divider"></li>
                  <li><a href="empCreate.dvn">Emp Create</a></li>
                  <li><a href="empModifiedView.xml">Emp Modified</a></li>
                  <li><a href="empModifiedView.json">Emp Modified2</a></li>
               </ul></li>
         </ul>
      </div>
      <!--/.nav-collapse -->
   </div>
</nav>