sap.ui.define(["sap/ui/core/UIComponent","sap/ui/Device","ch/novobc/novoinnoappmodule/model/models"],function(e,o,i){"use strict";return e.extend("ch.novobc.novoinnoappmodule.Component",{metadata:{manifest:"json"},init:function(){e.prototype.init.apply(this,arguments);this.getRouter().initialize();this.setModel(i.createDeviceModel(),"device")}})});