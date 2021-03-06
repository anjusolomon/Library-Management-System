#pragma checksum "C:\Users\Anju\source\repos\Library\Library\Views\Branch\Detail.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "e2b2ebce1df80019fe8dc7abf70fca6525c2d4f3"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Branch_Detail), @"mvc.1.0.view", @"/Views/Branch/Detail.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Branch/Detail.cshtml", typeof(AspNetCore.Views_Branch_Detail))]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#line 1 "C:\Users\Anju\source\repos\Library\Library\Views\_ViewImports.cshtml"
using Library;

#line default
#line hidden
#line 2 "C:\Users\Anju\source\repos\Library\Library\Views\_ViewImports.cshtml"
using Library.Models;

#line default
#line hidden
#line 1 "C:\Users\Anju\source\repos\Library\Library\Views\Branch\Detail.cshtml"
using Library.Models.Branch;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"e2b2ebce1df80019fe8dc7abf70fca6525c2d4f3", @"/Views/Branch/Detail.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"dadb7a731bfbb305c411bc5eb7a307dbd6008a89", @"/Views/_ViewImports.cshtml")]
    public class Views_Branch_Detail : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<Library.Models.Branch.BranchDetailModel>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#line 3 "C:\Users\Anju\source\repos\Library\Library\Views\Branch\Detail.cshtml"
  
    ViewBag.Title = @Model.BranchName + " Branch";

#line default
#line hidden
            BeginContext(137, 2, true);
            WriteLiteral("\r\n");
            EndContext();
            DefineSection("Scripts", async() => {
                BeginContext(156, 607, true);
                WriteLiteral(@"
    <script src=""https://code.jquery.com/jquery-3.1.1.slim.min.js"" integrity=""sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n"" crossorigin=""anonymous""></script>
    <script src=""https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"" integrity=""sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb"" crossorigin=""anonymous""></script>
    <script src=""https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"" integrity=""sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn"" crossorigin=""anonymous""></script>
");
                EndContext();
            }
            );
            BeginContext(766, 2, true);
            WriteLiteral("\r\n");
            EndContext();
            DefineSection("Styles", async() => {
                BeginContext(784, 224, true);
                WriteLiteral("\r\n    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css\" integrity=\"sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ\" crossorigin=\"anonymous\">\r\n");
                EndContext();
            }
            );
            BeginContext(1011, 216, true);
            WriteLiteral("\r\n<div class=\"container\">\r\n    <div class=\"header clearfix detailHeading\">\r\n        <h2 class=\"text-muted\">Branch Information</h2>\r\n    </div>\r\n    <div class=\"jumbotron\">\r\n        <div class=\"row\">\r\n            <img");
            EndContext();
            BeginWriteAttribute("src", " src=\"", 1227, "\"", 1248, 1);
#line 23 "C:\Users\Anju\source\repos\Library\Library\Views\Branch\Detail.cshtml"
WriteAttributeValue("", 1233, Model.ImageUrl, 1233, 15, false);

#line default
#line hidden
            EndWriteAttribute();
            BeginContext(1249, 142, true);
            WriteLiteral(" />\r\n        </div>\r\n        <div class=\"row branchInfo\">\r\n            <div class=\"col-md-8\">\r\n                <div>\r\n                    <h2>");
            EndContext();
            BeginContext(1392, 16, false);
#line 28 "C:\Users\Anju\source\repos\Library\Library\Views\Branch\Detail.cshtml"
                   Write(Model.BranchName);

#line default
#line hidden
            EndContext();
            BeginContext(1408, 113, true);
            WriteLiteral("</h2>\r\n                    <div class=\"branchContact\">\r\n                        <div id=\"branchAddress\">Address: ");
            EndContext();
            BeginContext(1522, 13, false);
#line 30 "C:\Users\Anju\source\repos\Library\Library\Views\Branch\Detail.cshtml"
                                                    Write(Model.Address);

#line default
#line hidden
            EndContext();
            BeginContext(1535, 63, true);
            WriteLiteral("</div>\r\n                        <div id=\"branchTel\">Telephone: ");
            EndContext();
            BeginContext(1599, 15, false);
#line 31 "C:\Users\Anju\source\repos\Library\Library\Views\Branch\Detail.cshtml"
                                                  Write(Model.Telephone);

#line default
#line hidden
            EndContext();
            BeginContext(1614, 129, true);
            WriteLiteral("</div>\r\n                    </div>\r\n                    <div id=\"branchDescription\">\r\n                        <p class=\"caption\">");
            EndContext();
            BeginContext(1744, 17, false);
#line 34 "C:\Users\Anju\source\repos\Library\Library\Views\Branch\Detail.cshtml"
                                      Write(Model.Description);

#line default
#line hidden
            EndContext();
            BeginContext(1761, 110, true);
            WriteLiteral("</p>\r\n                    </div>\r\n\r\n                    <div id=\"branchHours\">\r\n                        <ul>\r\n");
            EndContext();
#line 39 "C:\Users\Anju\source\repos\Library\Library\Views\Branch\Detail.cshtml"
                             foreach (var day in @Model.HoursOpen)
                            {

#line default
#line hidden
            BeginContext(1970, 36, true);
            WriteLiteral("                                <li>");
            EndContext();
            BeginContext(2007, 3, false);
#line 41 "C:\Users\Anju\source\repos\Library\Library\Views\Branch\Detail.cshtml"
                               Write(day);

#line default
#line hidden
            EndContext();
            BeginContext(2010, 7, true);
            WriteLiteral("</li>\r\n");
            EndContext();
#line 42 "C:\Users\Anju\source\repos\Library\Library\Views\Branch\Detail.cshtml"
                            }

#line default
#line hidden
            BeginContext(2048, 313, true);
            WriteLiteral(@"                        </ul>
                    </div>
                </div>
            </div>
            <div class=""col-md-4 detailInfo"">
                <table>
                    <tr>
                        <td class=""itemLabel"">Date Opened: </td>
                        <td class=""itemValue"">");
            EndContext();
            BeginContext(2362, 22, false);
#line 51 "C:\Users\Anju\source\repos\Library\Library\Views\Branch\Detail.cshtml"
                                         Write(Model.BranchOpenedDate);

#line default
#line hidden
            EndContext();
            BeginContext(2384, 178, true);
            WriteLiteral("</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\"itemLabel\">Number Of Patrons: </td>\r\n                        <td class=\"itemValue\">");
            EndContext();
            BeginContext(2563, 21, false);
#line 55 "C:\Users\Anju\source\repos\Library\Library\Views\Branch\Detail.cshtml"
                                         Write(Model.NumberOfPatrons);

#line default
#line hidden
            EndContext();
            BeginContext(2584, 177, true);
            WriteLiteral("</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\"itemLabel\">Number of Assets: </td>\r\n                        <td class=\"itemValue\">");
            EndContext();
            BeginContext(2762, 20, false);
#line 59 "C:\Users\Anju\source\repos\Library\Library\Views\Branch\Detail.cshtml"
                                         Write(Model.NumberOfAssets);

#line default
#line hidden
            EndContext();
            BeginContext(2782, 176, true);
            WriteLiteral("</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\"itemLabel\">Value of Assets: </td>\r\n                        <td class=\"itemValue\">");
            EndContext();
            BeginContext(2959, 46, false);
#line 63 "C:\Users\Anju\source\repos\Library\Library\Views\Branch\Detail.cshtml"
                                         Write(string.Format("{0:C}", @Model.TotalAssetValue));

#line default
#line hidden
            EndContext();
            BeginContext(3005, 136, true);
            WriteLiteral("</td>\r\n                    \r\n                    </tr>\r\n                </table>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>");
            EndContext();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<Library.Models.Branch.BranchDetailModel> Html { get; private set; }
    }
}
#pragma warning restore 1591
