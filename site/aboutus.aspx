﻿<%@ Page Title="" Language="VB" MasterPageFile="~/main.master" AutoEventWireup="false" CodeFile="aboutus.aspx.vb" Inherits="aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="Server">
       <form runat="server" id="testing">

        <div id="modal-full" class="jen-modal-full jen-modal" jen-modal>
            <div class="jen-modal-dialog jen-flex jen-flex-center jen-flex-middle" jen-height-viewport>
                <button class="jen-modal-close-full" type="button" jen-close></button>
                <div class="jen-search jen-search-large" action="/search.aspx" method="get" enctype="multipart/form-data">
                    <input type="text"
                        class="jen-search-input jen-text-center"
                        id="txtSearch"
                        onkeydown="if (event.keyCode == 13)
                        doSomething();"
                        placeholder="Search..." autofocus />
                </div>
            </div>
        </div>

    </form>
    <p>
        <h1 style="text-align: center">About Us</h1>
    </p>

    <div class="jen-child-width-1-2@m jen-grid-match" jen-grid>
        <div>
            <div class="jen-card jen-card-default jen-card-body">
                <h3 class="jen-card-title">&nbsp;</h3>

                <div class="jen-card-header">
                    <div class="jen-grid-small jen-flex-middle" jen-grid>
                        <div class="jen-width-auto">
                            <img class="jen-border-circle" width="40" height="40" src="./img/jesse.jpg">
                        </div>
                        <div class="jen-width-expand">
                            <h3 class="jen-card-title jen-margin-remove-bottom">Jesse Killinger</h3>
                            <p class="jen-text-meta jen-margin-remove-top">CNSA Student at Thaddeus Stevens College of Technology.</p>
                        </div>
                    </div>
                </div>
                <div class="jen-card-body">
                    <p>Jesse took charge of the "Code Behind" while working alongside both Evan and Nick. Shortly he will be graduating from TSCT and looking for full time employment.</p>
                </div>
                <div class="jen-card-footer">
                    <a href="https://www.linkedin.com/in/jesse-killinger-a38902137/" class="jen-button jen-button-text">Contact</a>
                </div>

                <div class="jen-grid-small jen-card jen-card-body">
                    <div class="jen-card-header">
                        <div class="jen-grid-small jen-flex-middle" jen-grid>
                            <div class="jen-width-auto">
                                &nbsp;<img class="jen-border-circle" width="40" height="40" src="./img/evan.jpg"></div>
                            <div class="jen-width-expand">
                                <h3 class="jen-card-title jen-margin-remove-bottom">Evan Templin</h3>
                                <p class="jen-text-meta jen-margin-remove-top">CNSA Student at Thaddeus Stevens College of Technology.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="jen-card-body">
                    <p>Evan was focused on the styling of the page. He worked on not only the creation but the visual appeal of the website while collaborating with both Jesse and Nick. Shortly he will be graduating from TSCT and looking to return for Computer Software Engineering.</p>
                </div>
                <div class="jen-card-footer">
                    <a href="https://www.linkedin.com/in/evan-templin-ba862384/" class="jen-button jen-button-text">Contact</a>
                </div>

                <div class="jen-card-header">
                    <div class="jen-grid-small jen-flex-middle" jen-grid>
                        <div class="jen-width-auto">
                            <img class="jen-border-circle" src="./img/nick.jpg">
                        </div>
                        <div class="jen-width-expand">
                            <h3 class="jen-card-title jen-margin-remove-bottom">Nick Luongo</h3>
                            <p class="jen-text-meta jen-margin-remove-top">CNSA Student at Thaddeus Stevens College of Technology.</p>
                        </div>
                    </div>
                </div>
                <div class="jen-card-body">
                    <p>Nick was found working away at the database integration with Louis Pharmacy while teaming up with both Evan and Jesse. Shortly Nick will be pursuing full time employment after graduating from TSCT.</p>
                </div>
                <div class="jen-card-footer">
                    <a href="https://www.linkedin.com/in/nicholas-luongo-19b147149/" class="jen-button jen-button-text">Contact</a>
                </div>


            </div>


        </div>

        <div>
            <div class="jen-card jen-card-default jen-card-body">
                <h3 class="jen-card-title">&nbsp;</h3>



                <div class="jen-card-header">
                    <div class="jen-grid-small jen-flex-middle" jen-grid>
                        <div class="jen-width-auto">
                            &nbsp;
                        </div>
                        <div class="jen-width-expand">
                            <div class="jen-card-body">
                                <h1>Our Goal</h1>
                                <p>At Louis Pharmacy, we strive to provide the outmost care for all our patients. We&#39;ve spent years in the medical industry and have gained invaluable knowledge. Utilizing our extensive database, we are able to maintain and organize your medical records with the outmost accuracy. This allows us as a pharmacy to provide quick, and consistent service to all our patients.</p>
                            </div>
                        </div>
                    </div>
                    <div class="jen-card-body">
                        <h1>Team JEN</h1>
                        <p>Team JEN was created by three minds that worked well as collaborators. Jesse, Evan, and Nick (or JEN), started off by responding to a request made by Louis Pharmacy on GitHub. The three amigos quickly formed together a well knit thinking machine and produced a brand new website for Louis Pharamacy based on the modern material website style.</p>
                    </div>
                    <div class="jen-card-body">
                        <h1>What is CNSA?</h1>
                        <p>CNSA stands for Computer and Network Systems Administation. This is a degree that is held to the highest standards at the prestigiousThaddeus Stevens College of Technology. The small technical college has been recognized by ASPEN as the one of the top 150 technical colleges in the country for 5 consectives times.</p>
                        <div class="jen-card-footer">
                            <a href="https://stevenscollege.edu/academics/associate-degrees/computer-network-systems-administration/" class="jen-button jen-button-text">Read more</a>

                        </div>

                    </div>
                </div>
            </div>
        </div>
</asp:Content>

