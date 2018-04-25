<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
    <%@ page import="java.util.*"%>
        <%@ page import="java.io.*"%>
            <html xmlns="http://www.w3.org/1999/xhtml">

            <head>
                <style type="text/css"> </style>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <link rel="stylesheet" href="css/cloud3.css">
                <title>Weblogic Automation Demo</title>
            </head>

            <body>
                <header class="navbar-fixed-top">
                    <hgroup class="container">
                        <div class="cloudLogo columns">
                            <a href='http://cloud.oracle.com' target="_blank"><img alt="Oracle Cloud logo" src="images/oracle-cloud-logo.png" border="0" /></a>
                        </div>
                    </hgroup>
                </header>

                <div class="blueBanner">
                    <div class="container">

                        <div class="blueBannerLogo img-center-align">
                            <img src='images/cloudgs_occs.png' alt="" />
                        </div>

                        <div class="blueBannerHeading">
                            <h1 class="blueBannerTitleWithSubtitle">
                                <a style="color: #ffffff">Weblogic Automation w/ Docker, Terraform, Jenkins, and Chef</a>
                            </h1>
                        </div>

                        <div class="blueBannerButton"></div>
                    </div>
                </div>

                <div class="container serviceContainer" style="margin-top: 150px;">
                    <div class="overviewLayout">
                        <div>
                          <br>Change text: <strong>Automation Demo</strong><br>
                            <br>Current server time:
                            <%= new java.util.Date() %> <br>
                                <br>
                                <p>
                                    <span style="color: #333; text-decoration: none">This JEE application was built to demonstrate the use of infrasturcture-as-code principles and common open-source technologies with Oracle Cloud.</span>
                                </p>
                                <p></p>
                                <p></p>
                                <p>
                                    <span style="color: #333; text-decoration: none">Upon code being checked in, a Jenkins job detects the change and kicks off a maven build of the application.  Also, the Jenkins job creates a new Docker container off a Weblogic 12.2.1 image from a private repository, configures a domain, deploys the newly built application into that domain, and pushes the app image into the Docker repository.</span>
                                </p>
                                <p></p>
                                <p></p>
                                <p>
                                    <span style="color: #333; text-decoration: none">The first job triggers a second Jenkins job which kicks of a Terraform operation that stands up a virtual cloud network (VCN), internet gateway, security list, routing table, subnet, and compute instance in the Oracle Public Cloud.  After that infrastructure is created, Terraform triggers a Chef provisioner which configures the compute instance by installing the newly built docker container.</span>
                                </p>
                                <p></p>
                                <p></p>
                                <p>
                                    <span style="color: #333; text-decoration: none">This demonstrates how an entire cloud-based infrastructure could be automated in under 10 minutes.</span>
                                </p>
                                <div>
                                    <img max-width="100%" height="auto" src="images/architecture.png"><br>
                                    <br>
                                </div>
                        </div>
                    </div>
                </div>


                <footer>
                    <div class="opcGlobalFooter">
                        <div class="container">
                            <div class="footerLeft columns">
                                <ul>
                                    <li><a href='http://www.oracle.com/corporate/index.html' target="_blank">About Oracle</a></li>
                                    <li><a href='http://www.oracle.com/corporate/contact/index.htm' target="_blank">Contact Us</a></li>
                                    <li><a href='http://www.oracle.com/us/legal/index.html' target="_blank">Legal Notices</a></li>
                                    <li><a href='http://www.oracle.com/us/legal/terms/index.html' target="_blank">Terms of Use</a></li>
                                    <li><a href='http://www.oracle.com/us/legal/privacy/index.html' target="_blank">Your Privacy Rights</a></li>
                                </ul>

                                <p>Copyright &copy; 2017 Oracle and/or its affiliates. All rights reserved.</p>

                            </div>

                        </div>
                    </div>
                </footer>
            </body>

            </html>
