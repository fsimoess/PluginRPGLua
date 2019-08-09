require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmFichaTeste7_svg()
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
    obj:setName("frmFichaTeste7_svg");
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
    obj.image1:setSRC("/Pokemon_Custom/images/5.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.rectangle1);
    obj.image2:setField("box1");
    obj.image2:setEditable(true);
    obj.image2:setStyle("proportional");
    lfm_setPropAsString(obj.image2, "animate",  "true");
    obj.image2:setLeft(280);
    obj.image2:setTop(181);
    obj.image2:setWidth(88);
    obj.image2:setHeight(88);
    obj.image2:setName("image2");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.rectangle1);
    obj.image3:setField("box2");
    obj.image3:setEditable(true);
    obj.image3:setStyle("proportional");
    lfm_setPropAsString(obj.image3, "animate",  "true");
    obj.image3:setLeft(370);
    obj.image3:setTop(181);
    obj.image3:setWidth(88);
    obj.image3:setHeight(88);
    obj.image3:setName("image3");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.rectangle1);
    obj.image4:setField("box3");
    obj.image4:setEditable(true);
    obj.image4:setStyle("proportional");
    lfm_setPropAsString(obj.image4, "animate",  "true");
    obj.image4:setLeft(460);
    obj.image4:setTop(181);
    obj.image4:setWidth(88);
    obj.image4:setHeight(88);
    obj.image4:setName("image4");

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.rectangle1);
    obj.image5:setField("box4");
    obj.image5:setEditable(true);
    obj.image5:setStyle("proportional");
    lfm_setPropAsString(obj.image5, "animate",  "true");
    obj.image5:setLeft(550);
    obj.image5:setTop(181);
    obj.image5:setWidth(88);
    obj.image5:setHeight(88);
    obj.image5:setName("image5");

    obj.image6 = GUI.fromHandle(_obj_newObject("image"));
    obj.image6:setParent(obj.rectangle1);
    obj.image6:setField("box5");
    obj.image6:setEditable(true);
    obj.image6:setStyle("proportional");
    lfm_setPropAsString(obj.image6, "animate",  "true");
    obj.image6:setLeft(640);
    obj.image6:setTop(181);
    obj.image6:setWidth(88);
    obj.image6:setHeight(88);
    obj.image6:setName("image6");

    obj.image7 = GUI.fromHandle(_obj_newObject("image"));
    obj.image7:setParent(obj.rectangle1);
    obj.image7:setField("box6");
    obj.image7:setEditable(true);
    obj.image7:setStyle("proportional");
    lfm_setPropAsString(obj.image7, "animate",  "true");
    obj.image7:setLeft(730);
    obj.image7:setTop(181);
    obj.image7:setWidth(88);
    obj.image7:setHeight(88);
    obj.image7:setName("image7");

    obj.image8 = GUI.fromHandle(_obj_newObject("image"));
    obj.image8:setParent(obj.rectangle1);
    obj.image8:setField("box7");
    obj.image8:setEditable(true);
    obj.image8:setStyle("proportional");
    lfm_setPropAsString(obj.image8, "animate",  "true");
    obj.image8:setLeft(820);
    obj.image8:setTop(181);
    obj.image8:setWidth(88);
    obj.image8:setHeight(88);
    obj.image8:setName("image8");

    obj.image9 = GUI.fromHandle(_obj_newObject("image"));
    obj.image9:setParent(obj.rectangle1);
    obj.image9:setField("box8");
    obj.image9:setEditable(true);
    obj.image9:setStyle("proportional");
    lfm_setPropAsString(obj.image9, "animate",  "true");
    obj.image9:setLeft(910);
    obj.image9:setTop(181);
    obj.image9:setWidth(88);
    obj.image9:setHeight(88);
    obj.image9:setName("image9");

    obj.image10 = GUI.fromHandle(_obj_newObject("image"));
    obj.image10:setParent(obj.rectangle1);
    obj.image10:setField("box9");
    obj.image10:setEditable(true);
    obj.image10:setStyle("proportional");
    lfm_setPropAsString(obj.image10, "animate",  "true");
    obj.image10:setLeft(280);
    obj.image10:setTop(271);
    obj.image10:setWidth(88);
    obj.image10:setHeight(88);
    obj.image10:setName("image10");

    obj.image11 = GUI.fromHandle(_obj_newObject("image"));
    obj.image11:setParent(obj.rectangle1);
    obj.image11:setField("box10");
    obj.image11:setEditable(true);
    obj.image11:setStyle("proportional");
    lfm_setPropAsString(obj.image11, "animate",  "true");
    obj.image11:setLeft(370);
    obj.image11:setTop(271);
    obj.image11:setWidth(88);
    obj.image11:setHeight(88);
    obj.image11:setName("image11");

    obj.image12 = GUI.fromHandle(_obj_newObject("image"));
    obj.image12:setParent(obj.rectangle1);
    obj.image12:setField("box11");
    obj.image12:setEditable(true);
    obj.image12:setStyle("proportional");
    lfm_setPropAsString(obj.image12, "animate",  "true");
    obj.image12:setLeft(460);
    obj.image12:setTop(271);
    obj.image12:setWidth(88);
    obj.image12:setHeight(88);
    obj.image12:setName("image12");

    obj.image13 = GUI.fromHandle(_obj_newObject("image"));
    obj.image13:setParent(obj.rectangle1);
    obj.image13:setField("box12");
    obj.image13:setEditable(true);
    obj.image13:setStyle("proportional");
    lfm_setPropAsString(obj.image13, "animate",  "true");
    obj.image13:setLeft(550);
    obj.image13:setTop(271);
    obj.image13:setWidth(88);
    obj.image13:setHeight(88);
    obj.image13:setName("image13");

    obj.image14 = GUI.fromHandle(_obj_newObject("image"));
    obj.image14:setParent(obj.rectangle1);
    obj.image14:setField("box13");
    obj.image14:setEditable(true);
    obj.image14:setStyle("proportional");
    lfm_setPropAsString(obj.image14, "animate",  "true");
    obj.image14:setLeft(640);
    obj.image14:setTop(271);
    obj.image14:setWidth(88);
    obj.image14:setHeight(88);
    obj.image14:setName("image14");

    obj.image15 = GUI.fromHandle(_obj_newObject("image"));
    obj.image15:setParent(obj.rectangle1);
    obj.image15:setField("box14");
    obj.image15:setEditable(true);
    obj.image15:setStyle("proportional");
    lfm_setPropAsString(obj.image15, "animate",  "true");
    obj.image15:setLeft(730);
    obj.image15:setTop(271);
    obj.image15:setWidth(88);
    obj.image15:setHeight(88);
    obj.image15:setName("image15");

    obj.image16 = GUI.fromHandle(_obj_newObject("image"));
    obj.image16:setParent(obj.rectangle1);
    obj.image16:setField("box15");
    obj.image16:setEditable(true);
    obj.image16:setStyle("proportional");
    lfm_setPropAsString(obj.image16, "animate",  "true");
    obj.image16:setLeft(820);
    obj.image16:setTop(271);
    obj.image16:setWidth(88);
    obj.image16:setHeight(88);
    obj.image16:setName("image16");

    obj.image17 = GUI.fromHandle(_obj_newObject("image"));
    obj.image17:setParent(obj.rectangle1);
    obj.image17:setField("box16");
    obj.image17:setEditable(true);
    obj.image17:setStyle("proportional");
    lfm_setPropAsString(obj.image17, "animate",  "true");
    obj.image17:setLeft(910);
    obj.image17:setTop(271);
    obj.image17:setWidth(88);
    obj.image17:setHeight(88);
    obj.image17:setName("image17");

    obj.image18 = GUI.fromHandle(_obj_newObject("image"));
    obj.image18:setParent(obj.rectangle1);
    obj.image18:setField("box17");
    obj.image18:setEditable(true);
    obj.image18:setStyle("proportional");
    lfm_setPropAsString(obj.image18, "animate",  "true");
    obj.image18:setLeft(280);
    obj.image18:setTop(361);
    obj.image18:setWidth(88);
    obj.image18:setHeight(88);
    obj.image18:setName("image18");

    obj.image19 = GUI.fromHandle(_obj_newObject("image"));
    obj.image19:setParent(obj.rectangle1);
    obj.image19:setField("box18");
    obj.image19:setEditable(true);
    obj.image19:setStyle("proportional");
    lfm_setPropAsString(obj.image19, "animate",  "true");
    obj.image19:setLeft(370);
    obj.image19:setTop(361);
    obj.image19:setWidth(88);
    obj.image19:setHeight(88);
    obj.image19:setName("image19");

    obj.image20 = GUI.fromHandle(_obj_newObject("image"));
    obj.image20:setParent(obj.rectangle1);
    obj.image20:setField("box19");
    obj.image20:setEditable(true);
    obj.image20:setStyle("proportional");
    lfm_setPropAsString(obj.image20, "animate",  "true");
    obj.image20:setLeft(460);
    obj.image20:setTop(361);
    obj.image20:setWidth(88);
    obj.image20:setHeight(88);
    obj.image20:setName("image20");

    obj.image21 = GUI.fromHandle(_obj_newObject("image"));
    obj.image21:setParent(obj.rectangle1);
    obj.image21:setField("box20");
    obj.image21:setEditable(true);
    obj.image21:setStyle("proportional");
    lfm_setPropAsString(obj.image21, "animate",  "true");
    obj.image21:setLeft(550);
    obj.image21:setTop(361);
    obj.image21:setWidth(88);
    obj.image21:setHeight(88);
    obj.image21:setName("image21");

    obj.image22 = GUI.fromHandle(_obj_newObject("image"));
    obj.image22:setParent(obj.rectangle1);
    obj.image22:setField("box21");
    obj.image22:setEditable(true);
    obj.image22:setStyle("proportional");
    lfm_setPropAsString(obj.image22, "animate",  "true");
    obj.image22:setLeft(640);
    obj.image22:setTop(361);
    obj.image22:setWidth(88);
    obj.image22:setHeight(88);
    obj.image22:setName("image22");

    obj.image23 = GUI.fromHandle(_obj_newObject("image"));
    obj.image23:setParent(obj.rectangle1);
    obj.image23:setField("box22");
    obj.image23:setEditable(true);
    obj.image23:setStyle("proportional");
    lfm_setPropAsString(obj.image23, "animate",  "true");
    obj.image23:setLeft(730);
    obj.image23:setTop(361);
    obj.image23:setWidth(88);
    obj.image23:setHeight(88);
    obj.image23:setName("image23");

    obj.image24 = GUI.fromHandle(_obj_newObject("image"));
    obj.image24:setParent(obj.rectangle1);
    obj.image24:setField("box23");
    obj.image24:setEditable(true);
    obj.image24:setStyle("proportional");
    lfm_setPropAsString(obj.image24, "animate",  "true");
    obj.image24:setLeft(820);
    obj.image24:setTop(361);
    obj.image24:setWidth(88);
    obj.image24:setHeight(88);
    obj.image24:setName("image24");

    obj.image25 = GUI.fromHandle(_obj_newObject("image"));
    obj.image25:setParent(obj.rectangle1);
    obj.image25:setField("box24");
    obj.image25:setEditable(true);
    obj.image25:setStyle("proportional");
    lfm_setPropAsString(obj.image25, "animate",  "true");
    obj.image25:setLeft(910);
    obj.image25:setTop(361);
    obj.image25:setWidth(88);
    obj.image25:setHeight(88);
    obj.image25:setName("image25");

    obj.image26 = GUI.fromHandle(_obj_newObject("image"));
    obj.image26:setParent(obj.rectangle1);
    obj.image26:setField("box25");
    obj.image26:setEditable(true);
    obj.image26:setStyle("proportional");
    lfm_setPropAsString(obj.image26, "animate",  "true");
    obj.image26:setLeft(280);
    obj.image26:setTop(452);
    obj.image26:setWidth(88);
    obj.image26:setHeight(88);
    obj.image26:setName("image26");

    obj.image27 = GUI.fromHandle(_obj_newObject("image"));
    obj.image27:setParent(obj.rectangle1);
    obj.image27:setField("box26");
    obj.image27:setEditable(true);
    obj.image27:setStyle("proportional");
    lfm_setPropAsString(obj.image27, "animate",  "true");
    obj.image27:setLeft(370);
    obj.image27:setTop(452);
    obj.image27:setWidth(88);
    obj.image27:setHeight(88);
    obj.image27:setName("image27");

    obj.image28 = GUI.fromHandle(_obj_newObject("image"));
    obj.image28:setParent(obj.rectangle1);
    obj.image28:setField("box27");
    obj.image28:setEditable(true);
    obj.image28:setStyle("proportional");
    lfm_setPropAsString(obj.image28, "animate",  "true");
    obj.image28:setLeft(460);
    obj.image28:setTop(452);
    obj.image28:setWidth(88);
    obj.image28:setHeight(88);
    obj.image28:setName("image28");

    obj.image29 = GUI.fromHandle(_obj_newObject("image"));
    obj.image29:setParent(obj.rectangle1);
    obj.image29:setField("box28");
    obj.image29:setEditable(true);
    obj.image29:setStyle("proportional");
    lfm_setPropAsString(obj.image29, "animate",  "true");
    obj.image29:setLeft(550);
    obj.image29:setTop(452);
    obj.image29:setWidth(88);
    obj.image29:setHeight(88);
    obj.image29:setName("image29");

    obj.image30 = GUI.fromHandle(_obj_newObject("image"));
    obj.image30:setParent(obj.rectangle1);
    obj.image30:setField("box29");
    obj.image30:setEditable(true);
    obj.image30:setStyle("proportional");
    lfm_setPropAsString(obj.image30, "animate",  "true");
    obj.image30:setLeft(640);
    obj.image30:setTop(452);
    obj.image30:setWidth(88);
    obj.image30:setHeight(88);
    obj.image30:setName("image30");

    obj.image31 = GUI.fromHandle(_obj_newObject("image"));
    obj.image31:setParent(obj.rectangle1);
    obj.image31:setField("box30");
    obj.image31:setEditable(true);
    obj.image31:setStyle("proportional");
    lfm_setPropAsString(obj.image31, "animate",  "true");
    obj.image31:setLeft(730);
    obj.image31:setTop(452);
    obj.image31:setWidth(88);
    obj.image31:setHeight(88);
    obj.image31:setName("image31");

    obj.image32 = GUI.fromHandle(_obj_newObject("image"));
    obj.image32:setParent(obj.rectangle1);
    obj.image32:setField("box31");
    obj.image32:setEditable(true);
    obj.image32:setStyle("proportional");
    lfm_setPropAsString(obj.image32, "animate",  "true");
    obj.image32:setLeft(820);
    obj.image32:setTop(452);
    obj.image32:setWidth(88);
    obj.image32:setHeight(88);
    obj.image32:setName("image32");

    obj.image33 = GUI.fromHandle(_obj_newObject("image"));
    obj.image33:setParent(obj.rectangle1);
    obj.image33:setField("box32");
    obj.image33:setEditable(true);
    obj.image33:setStyle("proportional");
    lfm_setPropAsString(obj.image33, "animate",  "true");
    obj.image33:setLeft(910);
    obj.image33:setTop(452);
    obj.image33:setWidth(88);
    obj.image33:setHeight(88);
    obj.image33:setName("image33");

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
        if self.image27 ~= nil then self.image27:destroy(); self.image27 = nil; end;
        if self.image9 ~= nil then self.image9:destroy(); self.image9 = nil; end;
        if self.image32 ~= nil then self.image32:destroy(); self.image32 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.image28 ~= nil then self.image28:destroy(); self.image28 = nil; end;
        if self.image30 ~= nil then self.image30:destroy(); self.image30 = nil; end;
        if self.image26 ~= nil then self.image26:destroy(); self.image26 = nil; end;
        if self.image8 ~= nil then self.image8:destroy(); self.image8 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.image12 ~= nil then self.image12:destroy(); self.image12 = nil; end;
        if self.image7 ~= nil then self.image7:destroy(); self.image7 = nil; end;
        if self.image24 ~= nil then self.image24:destroy(); self.image24 = nil; end;
        if self.image15 ~= nil then self.image15:destroy(); self.image15 = nil; end;
        if self.image23 ~= nil then self.image23:destroy(); self.image23 = nil; end;
        if self.image31 ~= nil then self.image31:destroy(); self.image31 = nil; end;
        if self.image20 ~= nil then self.image20:destroy(); self.image20 = nil; end;
        if self.image11 ~= nil then self.image11:destroy(); self.image11 = nil; end;
        if self.image14 ~= nil then self.image14:destroy(); self.image14 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.image17 ~= nil then self.image17:destroy(); self.image17 = nil; end;
        if self.image33 ~= nil then self.image33:destroy(); self.image33 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.image13 ~= nil then self.image13:destroy(); self.image13 = nil; end;
        if self.image18 ~= nil then self.image18:destroy(); self.image18 = nil; end;
        if self.image10 ~= nil then self.image10:destroy(); self.image10 = nil; end;
        if self.image16 ~= nil then self.image16:destroy(); self.image16 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        if self.image25 ~= nil then self.image25:destroy(); self.image25 = nil; end;
        if self.image29 ~= nil then self.image29:destroy(); self.image29 = nil; end;
        if self.image21 ~= nil then self.image21:destroy(); self.image21 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmFichaTeste7_svg()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmFichaTeste7_svg();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmFichaTeste7_svg = {
    newEditor = newfrmFichaTeste7_svg, 
    new = newfrmFichaTeste7_svg, 
    name = "frmFichaTeste7_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmFichaTeste7_svg = _frmFichaTeste7_svg;
Firecast.registrarForm(_frmFichaTeste7_svg);

return _frmFichaTeste7_svg;
