#pragma checksum "C:\Users\Anju\source\repos\Library\Library\Views\Patron\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "cc44ad826e1af02629d21516a58e42030ebaf631"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Patron_Index), @"mvc.1.0.view", @"/Views/Patron/Index.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Patron/Index.cshtml", typeof(AspNetCore.Views_Patron_Index))]
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
#line 3 "C:\Users\Anju\source\repos\Library\Library\Views\Patron\Index.cshtml"
using Library.Models.Patrons;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"cc44ad826e1af02629d21516a58e42030ebaf631", @"/Views/Patron/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"dadb7a731bfbb305c411bc5eb7a307dbd6008a89", @"/Views/_ViewImports.cshtml")]
    public class Views_Patron_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<Library.Models.Patrons.PatronIndexModel>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Patron", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Detail", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            BeginContext(0, 2, true);
            WriteLiteral("\r\n");
            EndContext();
#line 4 "C:\Users\Anju\source\repos\Library\Library\Views\Patron\Index.cshtml"
  
    ViewBag.Title = "Patron Index";

#line default
#line hidden
            BeginContext(125, 499, true);
            WriteLiteral(@"<h3>Patron Index</h3>
<div id=""patronIndex"">
    <table class=""mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp customTable"" id=""patronIndexTable"">
        <thead>
            <tr>
                <th>Profile Link</th>
                <th>Last Name</th>
                <th>First Name</th>
                <th>Library Card Id</th>
                <th>Overdue Fees</th>
                <th>Home Library</th>
            </tr>
        </thead>
        <tbody>
");
            EndContext();
#line 21 "C:\Users\Anju\source\repos\Library\Library\Views\Patron\Index.cshtml"
             foreach (var patron in Model.Patrons)
            {

#line default
#line hidden
            BeginContext(691, 62, true);
            WriteLiteral("                <tr>\r\n                    <td id=\"patronIcon\">");
            EndContext();
            BeginContext(753, 109, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "621a1ce701184aa1a61dc79a590222d1", async() => {
                BeginContext(826, 32, true);
                WriteLiteral("<i class=\"fa fa-user fa-2x\"></i>");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#line 24 "C:\Users\Anju\source\repos\Library\Library\Views\Patron\Index.cshtml"
                                                                                         WriteLiteral(patron.Id);

#line default
#line hidden
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(862, 31, true);
            WriteLiteral("</td>\r\n                    <td>");
            EndContext();
            BeginContext(894, 15, false);
#line 25 "C:\Users\Anju\source\repos\Library\Library\Views\Patron\Index.cshtml"
                   Write(patron.LastName);

#line default
#line hidden
            EndContext();
            BeginContext(909, 31, true);
            WriteLiteral("</td>\r\n                    <td>");
            EndContext();
            BeginContext(941, 16, false);
#line 26 "C:\Users\Anju\source\repos\Library\Library\Views\Patron\Index.cshtml"
                   Write(patron.FirstName);

#line default
#line hidden
            EndContext();
            BeginContext(957, 31, true);
            WriteLiteral("</td>\r\n                    <td>");
            EndContext();
            BeginContext(989, 20, false);
#line 27 "C:\Users\Anju\source\repos\Library\Library\Views\Patron\Index.cshtml"
                   Write(patron.LibraryCardId);

#line default
#line hidden
            EndContext();
            BeginContext(1009, 31, true);
            WriteLiteral("</td>\r\n                    <td>");
            EndContext();
            BeginContext(1041, 42, false);
#line 28 "C:\Users\Anju\source\repos\Library\Library\Views\Patron\Index.cshtml"
                   Write(string.Format("{0:C}",@patron.OverdueFees));

#line default
#line hidden
            EndContext();
            BeginContext(1083, 31, true);
            WriteLiteral("</td>\r\n                    <td>");
            EndContext();
            BeginContext(1115, 18, false);
#line 29 "C:\Users\Anju\source\repos\Library\Library\Views\Patron\Index.cshtml"
                   Write(patron.HomeLibrary);

#line default
#line hidden
            EndContext();
            BeginContext(1133, 30, true);
            WriteLiteral("</td>\r\n                </tr>\r\n");
            EndContext();
#line 31 "C:\Users\Anju\source\repos\Library\Library\Views\Patron\Index.cshtml"
            }

#line default
#line hidden
            BeginContext(1178, 38, true);
            WriteLiteral("        </tbody>\r\n    </table>\r\n</div>");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<Library.Models.Patrons.PatronIndexModel> Html { get; private set; }
    }
}
#pragma warning restore 1591
