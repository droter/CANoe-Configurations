﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.269
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace COM_Csharp_CANoe_Demo.Properties {
    using System;
    
    
    /// <summary>
    ///   A strongly-typed resource class, for looking up localized strings, etc.
    /// </summary>
    // This class was auto-generated by the StronglyTypedResourceBuilder
    // class via a tool like ResGen or Visual Studio.
    // To add or remove a member, edit your .ResX file then rerun ResGen
    // with the /str option, or rebuild your VS project.
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("System.Resources.Tools.StronglyTypedResourceBuilder", "4.0.0.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    internal class Resources {
        
        private static global::System.Resources.ResourceManager resourceMan;
        
        private static global::System.Globalization.CultureInfo resourceCulture;
        
        [global::System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal Resources() {
        }
        
        /// <summary>
        ///   Returns the cached ResourceManager instance used by this class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Resources.ResourceManager ResourceManager {
            get {
                if (object.ReferenceEquals(resourceMan, null)) {
                    global::System.Resources.ResourceManager temp = new global::System.Resources.ResourceManager("COM_Csharp_CANoe_Demo.Properties.Resources", typeof(Resources).Assembly);
                    resourceMan = temp;
                }
                return resourceMan;
            }
        }
        
        /// <summary>
        ///   Overrides the current thread's CurrentUICulture property for all
        ///   resource lookups using this strongly typed resource class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Globalization.CultureInfo Culture {
            get {
                return resourceCulture;
            }
            set {
                resourceCulture = value;
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Configuration file found.
        ///Click to open the configuration within CANoe..
        /// </summary>
        internal static string ConfigFileFound {
            get {
                return ResourceManager.GetString("ConfigFileFound", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Configuration file not found.
        ///Check if the configuration file ist at the correct location!.
        /// </summary>
        internal static string ConfigFileNotFound {
            get {
                return ResourceManager.GetString("ConfigFileNotFound", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Start measurement.
        /// </summary>
        internal static string StartMeasurement {
            get {
                return ResourceManager.GetString("StartMeasurement", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Status: A measurement is currently running.
        /// </summary>
        internal static string StatusMeasurementStarted {
            get {
                return ResourceManager.GetString("StatusMeasurementStarted", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Status: No measurement is currently running.
        /// </summary>
        internal static string StatusMeasurementStopped {
            get {
                return ResourceManager.GetString("StatusMeasurementStopped", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Stop measurement.
        /// </summary>
        internal static string StopMeasurement {
            get {
                return ResourceManager.GetString("StopMeasurement", resourceCulture);
            }
        }
    }
}
