require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmFichaTeste3_svg()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setName("frmFichaTeste3_svg");
    obj:setAlign("client");
    obj:setTheme("light");
    obj:setMargins({top=1});

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(1267);
    obj.rectangle1:setHeight(593);
    obj.rectangle1:setColor("white");
    obj.rectangle1:setName("rectangle1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.rectangle1);
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setWidth(1267);
    obj.image1:setHeight(593);
    obj.image1:setSRC("/Pokemon/images/3.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.rectangle1);
    obj.image2:setField("img_item1");
    obj.image2:setEditable(true);
    obj.image2:setStyle("autoFit");
    obj.image2:setLeft(151);
    obj.image2:setTop(175);
    obj.image2:setWidth(88);
    obj.image2:setHeight(88);
    obj.image2:setName("image2");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.rectangle1);
    obj.image3:setField("img_item2");
    obj.image3:setEditable(true);
    obj.image3:setStyle("autoFit");
    obj.image3:setLeft(241);
    obj.image3:setTop(175);
    obj.image3:setWidth(88);
    obj.image3:setHeight(88);
    obj.image3:setName("image3");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.rectangle1);
    obj.image4:setField("img_item3");
    obj.image4:setEditable(true);
    obj.image4:setStyle("autoFit");
    obj.image4:setLeft(331);
    obj.image4:setTop(175);
    obj.image4:setWidth(88);
    obj.image4:setHeight(88);
    obj.image4:setName("image4");

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.rectangle1);
    obj.image5:setField("img_item4");
    obj.image5:setEditable(true);
    obj.image5:setStyle("autoFit");
    obj.image5:setLeft(421);
    obj.image5:setTop(175);
    obj.image5:setWidth(88);
    obj.image5:setHeight(88);
    obj.image5:setName("image5");

    obj.image6 = GUI.fromHandle(_obj_newObject("image"));
    obj.image6:setParent(obj.rectangle1);
    obj.image6:setField("img_item5");
    obj.image6:setEditable(true);
    obj.image6:setStyle("autoFit");
    obj.image6:setLeft(511);
    obj.image6:setTop(175);
    obj.image6:setWidth(88);
    obj.image6:setHeight(88);
    obj.image6:setName("image6");

    obj.image7 = GUI.fromHandle(_obj_newObject("image"));
    obj.image7:setParent(obj.rectangle1);
    obj.image7:setField("img_item6");
    obj.image7:setEditable(true);
    obj.image7:setStyle("autoFit");
    obj.image7:setLeft(601);
    obj.image7:setTop(175);
    obj.image7:setWidth(88);
    obj.image7:setHeight(88);
    obj.image7:setName("image7");

    obj.image8 = GUI.fromHandle(_obj_newObject("image"));
    obj.image8:setParent(obj.rectangle1);
    obj.image8:setField("img_item7");
    obj.image8:setEditable(true);
    obj.image8:setStyle("autoFit");
    obj.image8:setLeft(691);
    obj.image8:setTop(175);
    obj.image8:setWidth(88);
    obj.image8:setHeight(88);
    obj.image8:setName("image8");

    obj.image9 = GUI.fromHandle(_obj_newObject("image"));
    obj.image9:setParent(obj.rectangle1);
    obj.image9:setField("img_item8");
    obj.image9:setEditable(true);
    obj.image9:setStyle("autoFit");
    obj.image9:setLeft(781);
    obj.image9:setTop(175);
    obj.image9:setWidth(88);
    obj.image9:setHeight(88);
    obj.image9:setName("image9");

    obj.image10 = GUI.fromHandle(_obj_newObject("image"));
    obj.image10:setParent(obj.rectangle1);
    obj.image10:setField("img_item9");
    obj.image10:setEditable(true);
    obj.image10:setStyle("autoFit");
    obj.image10:setLeft(151);
    obj.image10:setTop(265);
    obj.image10:setWidth(88);
    obj.image10:setHeight(88);
    obj.image10:setName("image10");

    obj.image11 = GUI.fromHandle(_obj_newObject("image"));
    obj.image11:setParent(obj.rectangle1);
    obj.image11:setField("img_item10");
    obj.image11:setEditable(true);
    obj.image11:setStyle("autoFit");
    obj.image11:setLeft(241);
    obj.image11:setTop(265);
    obj.image11:setWidth(88);
    obj.image11:setHeight(88);
    obj.image11:setName("image11");

    obj.image12 = GUI.fromHandle(_obj_newObject("image"));
    obj.image12:setParent(obj.rectangle1);
    obj.image12:setField("img_item11");
    obj.image12:setEditable(true);
    obj.image12:setStyle("autoFit");
    obj.image12:setLeft(331);
    obj.image12:setTop(265);
    obj.image12:setWidth(88);
    obj.image12:setHeight(88);
    obj.image12:setName("image12");

    obj.image13 = GUI.fromHandle(_obj_newObject("image"));
    obj.image13:setParent(obj.rectangle1);
    obj.image13:setField("img_item12");
    obj.image13:setEditable(true);
    obj.image13:setStyle("autoFit");
    obj.image13:setLeft(421);
    obj.image13:setTop(265);
    obj.image13:setWidth(88);
    obj.image13:setHeight(88);
    obj.image13:setName("image13");

    obj.image14 = GUI.fromHandle(_obj_newObject("image"));
    obj.image14:setParent(obj.rectangle1);
    obj.image14:setField("img_item13");
    obj.image14:setEditable(true);
    obj.image14:setStyle("autoFit");
    obj.image14:setLeft(511);
    obj.image14:setTop(265);
    obj.image14:setWidth(88);
    obj.image14:setHeight(88);
    obj.image14:setName("image14");

    obj.image15 = GUI.fromHandle(_obj_newObject("image"));
    obj.image15:setParent(obj.rectangle1);
    obj.image15:setField("img_item14");
    obj.image15:setEditable(true);
    obj.image15:setStyle("autoFit");
    obj.image15:setLeft(601);
    obj.image15:setTop(265);
    obj.image15:setWidth(88);
    obj.image15:setHeight(88);
    obj.image15:setName("image15");

    obj.image16 = GUI.fromHandle(_obj_newObject("image"));
    obj.image16:setParent(obj.rectangle1);
    obj.image16:setField("img_item15");
    obj.image16:setEditable(true);
    obj.image16:setStyle("autoFit");
    obj.image16:setLeft(691);
    obj.image16:setTop(265);
    obj.image16:setWidth(88);
    obj.image16:setHeight(88);
    obj.image16:setName("image16");

    obj.image17 = GUI.fromHandle(_obj_newObject("image"));
    obj.image17:setParent(obj.rectangle1);
    obj.image17:setField("img_item16");
    obj.image17:setEditable(true);
    obj.image17:setStyle("autoFit");
    obj.image17:setLeft(781);
    obj.image17:setTop(265);
    obj.image17:setWidth(88);
    obj.image17:setHeight(88);
    obj.image17:setName("image17");

    obj.image18 = GUI.fromHandle(_obj_newObject("image"));
    obj.image18:setParent(obj.rectangle1);
    obj.image18:setField("img_item17");
    obj.image18:setEditable(true);
    obj.image18:setStyle("autoFit");
    obj.image18:setLeft(151);
    obj.image18:setTop(356);
    obj.image18:setWidth(88);
    obj.image18:setHeight(88);
    obj.image18:setName("image18");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(873);
    obj.layout1:setTop(175);
    obj.layout1:setWidth(273);
    obj.layout1:setHeight(273);
    obj.layout1:setName("layout1");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout1);
    obj.textEditor1:setLeft(0);
    obj.textEditor1:setTop(0);
    obj.textEditor1:setWidth(273);
    obj.textEditor1:setHeight(273);
    obj.textEditor1:setFontSize(20);
    obj.textEditor1:setFontColor("#000000");
    obj.textEditor1:setField("Caixa_de_texto_1_14");
    obj.textEditor1:setName("textEditor1");

    obj.image19 = GUI.fromHandle(_obj_newObject("image"));
    obj.image19:setParent(obj.rectangle1);
    obj.image19:setField("img_item18");
    obj.image19:setEditable(true);
    obj.image19:setStyle("autoFit");
    obj.image19:setLeft(241);
    obj.image19:setTop(356);
    obj.image19:setWidth(88);
    obj.image19:setHeight(88);
    obj.image19:setName("image19");

    obj.image20 = GUI.fromHandle(_obj_newObject("image"));
    obj.image20:setParent(obj.rectangle1);
    obj.image20:setField("img_item19");
    obj.image20:setEditable(true);
    obj.image20:setStyle("autoFit");
    obj.image20:setLeft(331);
    obj.image20:setTop(356);
    obj.image20:setWidth(88);
    obj.image20:setHeight(88);
    obj.image20:setName("image20");

    obj.image21 = GUI.fromHandle(_obj_newObject("image"));
    obj.image21:setParent(obj.rectangle1);
    obj.image21:setField("img_item20");
    obj.image21:setEditable(true);
    obj.image21:setStyle("autoFit");
    obj.image21:setLeft(421);
    obj.image21:setTop(356);
    obj.image21:setWidth(88);
    obj.image21:setHeight(88);
    obj.image21:setName("image21");

    obj.image22 = GUI.fromHandle(_obj_newObject("image"));
    obj.image22:setParent(obj.rectangle1);
    obj.image22:setField("img_item21");
    obj.image22:setEditable(true);
    obj.image22:setStyle("autoFit");
    obj.image22:setLeft(511);
    obj.image22:setTop(356);
    obj.image22:setWidth(88);
    obj.image22:setHeight(88);
    obj.image22:setName("image22");

    obj.image23 = GUI.fromHandle(_obj_newObject("image"));
    obj.image23:setParent(obj.rectangle1);
    obj.image23:setField("img_item22");
    obj.image23:setEditable(true);
    obj.image23:setStyle("autoFit");
    obj.image23:setLeft(601);
    obj.image23:setTop(356);
    obj.image23:setWidth(88);
    obj.image23:setHeight(88);
    obj.image23:setName("image23");

    obj.image24 = GUI.fromHandle(_obj_newObject("image"));
    obj.image24:setParent(obj.rectangle1);
    obj.image24:setField("img_item23");
    obj.image24:setEditable(true);
    obj.image24:setStyle("autoFit");
    obj.image24:setLeft(691);
    obj.image24:setTop(356);
    obj.image24:setWidth(88);
    obj.image24:setHeight(88);
    obj.image24:setName("image24");

    obj.image25 = GUI.fromHandle(_obj_newObject("image"));
    obj.image25:setParent(obj.rectangle1);
    obj.image25:setField("img_item24");
    obj.image25:setEditable(true);
    obj.image25:setStyle("autoFit");
    obj.image25:setLeft(781);
    obj.image25:setTop(356);
    obj.image25:setWidth(88);
    obj.image25:setHeight(88);
    obj.image25:setName("image25");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.image22 ~= nil then self.image22:destroy(); self.image22 = nil; end;
        if self.image19 ~= nil then self.image19:destroy(); self.image19 = nil; end;
        if self.image9 ~= nil then self.image9:destroy(); self.image9 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.image8 ~= nil then self.image8:destroy(); self.image8 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.image12 ~= nil then self.image12:destroy(); self.image12 = nil; end;
        if self.image7 ~= nil then self.image7:destroy(); self.image7 = nil; end;
        if self.image24 ~= nil then self.image24:destroy(); self.image24 = nil; end;
        if self.image15 ~= nil then self.image15:destroy(); self.image15 = nil; end;
        if self.image23 ~= nil then self.image23:destroy(); self.image23 = nil; end;
        if self.image20 ~= nil then self.image20:destroy(); self.image20 = nil; end;
        if self.image11 ~= nil then self.image11:destroy(); self.image11 = nil; end;
        if self.image14 ~= nil then self.image14:destroy(); self.image14 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.image17 ~= nil then self.image17:destroy(); self.image17 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.image13 ~= nil then self.image13:destroy(); self.image13 = nil; end;
        if self.image18 ~= nil then self.image18:destroy(); self.image18 = nil; end;
        if self.image10 ~= nil then self.image10:destroy(); self.image10 = nil; end;
        if self.image16 ~= nil then self.image16:destroy(); self.image16 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        if self.image25 ~= nil then self.image25:destroy(); self.image25 = nil; end;
        if self.image21 ~= nil then self.image21:destroy(); self.image21 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmFichaTeste3_svg()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmFichaTeste3_svg();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmFichaTeste3_svg = {
    newEditor = newfrmFichaTeste3_svg, 
    new = newfrmFichaTeste3_svg, 
    name = "frmFichaTeste3_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmFichaTeste3_svg = _frmFichaTeste3_svg;
Firecast.registrarForm(_frmFichaTeste3_svg);

return _frmFichaTeste3_svg;
