﻿#pragma checksum "..\..\Sign up.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "91730BC30D8A9CF0507D451AB2944CFF648CC89F7D916CA667958A448EA518E0"
//------------------------------------------------------------------------------
// <auto-generated>
//     這段程式碼是由工具產生的。
//     執行階段版本:4.0.30319.42000
//
//     對這個檔案所做的變更可能會造成錯誤的行為，而且如果重新產生程式碼，
//     變更將會遺失。
// </auto-generated>
//------------------------------------------------------------------------------

using CCUiGO2;
using MaterialDesignThemes.Wpf;
using MaterialDesignThemes.Wpf.Converters;
using MaterialDesignThemes.Wpf.Transitions;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace CCUiGO2 {
    
    
    /// <summary>
    /// Sign_up
    /// </summary>
    public partial class Sign_up : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 110 "..\..\Sign up.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button close;
        
        #line default
        #line hidden
        
        
        #line 116 "..\..\Sign up.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button minus;
        
        #line default
        #line hidden
        
        
        #line 125 "..\..\Sign up.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label Sign_in_line;
        
        #line default
        #line hidden
        
        
        #line 131 "..\..\Sign up.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label Sign_up_line;
        
        #line default
        #line hidden
        
        
        #line 137 "..\..\Sign up.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox id_register;
        
        #line default
        #line hidden
        
        
        #line 142 "..\..\Sign up.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.PasswordBox pw_register;
        
        #line default
        #line hidden
        
        
        #line 147 "..\..\Sign up.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.PasswordBox pw_recheck;
        
        #line default
        #line hidden
        
        
        #line 148 "..\..\Sign up.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal MaterialDesignThemes.Wpf.PackIcon conditionIcon;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/CCUiGO2;component/sign%20up.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\Sign up.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.close = ((System.Windows.Controls.Button)(target));
            
            #line 110 "..\..\Sign up.xaml"
            this.close.Click += new System.Windows.RoutedEventHandler(this.Close_Click);
            
            #line default
            #line hidden
            return;
            case 2:
            this.minus = ((System.Windows.Controls.Button)(target));
            
            #line 116 "..\..\Sign up.xaml"
            this.minus.Click += new System.Windows.RoutedEventHandler(this.Minus_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            
            #line 122 "..\..\Sign up.xaml"
            ((System.Windows.Controls.StackPanel)(target)).MouseEnter += new System.Windows.Input.MouseEventHandler(this.SignInLabel_MouseEnter);
            
            #line default
            #line hidden
            return;
            case 4:
            
            #line 124 "..\..\Sign up.xaml"
            ((System.Windows.Controls.Label)(target)).MouseEnter += new System.Windows.Input.MouseEventHandler(this.SignInLabel_MouseEnter);
            
            #line default
            #line hidden
            
            #line 124 "..\..\Sign up.xaml"
            ((System.Windows.Controls.Label)(target)).MouseLeave += new System.Windows.Input.MouseEventHandler(this.SignInLabel_MouseLeave);
            
            #line default
            #line hidden
            
            #line 124 "..\..\Sign up.xaml"
            ((System.Windows.Controls.Label)(target)).MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.SignIn_MouseDown);
            
            #line default
            #line hidden
            return;
            case 5:
            this.Sign_in_line = ((System.Windows.Controls.Label)(target));
            return;
            case 6:
            this.Sign_up_line = ((System.Windows.Controls.Label)(target));
            return;
            case 7:
            this.id_register = ((System.Windows.Controls.TextBox)(target));
            return;
            case 8:
            this.pw_register = ((System.Windows.Controls.PasswordBox)(target));
            
            #line 142 "..\..\Sign up.xaml"
            this.pw_register.PasswordChanged += new System.Windows.RoutedEventHandler(this.pw_register_PasswordChanged);
            
            #line default
            #line hidden
            return;
            case 9:
            this.pw_recheck = ((System.Windows.Controls.PasswordBox)(target));
            
            #line 147 "..\..\Sign up.xaml"
            this.pw_recheck.PasswordChanged += new System.Windows.RoutedEventHandler(this.Pw_recheck_PasswordChanged);
            
            #line default
            #line hidden
            return;
            case 10:
            this.conditionIcon = ((MaterialDesignThemes.Wpf.PackIcon)(target));
            return;
            case 11:
            
            #line 156 "..\..\Sign up.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Button_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

