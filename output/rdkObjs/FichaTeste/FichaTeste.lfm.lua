require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmPokemon()
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
    obj:setName("frmPokemon");
    obj:setFormType("sheetTemplate");
    obj:setDataType("Pokemon.DataType");
    obj:setTitle("Pokemon Custom");
    obj:setAlign("client");
    obj:setTheme("light");

    obj.tabControl1 = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setAlign("client");
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Perfil");
    obj.tab1:setName("tab1");

    obj.frmFichaTeste1_svg = GUI.fromHandle(_obj_newObject("form"));
    obj.frmFichaTeste1_svg:setParent(obj.tab1);
    obj.frmFichaTeste1_svg:setName("frmFichaTeste1_svg");
    obj.frmFichaTeste1_svg:setAlign("client");
    obj.frmFichaTeste1_svg:setTheme("light");
    obj.frmFichaTeste1_svg:setMargins({top=1});

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.frmFichaTeste1_svg);
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
    obj.image1:setSRC("/FichaTeste/images/1.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(400);
    obj.layout1:setTop(177);
    obj.layout1:setWidth(241);
    obj.layout1:setHeight(29);
    obj.layout1:setName("layout1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setTransparent(true);
    obj.edit1:setVertTextAlign("trailing");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setFontSize(20);
    obj.edit1:setFontColor("#000000");
    obj.edit1:setLeft(0);
    obj.edit1:setTop(0);
    obj.edit1:setWidth(241);
    obj.edit1:setHeight(29);
    obj.edit1:setField("Caixa_de_texto_1");
    obj.edit1:setName("edit1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setLeft(404);
    obj.layout2:setTop(224);
    obj.layout2:setWidth(37);
    obj.layout2:setHeight(29);
    obj.layout2:setName("layout2");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setTransparent(true);
    obj.edit2:setFontSize(20);
    obj.edit2:setFontColor("#000000");
    obj.edit2:setVertTextAlign("trailing");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setType("number");
    obj.edit2:setLeft(0);
    obj.edit2:setTop(0);
    obj.edit2:setWidth(37);
    obj.edit2:setHeight(29);
    obj.edit2:setField("Caixa_de_texto_1_2");
    obj.edit2:setName("edit2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setLeft(400);
    obj.layout3:setTop(275);
    obj.layout3:setWidth(241);
    obj.layout3:setHeight(29);
    obj.layout3:setName("layout3");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout3);
    obj.edit3:setTransparent(true);
    obj.edit3:setFontSize(20);
    obj.edit3:setFontColor("#000000");
    obj.edit3:setVertTextAlign("trailing");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setLeft(0);
    obj.edit3:setTop(0);
    obj.edit3:setWidth(241);
    obj.edit3:setHeight(29);
    obj.edit3:setField("Caixa_de_texto_1_3");
    obj.edit3:setName("edit3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setLeft(400);
    obj.layout4:setTop(323);
    obj.layout4:setWidth(241);
    obj.layout4:setHeight(29);
    obj.layout4:setName("layout4");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout4);
    obj.edit4:setTransparent(true);
    obj.edit4:setFontSize(20);
    obj.edit4:setFontColor("#000000");
    obj.edit4:setVertTextAlign("trailing");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setLeft(0);
    obj.edit4:setTop(0);
    obj.edit4:setWidth(241);
    obj.edit4:setHeight(29);
    obj.edit4:setField("Caixa_de_texto_1_4");
    obj.edit4:setName("edit4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setLeft(400);
    obj.layout5:setTop(367);
    obj.layout5:setWidth(241);
    obj.layout5:setHeight(29);
    obj.layout5:setName("layout5");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout5);
    obj.edit5:setTransparent(true);
    obj.edit5:setFontSize(20);
    obj.edit5:setFontColor("#000000");
    obj.edit5:setVertTextAlign("trailing");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setLeft(0);
    obj.edit5:setTop(0);
    obj.edit5:setWidth(241);
    obj.edit5:setHeight(29);
    obj.edit5:setField("Caixa_de_texto_1_5");
    obj.edit5:setName("edit5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setLeft(400);
    obj.layout6:setTop(424);
    obj.layout6:setWidth(125);
    obj.layout6:setHeight(18);
    obj.layout6:setName("layout6");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout6);
    obj.edit6:setTransparent(false);
    obj.edit6:setFontSize(12);
    obj.edit6:setFontColor("#000000");
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setLeft(0);
    obj.edit6:setType("float");
    obj.edit6:setTop(0);
    obj.edit6:setWidth(125);
    obj.edit6:setHeight(18);
    obj.edit6:setField("Caixa_de_texto_2");
    obj.edit6:setName("edit6");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.rectangle1);
    obj.image2:setField("image_char");
    obj.image2:setEditable(true);
    obj.image2:setStyle("autoFit");
    obj.image2:setLeft(855.5);
    obj.image2:setTop(105);
    obj.image2:setWidth(302);
    obj.image2:setHeight(409);
    obj.image2:setName("image2");

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Conquistas");
    obj.tab2:setName("tab2");

    obj.frmFichaTeste2_svg = GUI.fromHandle(_obj_newObject("form"));
    obj.frmFichaTeste2_svg:setParent(obj.tab2);
    obj.frmFichaTeste2_svg:setName("frmFichaTeste2_svg");
    obj.frmFichaTeste2_svg:setAlign("client");
    obj.frmFichaTeste2_svg:setTheme("light");
    obj.frmFichaTeste2_svg:setMargins({top=1});

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.frmFichaTeste2_svg);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.scrollBox2);
    obj.rectangle2:setWidth(1267);
    obj.rectangle2:setHeight(593);
    obj.rectangle2:setColor("white");
    obj.rectangle2:setName("rectangle2");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.rectangle2);
    obj.image3:setLeft(0);
    obj.image3:setTop(0);
    obj.image3:setWidth(1267);
    obj.image3:setHeight(593);
    obj.image3:setSRC("/FichaTeste/images/2.png");
    obj.image3:setStyle("stretch");
    obj.image3:setOptimize(true);
    obj.image3:setName("image3");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.rectangle2);
    obj.image4:setField("image_badge1");
    obj.image4:setEditable(true);
    obj.image4:setStyle("autoFit");
    obj.image4:setLeft(286);
    obj.image4:setTop(181);
    obj.image4:setWidth(88);
    obj.image4:setHeight(88);
    obj.image4:setName("image4");

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.rectangle2);
    obj.image5:setField("image_badge2");
    obj.image5:setEditable(true);
    obj.image5:setStyle("autoFit");
    obj.image5:setLeft(376);
    obj.image5:setTop(181);
    obj.image5:setWidth(88);
    obj.image5:setHeight(88);
    obj.image5:setName("image5");

    obj.image6 = GUI.fromHandle(_obj_newObject("image"));
    obj.image6:setParent(obj.rectangle2);
    obj.image6:setField("image_badge3");
    obj.image6:setEditable(true);
    obj.image6:setStyle("autoFit");
    obj.image6:setLeft(466);
    obj.image6:setTop(181);
    obj.image6:setWidth(88);
    obj.image6:setHeight(88);
    obj.image6:setName("image6");

    obj.image7 = GUI.fromHandle(_obj_newObject("image"));
    obj.image7:setParent(obj.rectangle2);
    obj.image7:setField("image_badge4");
    obj.image7:setEditable(true);
    obj.image7:setStyle("autoFit");
    obj.image7:setLeft(556);
    obj.image7:setTop(181);
    obj.image7:setWidth(88);
    obj.image7:setHeight(88);
    obj.image7:setName("image7");

    obj.image8 = GUI.fromHandle(_obj_newObject("image"));
    obj.image8:setParent(obj.rectangle2);
    obj.image8:setField("image_badge5");
    obj.image8:setEditable(true);
    obj.image8:setStyle("autoFit");
    obj.image8:setLeft(646);
    obj.image8:setTop(181);
    obj.image8:setWidth(88);
    obj.image8:setHeight(88);
    obj.image8:setName("image8");

    obj.image9 = GUI.fromHandle(_obj_newObject("image"));
    obj.image9:setParent(obj.rectangle2);
    obj.image9:setField("image_badge6");
    obj.image9:setEditable(true);
    obj.image9:setStyle("autoFit");
    obj.image9:setLeft(736);
    obj.image9:setTop(181);
    obj.image9:setWidth(88);
    obj.image9:setHeight(88);
    obj.image9:setName("image9");

    obj.image10 = GUI.fromHandle(_obj_newObject("image"));
    obj.image10:setParent(obj.rectangle2);
    obj.image10:setField("image_badge7");
    obj.image10:setEditable(true);
    obj.image10:setStyle("autoFit");
    obj.image10:setLeft(826);
    obj.image10:setTop(181);
    obj.image10:setWidth(88);
    obj.image10:setHeight(88);
    obj.image10:setName("image10");

    obj.image11 = GUI.fromHandle(_obj_newObject("image"));
    obj.image11:setParent(obj.rectangle2);
    obj.image11:setField("image_badge8");
    obj.image11:setEditable(true);
    obj.image11:setStyle("autoFit");
    obj.image11:setLeft(916);
    obj.image11:setTop(181);
    obj.image11:setWidth(88);
    obj.image11:setHeight(88);
    obj.image11:setName("image11");

    obj.tab3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl1);
    obj.tab3:setTitle("Mochila");
    obj.tab3:setName("tab3");

    obj.frmFichaTeste3_svg = GUI.fromHandle(_obj_newObject("form"));
    obj.frmFichaTeste3_svg:setParent(obj.tab3);
    obj.frmFichaTeste3_svg:setName("frmFichaTeste3_svg");
    obj.frmFichaTeste3_svg:setAlign("client");
    obj.frmFichaTeste3_svg:setTheme("light");
    obj.frmFichaTeste3_svg:setMargins({top=1});

    obj.scrollBox3 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.frmFichaTeste3_svg);
    obj.scrollBox3:setAlign("client");
    obj.scrollBox3:setName("scrollBox3");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.scrollBox3);
    obj.rectangle3:setWidth(1267);
    obj.rectangle3:setHeight(593);
    obj.rectangle3:setColor("white");
    obj.rectangle3:setName("rectangle3");

    obj.image12 = GUI.fromHandle(_obj_newObject("image"));
    obj.image12:setParent(obj.rectangle3);
    obj.image12:setLeft(0);
    obj.image12:setTop(0);
    obj.image12:setWidth(1267);
    obj.image12:setHeight(593);
    obj.image12:setSRC("/FichaTeste/images/3.png");
    obj.image12:setStyle("stretch");
    obj.image12:setOptimize(true);
    obj.image12:setName("image12");

    obj.image13 = GUI.fromHandle(_obj_newObject("image"));
    obj.image13:setParent(obj.rectangle3);
    obj.image13:setField("img_item1");
    obj.image13:setEditable(true);
    obj.image13:setStyle("autoFit");
    obj.image13:setLeft(151);
    obj.image13:setTop(175);
    obj.image13:setWidth(88);
    obj.image13:setHeight(88);
    obj.image13:setName("image13");

    obj.image14 = GUI.fromHandle(_obj_newObject("image"));
    obj.image14:setParent(obj.rectangle3);
    obj.image14:setField("img_item2");
    obj.image14:setEditable(true);
    obj.image14:setStyle("autoFit");
    obj.image14:setLeft(241);
    obj.image14:setTop(175);
    obj.image14:setWidth(88);
    obj.image14:setHeight(88);
    obj.image14:setName("image14");

    obj.image15 = GUI.fromHandle(_obj_newObject("image"));
    obj.image15:setParent(obj.rectangle3);
    obj.image15:setField("img_item3");
    obj.image15:setEditable(true);
    obj.image15:setStyle("autoFit");
    obj.image15:setLeft(331);
    obj.image15:setTop(175);
    obj.image15:setWidth(88);
    obj.image15:setHeight(88);
    obj.image15:setName("image15");

    obj.image16 = GUI.fromHandle(_obj_newObject("image"));
    obj.image16:setParent(obj.rectangle3);
    obj.image16:setField("img_item4");
    obj.image16:setEditable(true);
    obj.image16:setStyle("autoFit");
    obj.image16:setLeft(421);
    obj.image16:setTop(175);
    obj.image16:setWidth(88);
    obj.image16:setHeight(88);
    obj.image16:setName("image16");

    obj.image17 = GUI.fromHandle(_obj_newObject("image"));
    obj.image17:setParent(obj.rectangle3);
    obj.image17:setField("img_item5");
    obj.image17:setEditable(true);
    obj.image17:setStyle("autoFit");
    obj.image17:setLeft(511);
    obj.image17:setTop(175);
    obj.image17:setWidth(88);
    obj.image17:setHeight(88);
    obj.image17:setName("image17");

    obj.image18 = GUI.fromHandle(_obj_newObject("image"));
    obj.image18:setParent(obj.rectangle3);
    obj.image18:setField("img_item6");
    obj.image18:setEditable(true);
    obj.image18:setStyle("autoFit");
    obj.image18:setLeft(601);
    obj.image18:setTop(175);
    obj.image18:setWidth(88);
    obj.image18:setHeight(88);
    obj.image18:setName("image18");

    obj.image19 = GUI.fromHandle(_obj_newObject("image"));
    obj.image19:setParent(obj.rectangle3);
    obj.image19:setField("img_item7");
    obj.image19:setEditable(true);
    obj.image19:setStyle("autoFit");
    obj.image19:setLeft(691);
    obj.image19:setTop(175);
    obj.image19:setWidth(88);
    obj.image19:setHeight(88);
    obj.image19:setName("image19");

    obj.image20 = GUI.fromHandle(_obj_newObject("image"));
    obj.image20:setParent(obj.rectangle3);
    obj.image20:setField("img_item8");
    obj.image20:setEditable(true);
    obj.image20:setStyle("autoFit");
    obj.image20:setLeft(781);
    obj.image20:setTop(175);
    obj.image20:setWidth(88);
    obj.image20:setHeight(88);
    obj.image20:setName("image20");

    obj.image21 = GUI.fromHandle(_obj_newObject("image"));
    obj.image21:setParent(obj.rectangle3);
    obj.image21:setField("img_item9");
    obj.image21:setEditable(true);
    obj.image21:setStyle("autoFit");
    obj.image21:setLeft(151);
    obj.image21:setTop(265);
    obj.image21:setWidth(88);
    obj.image21:setHeight(88);
    obj.image21:setName("image21");

    obj.image22 = GUI.fromHandle(_obj_newObject("image"));
    obj.image22:setParent(obj.rectangle3);
    obj.image22:setField("img_item10");
    obj.image22:setEditable(true);
    obj.image22:setStyle("autoFit");
    obj.image22:setLeft(241);
    obj.image22:setTop(265);
    obj.image22:setWidth(88);
    obj.image22:setHeight(88);
    obj.image22:setName("image22");

    obj.image23 = GUI.fromHandle(_obj_newObject("image"));
    obj.image23:setParent(obj.rectangle3);
    obj.image23:setField("img_item11");
    obj.image23:setEditable(true);
    obj.image23:setStyle("autoFit");
    obj.image23:setLeft(331);
    obj.image23:setTop(265);
    obj.image23:setWidth(88);
    obj.image23:setHeight(88);
    obj.image23:setName("image23");

    obj.image24 = GUI.fromHandle(_obj_newObject("image"));
    obj.image24:setParent(obj.rectangle3);
    obj.image24:setField("img_item12");
    obj.image24:setEditable(true);
    obj.image24:setStyle("autoFit");
    obj.image24:setLeft(421);
    obj.image24:setTop(265);
    obj.image24:setWidth(88);
    obj.image24:setHeight(88);
    obj.image24:setName("image24");

    obj.image25 = GUI.fromHandle(_obj_newObject("image"));
    obj.image25:setParent(obj.rectangle3);
    obj.image25:setField("img_item13");
    obj.image25:setEditable(true);
    obj.image25:setStyle("autoFit");
    obj.image25:setLeft(511);
    obj.image25:setTop(265);
    obj.image25:setWidth(88);
    obj.image25:setHeight(88);
    obj.image25:setName("image25");

    obj.image26 = GUI.fromHandle(_obj_newObject("image"));
    obj.image26:setParent(obj.rectangle3);
    obj.image26:setField("img_item14");
    obj.image26:setEditable(true);
    obj.image26:setStyle("autoFit");
    obj.image26:setLeft(601);
    obj.image26:setTop(265);
    obj.image26:setWidth(88);
    obj.image26:setHeight(88);
    obj.image26:setName("image26");

    obj.image27 = GUI.fromHandle(_obj_newObject("image"));
    obj.image27:setParent(obj.rectangle3);
    obj.image27:setField("img_item15");
    obj.image27:setEditable(true);
    obj.image27:setStyle("autoFit");
    obj.image27:setLeft(691);
    obj.image27:setTop(265);
    obj.image27:setWidth(88);
    obj.image27:setHeight(88);
    obj.image27:setName("image27");

    obj.image28 = GUI.fromHandle(_obj_newObject("image"));
    obj.image28:setParent(obj.rectangle3);
    obj.image28:setField("img_item16");
    obj.image28:setEditable(true);
    obj.image28:setStyle("autoFit");
    obj.image28:setLeft(781);
    obj.image28:setTop(265);
    obj.image28:setWidth(88);
    obj.image28:setHeight(88);
    obj.image28:setName("image28");

    obj.image29 = GUI.fromHandle(_obj_newObject("image"));
    obj.image29:setParent(obj.rectangle3);
    obj.image29:setField("img_item17");
    obj.image29:setEditable(true);
    obj.image29:setStyle("autoFit");
    obj.image29:setLeft(151);
    obj.image29:setTop(356);
    obj.image29:setWidth(88);
    obj.image29:setHeight(88);
    obj.image29:setName("image29");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.rectangle3);
    obj.layout7:setLeft(873);
    obj.layout7:setTop(175);
    obj.layout7:setWidth(273);
    obj.layout7:setHeight(273);
    obj.layout7:setName("layout7");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout7);
    obj.textEditor1:setLeft(0);
    obj.textEditor1:setTop(0);
    obj.textEditor1:setWidth(273);
    obj.textEditor1:setHeight(273);
    obj.textEditor1:setFontSize(20);
    obj.textEditor1:setFontColor("#000000");
    obj.textEditor1:setField("Caixa_de_texto_1_14");
    obj.textEditor1:setName("textEditor1");

    obj.image30 = GUI.fromHandle(_obj_newObject("image"));
    obj.image30:setParent(obj.rectangle3);
    obj.image30:setField("img_item18");
    obj.image30:setEditable(true);
    obj.image30:setStyle("autoFit");
    obj.image30:setLeft(241);
    obj.image30:setTop(356);
    obj.image30:setWidth(88);
    obj.image30:setHeight(88);
    obj.image30:setName("image30");

    obj.image31 = GUI.fromHandle(_obj_newObject("image"));
    obj.image31:setParent(obj.rectangle3);
    obj.image31:setField("img_item19");
    obj.image31:setEditable(true);
    obj.image31:setStyle("autoFit");
    obj.image31:setLeft(331);
    obj.image31:setTop(356);
    obj.image31:setWidth(88);
    obj.image31:setHeight(88);
    obj.image31:setName("image31");

    obj.image32 = GUI.fromHandle(_obj_newObject("image"));
    obj.image32:setParent(obj.rectangle3);
    obj.image32:setField("img_item20");
    obj.image32:setEditable(true);
    obj.image32:setStyle("autoFit");
    obj.image32:setLeft(421);
    obj.image32:setTop(356);
    obj.image32:setWidth(88);
    obj.image32:setHeight(88);
    obj.image32:setName("image32");

    obj.image33 = GUI.fromHandle(_obj_newObject("image"));
    obj.image33:setParent(obj.rectangle3);
    obj.image33:setField("img_item21");
    obj.image33:setEditable(true);
    obj.image33:setStyle("autoFit");
    obj.image33:setLeft(511);
    obj.image33:setTop(356);
    obj.image33:setWidth(88);
    obj.image33:setHeight(88);
    obj.image33:setName("image33");

    obj.image34 = GUI.fromHandle(_obj_newObject("image"));
    obj.image34:setParent(obj.rectangle3);
    obj.image34:setField("img_item22");
    obj.image34:setEditable(true);
    obj.image34:setStyle("autoFit");
    obj.image34:setLeft(601);
    obj.image34:setTop(356);
    obj.image34:setWidth(88);
    obj.image34:setHeight(88);
    obj.image34:setName("image34");

    obj.image35 = GUI.fromHandle(_obj_newObject("image"));
    obj.image35:setParent(obj.rectangle3);
    obj.image35:setField("img_item23");
    obj.image35:setEditable(true);
    obj.image35:setStyle("autoFit");
    obj.image35:setLeft(691);
    obj.image35:setTop(356);
    obj.image35:setWidth(88);
    obj.image35:setHeight(88);
    obj.image35:setName("image35");

    obj.image36 = GUI.fromHandle(_obj_newObject("image"));
    obj.image36:setParent(obj.rectangle3);
    obj.image36:setField("img_item24");
    obj.image36:setEditable(true);
    obj.image36:setStyle("autoFit");
    obj.image36:setLeft(781);
    obj.image36:setTop(356);
    obj.image36:setWidth(88);
    obj.image36:setHeight(88);
    obj.image36:setName("image36");

    obj.tab4 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl1);
    obj.tab4:setTitle("Pokemon Party #1");
    obj.tab4:setName("tab4");

    obj.frmFichaTeste5_svg = GUI.fromHandle(_obj_newObject("form"));
    obj.frmFichaTeste5_svg:setParent(obj.tab4);
    obj.frmFichaTeste5_svg:setName("frmFichaTeste5_svg");
    obj.frmFichaTeste5_svg:setAlign("client");
    obj.frmFichaTeste5_svg:setTheme("light");
    obj.frmFichaTeste5_svg:setMargins({top=1});

    obj.scrollBox4 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.frmFichaTeste5_svg);
    obj.scrollBox4:setAlign("client");
    obj.scrollBox4:setName("scrollBox4");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.scrollBox4);
    obj.rectangle4:setWidth(1267);
    obj.rectangle4:setHeight(593);
    obj.rectangle4:setColor("white");
    obj.rectangle4:setName("rectangle4");

    obj.image37 = GUI.fromHandle(_obj_newObject("image"));
    obj.image37:setParent(obj.rectangle4);
    obj.image37:setLeft(0);
    obj.image37:setTop(0);
    obj.image37:setWidth(1267);
    obj.image37:setHeight(593);
    obj.image37:setSRC("/FichaTeste/images/4.png");
    obj.image37:setStyle("stretch");
    obj.image37:setOptimize(true);
    obj.image37:setName("image37");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle4);
    obj.layout8:setLeft(720);
    obj.layout8:setTop(117);
    obj.layout8:setWidth(270);
    obj.layout8:setHeight(37);
    obj.layout8:setName("layout8");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout8);
    obj.edit7:setTransparent(true);
    obj.edit7:setFontSize(20);
    obj.edit7:setFontColor("#000000");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setVertTextAlign("trailing");
    obj.edit7:setLeft(0);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(270);
    obj.edit7:setHeight(37);
    obj.edit7:setField("name_pkmn_2");
    obj.edit7:setName("edit7");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectangle4);
    obj.layout9:setLeft(78);
    obj.layout9:setTop(117);
    obj.layout9:setWidth(270);
    obj.layout9:setHeight(37);
    obj.layout9:setName("layout9");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout9);
    obj.edit8:setTransparent(true);
    obj.edit8:setVertTextAlign("trailing");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setFontSize(20);
    obj.edit8:setFontColor("#000000");
    obj.edit8:setLeft(0);
    obj.edit8:setTop(0);
    obj.edit8:setWidth(270);
    obj.edit8:setHeight(37);
    obj.edit8:setField("name_pkmn_1");
    obj.edit8:setName("edit8");

    obj.image38 = GUI.fromHandle(_obj_newObject("image"));
    obj.image38:setParent(obj.rectangle4);
    obj.image38:setField("img_pkmn_1");
    obj.image38:setEditable(true);
    obj.image38:setStyle("autoFit");
    obj.image38:setLeft(76);
    obj.image38:setTop(159);
    obj.image38:setWidth(275);
    obj.image38:setHeight(275);
    obj.image38:setName("image38");

    obj.image39 = GUI.fromHandle(_obj_newObject("image"));
    obj.image39:setParent(obj.rectangle4);
    obj.image39:setField("img_pkmn_2");
    obj.image39:setEditable(true);
    obj.image39:setStyle("autoFit");
    obj.image39:setLeft(720);
    obj.image39:setTop(159);
    obj.image39:setWidth(275);
    obj.image39:setHeight(275);
    obj.image39:setName("image39");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle4);
    obj.layout10:setLeft(376);
    obj.layout10:setTop(200);
    obj.layout10:setWidth(180);
    obj.layout10:setHeight(39);
    obj.layout10:setName("layout10");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout10);
    obj.edit9:setTransparent(true);
    obj.edit9:setFontSize(20);
    obj.edit9:setFontColor("#000000");
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setVertTextAlign("trailing");
    obj.edit9:setLeft(0);
    obj.edit9:setTop(0);
    obj.edit9:setWidth(180);
    obj.edit9:setHeight(39);
    obj.edit9:setField("ability_1");
    obj.edit9:setName("edit9");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.rectangle4);
    obj.layout11:setLeft(376);
    obj.layout11:setTop(265);
    obj.layout11:setWidth(180);
    obj.layout11:setHeight(39);
    obj.layout11:setName("layout11");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout11);
    obj.edit10:setTransparent(true);
    obj.edit10:setFontSize(20);
    obj.edit10:setFontColor("#000000");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setVertTextAlign("trailing");
    obj.edit10:setLeft(0);
    obj.edit10:setTop(0);
    obj.edit10:setWidth(180);
    obj.edit10:setHeight(39);
    obj.edit10:setField("gender_1");
    obj.edit10:setName("edit10");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.rectangle4);
    obj.layout12:setLeft(1020);
    obj.layout12:setTop(199);
    obj.layout12:setWidth(180);
    obj.layout12:setHeight(39);
    obj.layout12:setName("layout12");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout12);
    obj.edit11:setTransparent(true);
    obj.edit11:setFontSize(20);
    obj.edit11:setFontColor("#000000");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setVertTextAlign("trailing");
    obj.edit11:setLeft(0);
    obj.edit11:setTop(0);
    obj.edit11:setWidth(180);
    obj.edit11:setHeight(39);
    obj.edit11:setField("ability_2");
    obj.edit11:setName("edit11");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.rectangle4);
    obj.layout13:setLeft(1020);
    obj.layout13:setTop(264);
    obj.layout13:setWidth(180);
    obj.layout13:setHeight(39);
    obj.layout13:setName("layout13");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout13);
    obj.edit12:setTransparent(true);
    obj.edit12:setFontSize(20);
    obj.edit12:setFontColor("#000000");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setVertTextAlign("trailing");
    obj.edit12:setLeft(0);
    obj.edit12:setTop(0);
    obj.edit12:setWidth(180);
    obj.edit12:setHeight(39);
    obj.edit12:setField("gender_2");
    obj.edit12:setName("edit12");

    obj.image40 = GUI.fromHandle(_obj_newObject("image"));
    obj.image40:setParent(obj.rectangle4);
    obj.image40:setField("type1_1");
    obj.image40:setEditable(true);
    obj.image40:setStyle("autoFit");
    obj.image40:setLeft(375);
    obj.image40:setTop(325);
    obj.image40:setWidth(89);
    obj.image40:setHeight(40);
    obj.image40:setName("image40");

    obj.image41 = GUI.fromHandle(_obj_newObject("image"));
    obj.image41:setParent(obj.rectangle4);
    obj.image41:setField("type1_2");
    obj.image41:setEditable(true);
    obj.image41:setStyle("autoFit");
    obj.image41:setLeft(465);
    obj.image41:setTop(325);
    obj.image41:setWidth(89);
    obj.image41:setHeight(40);
    obj.image41:setName("image41");

    obj.image42 = GUI.fromHandle(_obj_newObject("image"));
    obj.image42:setParent(obj.rectangle4);
    obj.image42:setField("type2_1");
    obj.image42:setEditable(true);
    obj.image42:setStyle("autoFit");
    obj.image42:setLeft(1018);
    obj.image42:setTop(325);
    obj.image42:setWidth(89);
    obj.image42:setHeight(40);
    obj.image42:setName("image42");

    obj.image43 = GUI.fromHandle(_obj_newObject("image"));
    obj.image43:setParent(obj.rectangle4);
    obj.image43:setField("type2_2");
    obj.image43:setEditable(true);
    obj.image43:setStyle("autoFit");
    obj.image43:setLeft(1108);
    obj.image43:setTop(325);
    obj.image43:setWidth(89);
    obj.image43:setHeight(40);
    obj.image43:setName("image43");

    obj.image44 = GUI.fromHandle(_obj_newObject("image"));
    obj.image44:setParent(obj.rectangle4);
    obj.image44:setField("item_1");
    obj.image44:setEditable(true);
    obj.image44:setStyle("autoFit");
    obj.image44:setLeft(310);
    obj.image44:setTop(392);
    obj.image44:setWidth(40);
    obj.image44:setHeight(40);
    obj.image44:setName("image44");

    obj.image45 = GUI.fromHandle(_obj_newObject("image"));
    obj.image45:setParent(obj.rectangle4);
    obj.image45:setField("item_2");
    obj.image45:setEditable(true);
    obj.image45:setStyle("autoFit");
    obj.image45:setLeft(953);
    obj.image45:setTop(392);
    obj.image45:setWidth(40);
    obj.image45:setHeight(40);
    obj.image45:setName("image45");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.rectangle4);
    obj.layout14:setLeft(375);
    obj.layout14:setTop(390);
    obj.layout14:setWidth(88);
    obj.layout14:setHeight(40);
    obj.layout14:setName("layout14");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout14);
    obj.edit13:setTransparent(true);
    obj.edit13:setVertTextAlign("trailing");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setLeft(0);
    obj.edit13:setTop(0);
    obj.edit13:setWidth(88);
    obj.edit13:setHeight(40);
    obj.edit13:setFontSize(20);
    obj.edit13:setFontColor("#000000");
    obj.edit13:setField("exp_1");
    obj.edit13:setName("edit13");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle4);
    obj.layout15:setLeft(465);
    obj.layout15:setTop(390);
    obj.layout15:setWidth(88);
    obj.layout15:setHeight(40);
    obj.layout15:setName("layout15");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout15);
    obj.edit14:setTransparent(true);
    obj.edit14:setVertTextAlign("trailing");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setLeft(0);
    obj.edit14:setTop(0);
    obj.edit14:setWidth(88);
    obj.edit14:setHeight(40);
    obj.edit14:setFontSize(20);
    obj.edit14:setFontColor("#000000");
    obj.edit14:setField("level_1");
    obj.edit14:setName("edit14");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.rectangle4);
    obj.layout16:setLeft(1018);
    obj.layout16:setTop(390);
    obj.layout16:setWidth(88);
    obj.layout16:setHeight(40);
    obj.layout16:setName("layout16");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout16);
    obj.edit15:setTransparent(true);
    obj.edit15:setVertTextAlign("trailing");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setLeft(0);
    obj.edit15:setTop(0);
    obj.edit15:setWidth(88);
    obj.edit15:setHeight(40);
    obj.edit15:setFontSize(20);
    obj.edit15:setFontColor("#000000");
    obj.edit15:setField("exp_2");
    obj.edit15:setName("edit15");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.rectangle4);
    obj.layout17:setLeft(1108);
    obj.layout17:setTop(389);
    obj.layout17:setWidth(88);
    obj.layout17:setHeight(40);
    obj.layout17:setName("layout17");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout17);
    obj.edit16:setTransparent(true);
    obj.edit16:setVertTextAlign("trailing");
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setLeft(0);
    obj.edit16:setTop(0);
    obj.edit16:setWidth(88);
    obj.edit16:setHeight(40);
    obj.edit16:setFontSize(20);
    obj.edit16:setFontColor("#000000");
    obj.edit16:setField("level_2");
    obj.edit16:setName("edit16");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.rectangle4);
    obj.layout18:setLeft(78);
    obj.layout18:setTop(450);
    obj.layout18:setWidth(133);
    obj.layout18:setHeight(39);
    obj.layout18:setName("layout18");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout18);
    obj.edit17:setTransparent(true);
    obj.edit17:setVertTextAlign("trailing");
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setLeft(0);
    obj.edit17:setTop(0);
    obj.edit17:setWidth(133);
    obj.edit17:setHeight(39);
    obj.edit17:setFontSize(20);
    obj.edit17:setFontColor("#000000");
    obj.edit17:setField("atk_1_1");
    obj.edit17:setName("edit17");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.rectangle4);
    obj.layout19:setLeft(215);
    obj.layout19:setTop(450);
    obj.layout19:setWidth(133);
    obj.layout19:setHeight(39);
    obj.layout19:setName("layout19");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout19);
    obj.edit18:setTransparent(true);
    obj.edit18:setVertTextAlign("trailing");
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setLeft(0);
    obj.edit18:setTop(0);
    obj.edit18:setWidth(133);
    obj.edit18:setHeight(39);
    obj.edit18:setFontSize(20);
    obj.edit18:setFontColor("#000000");
    obj.edit18:setField("atk_1_2");
    obj.edit18:setName("edit18");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.rectangle4);
    obj.layout20:setLeft(78);
    obj.layout20:setTop(492);
    obj.layout20:setWidth(133);
    obj.layout20:setHeight(39);
    obj.layout20:setName("layout20");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout20);
    obj.edit19:setTransparent(true);
    obj.edit19:setVertTextAlign("trailing");
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setLeft(0);
    obj.edit19:setTop(0);
    obj.edit19:setWidth(133);
    obj.edit19:setHeight(39);
    obj.edit19:setFontSize(20);
    obj.edit19:setFontColor("#000000");
    obj.edit19:setField("atk_1_3");
    obj.edit19:setName("edit19");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.rectangle4);
    obj.layout21:setLeft(215);
    obj.layout21:setTop(492);
    obj.layout21:setWidth(133);
    obj.layout21:setHeight(39);
    obj.layout21:setName("layout21");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout21);
    obj.edit20:setTransparent(true);
    obj.edit20:setVertTextAlign("trailing");
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setLeft(0);
    obj.edit20:setTop(0);
    obj.edit20:setWidth(133);
    obj.edit20:setHeight(39);
    obj.edit20:setFontSize(20);
    obj.edit20:setFontColor("#000000");
    obj.edit20:setField("atk_1_4");
    obj.edit20:setName("edit20");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.rectangle4);
    obj.layout22:setLeft(721);
    obj.layout22:setTop(450);
    obj.layout22:setWidth(134);
    obj.layout22:setHeight(39);
    obj.layout22:setName("layout22");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout22);
    obj.edit21:setTransparent(true);
    obj.edit21:setVertTextAlign("trailing");
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setLeft(0);
    obj.edit21:setTop(0);
    obj.edit21:setWidth(134);
    obj.edit21:setHeight(39);
    obj.edit21:setFontSize(20);
    obj.edit21:setFontColor("#000000");
    obj.edit21:setField("atk_2_1");
    obj.edit21:setName("edit21");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.rectangle4);
    obj.layout23:setLeft(859);
    obj.layout23:setTop(450);
    obj.layout23:setWidth(133);
    obj.layout23:setHeight(39);
    obj.layout23:setName("layout23");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout23);
    obj.edit22:setTransparent(true);
    obj.edit22:setVertTextAlign("trailing");
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setLeft(0);
    obj.edit22:setTop(0);
    obj.edit22:setWidth(134);
    obj.edit22:setHeight(39);
    obj.edit22:setFontSize(20);
    obj.edit22:setFontColor("#000000");
    obj.edit22:setField("atk_2_2");
    obj.edit22:setName("edit22");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.rectangle4);
    obj.layout24:setLeft(721);
    obj.layout24:setTop(492);
    obj.layout24:setWidth(134);
    obj.layout24:setHeight(39);
    obj.layout24:setName("layout24");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout24);
    obj.edit23:setTransparent(true);
    obj.edit23:setVertTextAlign("trailing");
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setLeft(0);
    obj.edit23:setTop(0);
    obj.edit23:setWidth(134);
    obj.edit23:setHeight(39);
    obj.edit23:setFontSize(20);
    obj.edit23:setFontColor("#000000");
    obj.edit23:setField("atk_2_3");
    obj.edit23:setName("edit23");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.rectangle4);
    obj.layout25:setLeft(859);
    obj.layout25:setTop(492);
    obj.layout25:setWidth(133);
    obj.layout25:setHeight(39);
    obj.layout25:setName("layout25");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout25);
    obj.edit24:setTransparent(true);
    obj.edit24:setVertTextAlign("trailing");
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setLeft(0);
    obj.edit24:setTop(0);
    obj.edit24:setWidth(134);
    obj.edit24:setHeight(39);
    obj.edit24:setFontSize(20);
    obj.edit24:setFontColor("#000000");
    obj.edit24:setField("atk_2_4");
    obj.edit24:setName("edit24");

    obj.tab5 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab5:setParent(obj.tabControl1);
    obj.tab5:setTitle("Pokemon Party #2");
    obj.tab5:setName("tab5");

    obj.frmFichaTeste4_svg = GUI.fromHandle(_obj_newObject("form"));
    obj.frmFichaTeste4_svg:setParent(obj.tab5);
    obj.frmFichaTeste4_svg:setName("frmFichaTeste4_svg");
    obj.frmFichaTeste4_svg:setAlign("client");
    obj.frmFichaTeste4_svg:setTheme("light");
    obj.frmFichaTeste4_svg:setMargins({top=1});

    obj.scrollBox5 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox5:setParent(obj.frmFichaTeste4_svg);
    obj.scrollBox5:setAlign("client");
    obj.scrollBox5:setName("scrollBox5");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.scrollBox5);
    obj.rectangle5:setWidth(1267);
    obj.rectangle5:setHeight(593);
    obj.rectangle5:setColor("white");
    obj.rectangle5:setName("rectangle5");

    obj.image46 = GUI.fromHandle(_obj_newObject("image"));
    obj.image46:setParent(obj.rectangle5);
    obj.image46:setLeft(0);
    obj.image46:setTop(0);
    obj.image46:setWidth(1267);
    obj.image46:setHeight(593);
    obj.image46:setSRC("/FichaTeste/images/4.png");
    obj.image46:setStyle("stretch");
    obj.image46:setOptimize(true);
    obj.image46:setName("image46");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.rectangle5);
    obj.layout26:setLeft(720);
    obj.layout26:setTop(117);
    obj.layout26:setWidth(270);
    obj.layout26:setHeight(37);
    obj.layout26:setName("layout26");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout26);
    obj.edit25:setTransparent(true);
    obj.edit25:setFontSize(20);
    obj.edit25:setFontColor("#000000");
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setVertTextAlign("trailing");
    obj.edit25:setLeft(0);
    obj.edit25:setTop(0);
    obj.edit25:setWidth(270);
    obj.edit25:setHeight(37);
    obj.edit25:setField("name_pkmn_4");
    obj.edit25:setName("edit25");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.rectangle5);
    obj.layout27:setLeft(78);
    obj.layout27:setTop(117);
    obj.layout27:setWidth(270);
    obj.layout27:setHeight(37);
    obj.layout27:setName("layout27");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout27);
    obj.edit26:setTransparent(true);
    obj.edit26:setVertTextAlign("trailing");
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setFontSize(20);
    obj.edit26:setFontColor("#000000");
    obj.edit26:setLeft(0);
    obj.edit26:setTop(0);
    obj.edit26:setWidth(270);
    obj.edit26:setHeight(37);
    obj.edit26:setField("name_pkmn_3");
    obj.edit26:setName("edit26");

    obj.image47 = GUI.fromHandle(_obj_newObject("image"));
    obj.image47:setParent(obj.rectangle5);
    obj.image47:setField("img_pkmn_3");
    obj.image47:setEditable(true);
    obj.image47:setStyle("autoFit");
    obj.image47:setLeft(76);
    obj.image47:setTop(159);
    obj.image47:setWidth(275);
    obj.image47:setHeight(275);
    obj.image47:setName("image47");

    obj.image48 = GUI.fromHandle(_obj_newObject("image"));
    obj.image48:setParent(obj.rectangle5);
    obj.image48:setField("img_pkmn_4");
    obj.image48:setEditable(true);
    obj.image48:setStyle("autoFit");
    obj.image48:setLeft(720);
    obj.image48:setTop(159);
    obj.image48:setWidth(275);
    obj.image48:setHeight(275);
    obj.image48:setName("image48");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.rectangle5);
    obj.layout28:setLeft(376);
    obj.layout28:setTop(200);
    obj.layout28:setWidth(180);
    obj.layout28:setHeight(39);
    obj.layout28:setName("layout28");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout28);
    obj.edit27:setTransparent(true);
    obj.edit27:setFontSize(20);
    obj.edit27:setFontColor("#000000");
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setVertTextAlign("trailing");
    obj.edit27:setLeft(0);
    obj.edit27:setTop(0);
    obj.edit27:setWidth(180);
    obj.edit27:setHeight(39);
    obj.edit27:setField("ability_3");
    obj.edit27:setName("edit27");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.rectangle5);
    obj.layout29:setLeft(376);
    obj.layout29:setTop(265);
    obj.layout29:setWidth(180);
    obj.layout29:setHeight(39);
    obj.layout29:setName("layout29");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout29);
    obj.edit28:setTransparent(true);
    obj.edit28:setFontSize(20);
    obj.edit28:setFontColor("#000000");
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setVertTextAlign("trailing");
    obj.edit28:setLeft(0);
    obj.edit28:setTop(0);
    obj.edit28:setWidth(180);
    obj.edit28:setHeight(39);
    obj.edit28:setField("gender_3");
    obj.edit28:setName("edit28");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.rectangle5);
    obj.layout30:setLeft(1020);
    obj.layout30:setTop(199);
    obj.layout30:setWidth(180);
    obj.layout30:setHeight(39);
    obj.layout30:setName("layout30");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout30);
    obj.edit29:setTransparent(true);
    obj.edit29:setFontSize(20);
    obj.edit29:setFontColor("#000000");
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setVertTextAlign("trailing");
    obj.edit29:setLeft(0);
    obj.edit29:setTop(0);
    obj.edit29:setWidth(180);
    obj.edit29:setHeight(39);
    obj.edit29:setField("ability_4");
    obj.edit29:setName("edit29");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.rectangle5);
    obj.layout31:setLeft(1020);
    obj.layout31:setTop(264);
    obj.layout31:setWidth(180);
    obj.layout31:setHeight(39);
    obj.layout31:setName("layout31");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout31);
    obj.edit30:setTransparent(true);
    obj.edit30:setFontSize(20);
    obj.edit30:setFontColor("#000000");
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setVertTextAlign("trailing");
    obj.edit30:setLeft(0);
    obj.edit30:setTop(0);
    obj.edit30:setWidth(180);
    obj.edit30:setHeight(39);
    obj.edit30:setField("gender_4");
    obj.edit30:setName("edit30");

    obj.image49 = GUI.fromHandle(_obj_newObject("image"));
    obj.image49:setParent(obj.rectangle5);
    obj.image49:setField("type3_1");
    obj.image49:setEditable(true);
    obj.image49:setStyle("autoFit");
    obj.image49:setLeft(375);
    obj.image49:setTop(325);
    obj.image49:setWidth(89);
    obj.image49:setHeight(40);
    obj.image49:setName("image49");

    obj.image50 = GUI.fromHandle(_obj_newObject("image"));
    obj.image50:setParent(obj.rectangle5);
    obj.image50:setField("type3_2");
    obj.image50:setEditable(true);
    obj.image50:setStyle("autoFit");
    obj.image50:setLeft(465);
    obj.image50:setTop(325);
    obj.image50:setWidth(89);
    obj.image50:setHeight(40);
    obj.image50:setName("image50");

    obj.image51 = GUI.fromHandle(_obj_newObject("image"));
    obj.image51:setParent(obj.rectangle5);
    obj.image51:setField("type4_1");
    obj.image51:setEditable(true);
    obj.image51:setStyle("autoFit");
    obj.image51:setLeft(1018);
    obj.image51:setTop(325);
    obj.image51:setWidth(89);
    obj.image51:setHeight(40);
    obj.image51:setName("image51");

    obj.image52 = GUI.fromHandle(_obj_newObject("image"));
    obj.image52:setParent(obj.rectangle5);
    obj.image52:setField("type4_2");
    obj.image52:setEditable(true);
    obj.image52:setStyle("autoFit");
    obj.image52:setLeft(1108);
    obj.image52:setTop(325);
    obj.image52:setWidth(89);
    obj.image52:setHeight(40);
    obj.image52:setName("image52");

    obj.image53 = GUI.fromHandle(_obj_newObject("image"));
    obj.image53:setParent(obj.rectangle5);
    obj.image53:setField("item_3");
    obj.image53:setEditable(true);
    obj.image53:setStyle("autoFit");
    obj.image53:setLeft(310);
    obj.image53:setTop(392);
    obj.image53:setWidth(40);
    obj.image53:setHeight(40);
    obj.image53:setName("image53");

    obj.image54 = GUI.fromHandle(_obj_newObject("image"));
    obj.image54:setParent(obj.rectangle5);
    obj.image54:setField("item_4");
    obj.image54:setEditable(true);
    obj.image54:setStyle("autoFit");
    obj.image54:setLeft(953);
    obj.image54:setTop(392);
    obj.image54:setWidth(40);
    obj.image54:setHeight(40);
    obj.image54:setName("image54");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.rectangle5);
    obj.layout32:setLeft(375);
    obj.layout32:setTop(390);
    obj.layout32:setWidth(88);
    obj.layout32:setHeight(40);
    obj.layout32:setName("layout32");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout32);
    obj.edit31:setTransparent(true);
    obj.edit31:setVertTextAlign("trailing");
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setLeft(0);
    obj.edit31:setTop(0);
    obj.edit31:setWidth(88);
    obj.edit31:setHeight(40);
    obj.edit31:setFontSize(20);
    obj.edit31:setFontColor("#000000");
    obj.edit31:setField("exp_3");
    obj.edit31:setName("edit31");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.rectangle5);
    obj.layout33:setLeft(465);
    obj.layout33:setTop(390);
    obj.layout33:setWidth(88);
    obj.layout33:setHeight(40);
    obj.layout33:setName("layout33");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout33);
    obj.edit32:setTransparent(true);
    obj.edit32:setVertTextAlign("trailing");
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setLeft(0);
    obj.edit32:setTop(0);
    obj.edit32:setWidth(88);
    obj.edit32:setHeight(40);
    obj.edit32:setFontSize(20);
    obj.edit32:setFontColor("#000000");
    obj.edit32:setField("level_3");
    obj.edit32:setName("edit32");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.rectangle5);
    obj.layout34:setLeft(1018);
    obj.layout34:setTop(390);
    obj.layout34:setWidth(88);
    obj.layout34:setHeight(40);
    obj.layout34:setName("layout34");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout34);
    obj.edit33:setTransparent(true);
    obj.edit33:setVertTextAlign("trailing");
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setLeft(0);
    obj.edit33:setTop(0);
    obj.edit33:setWidth(88);
    obj.edit33:setHeight(40);
    obj.edit33:setFontSize(20);
    obj.edit33:setFontColor("#000000");
    obj.edit33:setField("exp_4");
    obj.edit33:setName("edit33");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.rectangle5);
    obj.layout35:setLeft(1108);
    obj.layout35:setTop(389);
    obj.layout35:setWidth(88);
    obj.layout35:setHeight(40);
    obj.layout35:setName("layout35");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout35);
    obj.edit34:setTransparent(true);
    obj.edit34:setVertTextAlign("trailing");
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setLeft(0);
    obj.edit34:setTop(0);
    obj.edit34:setWidth(88);
    obj.edit34:setHeight(40);
    obj.edit34:setFontSize(20);
    obj.edit34:setFontColor("#000000");
    obj.edit34:setField("level_4");
    obj.edit34:setName("edit34");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.rectangle5);
    obj.layout36:setLeft(78);
    obj.layout36:setTop(450);
    obj.layout36:setWidth(133);
    obj.layout36:setHeight(39);
    obj.layout36:setName("layout36");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout36);
    obj.edit35:setTransparent(true);
    obj.edit35:setVertTextAlign("trailing");
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setLeft(0);
    obj.edit35:setTop(0);
    obj.edit35:setWidth(133);
    obj.edit35:setHeight(39);
    obj.edit35:setFontSize(20);
    obj.edit35:setFontColor("#000000");
    obj.edit35:setField("atk_3_1");
    obj.edit35:setName("edit35");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.rectangle5);
    obj.layout37:setLeft(215);
    obj.layout37:setTop(450);
    obj.layout37:setWidth(133);
    obj.layout37:setHeight(39);
    obj.layout37:setName("layout37");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.layout37);
    obj.edit36:setTransparent(true);
    obj.edit36:setVertTextAlign("trailing");
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setLeft(0);
    obj.edit36:setTop(0);
    obj.edit36:setWidth(133);
    obj.edit36:setHeight(39);
    obj.edit36:setFontSize(20);
    obj.edit36:setFontColor("#000000");
    obj.edit36:setField("atk_3_2");
    obj.edit36:setName("edit36");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.rectangle5);
    obj.layout38:setLeft(78);
    obj.layout38:setTop(492);
    obj.layout38:setWidth(133);
    obj.layout38:setHeight(39);
    obj.layout38:setName("layout38");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.layout38);
    obj.edit37:setTransparent(true);
    obj.edit37:setVertTextAlign("trailing");
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setLeft(0);
    obj.edit37:setTop(0);
    obj.edit37:setWidth(133);
    obj.edit37:setHeight(39);
    obj.edit37:setFontSize(20);
    obj.edit37:setFontColor("#000000");
    obj.edit37:setField("atk_3_3");
    obj.edit37:setName("edit37");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.rectangle5);
    obj.layout39:setLeft(215);
    obj.layout39:setTop(492);
    obj.layout39:setWidth(133);
    obj.layout39:setHeight(39);
    obj.layout39:setName("layout39");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.layout39);
    obj.edit38:setTransparent(true);
    obj.edit38:setVertTextAlign("trailing");
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setLeft(0);
    obj.edit38:setTop(0);
    obj.edit38:setWidth(133);
    obj.edit38:setHeight(39);
    obj.edit38:setFontSize(20);
    obj.edit38:setFontColor("#000000");
    obj.edit38:setField("atk_3_4");
    obj.edit38:setName("edit38");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.rectangle5);
    obj.layout40:setLeft(721);
    obj.layout40:setTop(450);
    obj.layout40:setWidth(134);
    obj.layout40:setHeight(39);
    obj.layout40:setName("layout40");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.layout40);
    obj.edit39:setTransparent(true);
    obj.edit39:setVertTextAlign("trailing");
    obj.edit39:setHorzTextAlign("center");
    obj.edit39:setLeft(0);
    obj.edit39:setTop(0);
    obj.edit39:setWidth(134);
    obj.edit39:setHeight(39);
    obj.edit39:setFontSize(20);
    obj.edit39:setFontColor("#000000");
    obj.edit39:setField("atk_4_1");
    obj.edit39:setName("edit39");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.rectangle5);
    obj.layout41:setLeft(859);
    obj.layout41:setTop(450);
    obj.layout41:setWidth(133);
    obj.layout41:setHeight(39);
    obj.layout41:setName("layout41");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.layout41);
    obj.edit40:setTransparent(true);
    obj.edit40:setVertTextAlign("trailing");
    obj.edit40:setHorzTextAlign("center");
    obj.edit40:setLeft(0);
    obj.edit40:setTop(0);
    obj.edit40:setWidth(134);
    obj.edit40:setHeight(39);
    obj.edit40:setFontSize(20);
    obj.edit40:setFontColor("#000000");
    obj.edit40:setField("atk_4_2");
    obj.edit40:setName("edit40");

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.rectangle5);
    obj.layout42:setLeft(721);
    obj.layout42:setTop(492);
    obj.layout42:setWidth(134);
    obj.layout42:setHeight(39);
    obj.layout42:setName("layout42");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.layout42);
    obj.edit41:setTransparent(true);
    obj.edit41:setVertTextAlign("trailing");
    obj.edit41:setHorzTextAlign("center");
    obj.edit41:setLeft(0);
    obj.edit41:setTop(0);
    obj.edit41:setWidth(134);
    obj.edit41:setHeight(39);
    obj.edit41:setFontSize(20);
    obj.edit41:setFontColor("#000000");
    obj.edit41:setField("atk_4_3");
    obj.edit41:setName("edit41");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.rectangle5);
    obj.layout43:setLeft(859);
    obj.layout43:setTop(492);
    obj.layout43:setWidth(133);
    obj.layout43:setHeight(39);
    obj.layout43:setName("layout43");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.layout43);
    obj.edit42:setTransparent(true);
    obj.edit42:setVertTextAlign("trailing");
    obj.edit42:setHorzTextAlign("center");
    obj.edit42:setLeft(0);
    obj.edit42:setTop(0);
    obj.edit42:setWidth(134);
    obj.edit42:setHeight(39);
    obj.edit42:setFontSize(20);
    obj.edit42:setFontColor("#000000");
    obj.edit42:setField("atk_4_4");
    obj.edit42:setName("edit42");

    obj.tab6 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab6:setParent(obj.tabControl1);
    obj.tab6:setTitle("Pokemon Party #3");
    obj.tab6:setName("tab6");

    obj.frmFichaTeste6_svg = GUI.fromHandle(_obj_newObject("form"));
    obj.frmFichaTeste6_svg:setParent(obj.tab6);
    obj.frmFichaTeste6_svg:setName("frmFichaTeste6_svg");
    obj.frmFichaTeste6_svg:setAlign("client");
    obj.frmFichaTeste6_svg:setTheme("light");
    obj.frmFichaTeste6_svg:setMargins({top=1});

    obj.scrollBox6 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox6:setParent(obj.frmFichaTeste6_svg);
    obj.scrollBox6:setAlign("client");
    obj.scrollBox6:setName("scrollBox6");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.scrollBox6);
    obj.rectangle6:setWidth(1267);
    obj.rectangle6:setHeight(593);
    obj.rectangle6:setColor("white");
    obj.rectangle6:setName("rectangle6");

    obj.image55 = GUI.fromHandle(_obj_newObject("image"));
    obj.image55:setParent(obj.rectangle6);
    obj.image55:setLeft(0);
    obj.image55:setTop(0);
    obj.image55:setWidth(1267);
    obj.image55:setHeight(593);
    obj.image55:setSRC("/FichaTeste/images/4.png");
    obj.image55:setStyle("stretch");
    obj.image55:setOptimize(true);
    obj.image55:setName("image55");

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.rectangle6);
    obj.layout44:setLeft(720);
    obj.layout44:setTop(117);
    obj.layout44:setWidth(270);
    obj.layout44:setHeight(37);
    obj.layout44:setName("layout44");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.layout44);
    obj.edit43:setTransparent(true);
    obj.edit43:setFontSize(20);
    obj.edit43:setFontColor("#000000");
    obj.edit43:setHorzTextAlign("center");
    obj.edit43:setVertTextAlign("trailing");
    obj.edit43:setLeft(0);
    obj.edit43:setTop(0);
    obj.edit43:setWidth(270);
    obj.edit43:setHeight(37);
    obj.edit43:setField("name_pkmn_6");
    obj.edit43:setName("edit43");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.rectangle6);
    obj.layout45:setLeft(78);
    obj.layout45:setTop(117);
    obj.layout45:setWidth(270);
    obj.layout45:setHeight(37);
    obj.layout45:setName("layout45");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.layout45);
    obj.edit44:setTransparent(true);
    obj.edit44:setVertTextAlign("trailing");
    obj.edit44:setHorzTextAlign("center");
    obj.edit44:setFontSize(20);
    obj.edit44:setFontColor("#000000");
    obj.edit44:setLeft(0);
    obj.edit44:setTop(0);
    obj.edit44:setWidth(270);
    obj.edit44:setHeight(37);
    obj.edit44:setField("name_pkmn_5");
    obj.edit44:setName("edit44");

    obj.image56 = GUI.fromHandle(_obj_newObject("image"));
    obj.image56:setParent(obj.rectangle6);
    obj.image56:setField("img_pkmn_5");
    obj.image56:setEditable(true);
    obj.image56:setStyle("autoFit");
    obj.image56:setLeft(76);
    obj.image56:setTop(159);
    obj.image56:setWidth(275);
    obj.image56:setHeight(275);
    obj.image56:setName("image56");

    obj.image57 = GUI.fromHandle(_obj_newObject("image"));
    obj.image57:setParent(obj.rectangle6);
    obj.image57:setField("img_pkmn_6");
    obj.image57:setEditable(true);
    obj.image57:setStyle("autoFit");
    obj.image57:setLeft(720);
    obj.image57:setTop(159);
    obj.image57:setWidth(275);
    obj.image57:setHeight(275);
    obj.image57:setName("image57");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.rectangle6);
    obj.layout46:setLeft(376);
    obj.layout46:setTop(200);
    obj.layout46:setWidth(180);
    obj.layout46:setHeight(39);
    obj.layout46:setName("layout46");

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.layout46);
    obj.edit45:setTransparent(true);
    obj.edit45:setFontSize(20);
    obj.edit45:setFontColor("#000000");
    obj.edit45:setHorzTextAlign("center");
    obj.edit45:setVertTextAlign("trailing");
    obj.edit45:setLeft(0);
    obj.edit45:setTop(0);
    obj.edit45:setWidth(180);
    obj.edit45:setHeight(39);
    obj.edit45:setField("ability_5");
    obj.edit45:setName("edit45");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.rectangle6);
    obj.layout47:setLeft(376);
    obj.layout47:setTop(265);
    obj.layout47:setWidth(180);
    obj.layout47:setHeight(39);
    obj.layout47:setName("layout47");

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.layout47);
    obj.edit46:setTransparent(true);
    obj.edit46:setFontSize(20);
    obj.edit46:setFontColor("#000000");
    obj.edit46:setHorzTextAlign("center");
    obj.edit46:setVertTextAlign("trailing");
    obj.edit46:setLeft(0);
    obj.edit46:setTop(0);
    obj.edit46:setWidth(180);
    obj.edit46:setHeight(39);
    obj.edit46:setField("gender_5");
    obj.edit46:setName("edit46");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.rectangle6);
    obj.layout48:setLeft(1020);
    obj.layout48:setTop(199);
    obj.layout48:setWidth(180);
    obj.layout48:setHeight(39);
    obj.layout48:setName("layout48");

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.layout48);
    obj.edit47:setTransparent(true);
    obj.edit47:setFontSize(20);
    obj.edit47:setFontColor("#000000");
    obj.edit47:setHorzTextAlign("center");
    obj.edit47:setVertTextAlign("trailing");
    obj.edit47:setLeft(0);
    obj.edit47:setTop(0);
    obj.edit47:setWidth(180);
    obj.edit47:setHeight(39);
    obj.edit47:setField("ability_6");
    obj.edit47:setName("edit47");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.rectangle6);
    obj.layout49:setLeft(1020);
    obj.layout49:setTop(264);
    obj.layout49:setWidth(180);
    obj.layout49:setHeight(39);
    obj.layout49:setName("layout49");

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.layout49);
    obj.edit48:setTransparent(true);
    obj.edit48:setFontSize(20);
    obj.edit48:setFontColor("#000000");
    obj.edit48:setHorzTextAlign("center");
    obj.edit48:setVertTextAlign("trailing");
    obj.edit48:setLeft(0);
    obj.edit48:setTop(0);
    obj.edit48:setWidth(180);
    obj.edit48:setHeight(39);
    obj.edit48:setField("gender_6");
    obj.edit48:setName("edit48");

    obj.image58 = GUI.fromHandle(_obj_newObject("image"));
    obj.image58:setParent(obj.rectangle6);
    obj.image58:setField("type5_1");
    obj.image58:setEditable(true);
    obj.image58:setStyle("autoFit");
    obj.image58:setLeft(375);
    obj.image58:setTop(325);
    obj.image58:setWidth(89);
    obj.image58:setHeight(40);
    obj.image58:setName("image58");

    obj.image59 = GUI.fromHandle(_obj_newObject("image"));
    obj.image59:setParent(obj.rectangle6);
    obj.image59:setField("type5_2");
    obj.image59:setEditable(true);
    obj.image59:setStyle("autoFit");
    obj.image59:setLeft(465);
    obj.image59:setTop(325);
    obj.image59:setWidth(89);
    obj.image59:setHeight(40);
    obj.image59:setName("image59");

    obj.image60 = GUI.fromHandle(_obj_newObject("image"));
    obj.image60:setParent(obj.rectangle6);
    obj.image60:setField("type6_1");
    obj.image60:setEditable(true);
    obj.image60:setStyle("autoFit");
    obj.image60:setLeft(1018);
    obj.image60:setTop(325);
    obj.image60:setWidth(89);
    obj.image60:setHeight(40);
    obj.image60:setName("image60");

    obj.image61 = GUI.fromHandle(_obj_newObject("image"));
    obj.image61:setParent(obj.rectangle6);
    obj.image61:setField("type6_2");
    obj.image61:setEditable(true);
    obj.image61:setStyle("autoFit");
    obj.image61:setLeft(1108);
    obj.image61:setTop(325);
    obj.image61:setWidth(89);
    obj.image61:setHeight(40);
    obj.image61:setName("image61");

    obj.image62 = GUI.fromHandle(_obj_newObject("image"));
    obj.image62:setParent(obj.rectangle6);
    obj.image62:setField("item_5");
    obj.image62:setEditable(true);
    obj.image62:setStyle("autoFit");
    obj.image62:setLeft(310);
    obj.image62:setTop(392);
    obj.image62:setWidth(40);
    obj.image62:setHeight(40);
    obj.image62:setName("image62");

    obj.image63 = GUI.fromHandle(_obj_newObject("image"));
    obj.image63:setParent(obj.rectangle6);
    obj.image63:setField("item_6");
    obj.image63:setEditable(true);
    obj.image63:setStyle("autoFit");
    obj.image63:setLeft(953);
    obj.image63:setTop(392);
    obj.image63:setWidth(40);
    obj.image63:setHeight(40);
    obj.image63:setName("image63");

    obj.layout50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.rectangle6);
    obj.layout50:setLeft(375);
    obj.layout50:setTop(390);
    obj.layout50:setWidth(88);
    obj.layout50:setHeight(40);
    obj.layout50:setName("layout50");

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.layout50);
    obj.edit49:setTransparent(true);
    obj.edit49:setVertTextAlign("trailing");
    obj.edit49:setHorzTextAlign("center");
    obj.edit49:setLeft(0);
    obj.edit49:setTop(0);
    obj.edit49:setWidth(88);
    obj.edit49:setHeight(40);
    obj.edit49:setFontSize(20);
    obj.edit49:setFontColor("#000000");
    obj.edit49:setField("exp_5");
    obj.edit49:setName("edit49");

    obj.layout51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.rectangle6);
    obj.layout51:setLeft(465);
    obj.layout51:setTop(390);
    obj.layout51:setWidth(88);
    obj.layout51:setHeight(40);
    obj.layout51:setName("layout51");

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.layout51);
    obj.edit50:setTransparent(true);
    obj.edit50:setVertTextAlign("trailing");
    obj.edit50:setHorzTextAlign("center");
    obj.edit50:setLeft(0);
    obj.edit50:setTop(0);
    obj.edit50:setWidth(88);
    obj.edit50:setHeight(40);
    obj.edit50:setFontSize(20);
    obj.edit50:setFontColor("#000000");
    obj.edit50:setField("level_5");
    obj.edit50:setName("edit50");

    obj.layout52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.rectangle6);
    obj.layout52:setLeft(1018);
    obj.layout52:setTop(390);
    obj.layout52:setWidth(88);
    obj.layout52:setHeight(40);
    obj.layout52:setName("layout52");

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.layout52);
    obj.edit51:setTransparent(true);
    obj.edit51:setVertTextAlign("trailing");
    obj.edit51:setHorzTextAlign("center");
    obj.edit51:setLeft(0);
    obj.edit51:setTop(0);
    obj.edit51:setWidth(88);
    obj.edit51:setHeight(40);
    obj.edit51:setFontSize(20);
    obj.edit51:setFontColor("#000000");
    obj.edit51:setField("exp_6");
    obj.edit51:setName("edit51");

    obj.layout53 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.rectangle6);
    obj.layout53:setLeft(1108);
    obj.layout53:setTop(389);
    obj.layout53:setWidth(88);
    obj.layout53:setHeight(40);
    obj.layout53:setName("layout53");

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.layout53);
    obj.edit52:setTransparent(true);
    obj.edit52:setVertTextAlign("trailing");
    obj.edit52:setHorzTextAlign("center");
    obj.edit52:setLeft(0);
    obj.edit52:setTop(0);
    obj.edit52:setWidth(88);
    obj.edit52:setHeight(40);
    obj.edit52:setFontSize(20);
    obj.edit52:setFontColor("#000000");
    obj.edit52:setField("level_6");
    obj.edit52:setName("edit52");

    obj.layout54 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.rectangle6);
    obj.layout54:setLeft(78);
    obj.layout54:setTop(450);
    obj.layout54:setWidth(133);
    obj.layout54:setHeight(39);
    obj.layout54:setName("layout54");

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.layout54);
    obj.edit53:setTransparent(true);
    obj.edit53:setVertTextAlign("trailing");
    obj.edit53:setHorzTextAlign("center");
    obj.edit53:setLeft(0);
    obj.edit53:setTop(0);
    obj.edit53:setWidth(133);
    obj.edit53:setHeight(39);
    obj.edit53:setFontSize(20);
    obj.edit53:setFontColor("#000000");
    obj.edit53:setField("atk_5_1");
    obj.edit53:setName("edit53");

    obj.layout55 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.rectangle6);
    obj.layout55:setLeft(215);
    obj.layout55:setTop(450);
    obj.layout55:setWidth(133);
    obj.layout55:setHeight(39);
    obj.layout55:setName("layout55");

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.layout55);
    obj.edit54:setTransparent(true);
    obj.edit54:setVertTextAlign("trailing");
    obj.edit54:setHorzTextAlign("center");
    obj.edit54:setLeft(0);
    obj.edit54:setTop(0);
    obj.edit54:setWidth(133);
    obj.edit54:setHeight(39);
    obj.edit54:setFontSize(20);
    obj.edit54:setFontColor("#000000");
    obj.edit54:setField("atk_5_2");
    obj.edit54:setName("edit54");

    obj.layout56 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.rectangle6);
    obj.layout56:setLeft(78);
    obj.layout56:setTop(492);
    obj.layout56:setWidth(133);
    obj.layout56:setHeight(39);
    obj.layout56:setName("layout56");

    obj.edit55 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.layout56);
    obj.edit55:setTransparent(true);
    obj.edit55:setVertTextAlign("trailing");
    obj.edit55:setHorzTextAlign("center");
    obj.edit55:setLeft(0);
    obj.edit55:setTop(0);
    obj.edit55:setWidth(133);
    obj.edit55:setHeight(39);
    obj.edit55:setFontSize(20);
    obj.edit55:setFontColor("#000000");
    obj.edit55:setField("atk_5_3");
    obj.edit55:setName("edit55");

    obj.layout57 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.rectangle6);
    obj.layout57:setLeft(215);
    obj.layout57:setTop(492);
    obj.layout57:setWidth(133);
    obj.layout57:setHeight(39);
    obj.layout57:setName("layout57");

    obj.edit56 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.layout57);
    obj.edit56:setTransparent(true);
    obj.edit56:setVertTextAlign("trailing");
    obj.edit56:setHorzTextAlign("center");
    obj.edit56:setLeft(0);
    obj.edit56:setTop(0);
    obj.edit56:setWidth(133);
    obj.edit56:setHeight(39);
    obj.edit56:setFontSize(20);
    obj.edit56:setFontColor("#000000");
    obj.edit56:setField("atk_5_4");
    obj.edit56:setName("edit56");

    obj.layout58 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.rectangle6);
    obj.layout58:setLeft(721);
    obj.layout58:setTop(450);
    obj.layout58:setWidth(134);
    obj.layout58:setHeight(39);
    obj.layout58:setName("layout58");

    obj.edit57 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.layout58);
    obj.edit57:setTransparent(true);
    obj.edit57:setVertTextAlign("trailing");
    obj.edit57:setHorzTextAlign("center");
    obj.edit57:setLeft(0);
    obj.edit57:setTop(0);
    obj.edit57:setWidth(134);
    obj.edit57:setHeight(39);
    obj.edit57:setFontSize(20);
    obj.edit57:setFontColor("#000000");
    obj.edit57:setField("atk_6_1");
    obj.edit57:setName("edit57");

    obj.layout59 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.rectangle6);
    obj.layout59:setLeft(859);
    obj.layout59:setTop(450);
    obj.layout59:setWidth(133);
    obj.layout59:setHeight(39);
    obj.layout59:setName("layout59");

    obj.edit58 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.layout59);
    obj.edit58:setTransparent(true);
    obj.edit58:setVertTextAlign("trailing");
    obj.edit58:setHorzTextAlign("center");
    obj.edit58:setLeft(0);
    obj.edit58:setTop(0);
    obj.edit58:setWidth(134);
    obj.edit58:setHeight(39);
    obj.edit58:setFontSize(20);
    obj.edit58:setFontColor("#000000");
    obj.edit58:setField("atk_6_2");
    obj.edit58:setName("edit58");

    obj.layout60 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout60:setParent(obj.rectangle6);
    obj.layout60:setLeft(721);
    obj.layout60:setTop(492);
    obj.layout60:setWidth(134);
    obj.layout60:setHeight(39);
    obj.layout60:setName("layout60");

    obj.edit59 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.layout60);
    obj.edit59:setTransparent(true);
    obj.edit59:setVertTextAlign("trailing");
    obj.edit59:setHorzTextAlign("center");
    obj.edit59:setLeft(0);
    obj.edit59:setTop(0);
    obj.edit59:setWidth(134);
    obj.edit59:setHeight(39);
    obj.edit59:setFontSize(20);
    obj.edit59:setFontColor("#000000");
    obj.edit59:setField("atk_6_3");
    obj.edit59:setName("edit59");

    obj.layout61 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout61:setParent(obj.rectangle6);
    obj.layout61:setLeft(859);
    obj.layout61:setTop(492);
    obj.layout61:setWidth(133);
    obj.layout61:setHeight(39);
    obj.layout61:setName("layout61");

    obj.edit60 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.layout61);
    obj.edit60:setTransparent(true);
    obj.edit60:setVertTextAlign("trailing");
    obj.edit60:setHorzTextAlign("center");
    obj.edit60:setLeft(0);
    obj.edit60:setTop(0);
    obj.edit60:setWidth(134);
    obj.edit60:setHeight(39);
    obj.edit60:setFontSize(20);
    obj.edit60:setFontColor("#000000");
    obj.edit60:setField("atk_6_4");
    obj.edit60:setName("edit60");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.frmFichaTeste6_svg ~= nil then self.frmFichaTeste6_svg:destroy(); self.frmFichaTeste6_svg = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.layout58 ~= nil then self.layout58:destroy(); self.layout58 = nil; end;
        if self.image30 ~= nil then self.image30:destroy(); self.image30 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.frmFichaTeste2_svg ~= nil then self.frmFichaTeste2_svg:destroy(); self.frmFichaTeste2_svg = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.image51 ~= nil then self.image51:destroy(); self.image51 = nil; end;
        if self.image7 ~= nil then self.image7:destroy(); self.image7 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.image20 ~= nil then self.image20:destroy(); self.image20 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.frmFichaTeste1_svg ~= nil then self.frmFichaTeste1_svg:destroy(); self.frmFichaTeste1_svg = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.image60 ~= nil then self.image60:destroy(); self.image60 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.tab5 ~= nil then self.tab5:destroy(); self.tab5 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.image11 ~= nil then self.image11:destroy(); self.image11 = nil; end;
        if self.image61 ~= nil then self.image61:destroy(); self.image61 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.image56 ~= nil then self.image56:destroy(); self.image56 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.image29 ~= nil then self.image29:destroy(); self.image29 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.image42 ~= nil then self.image42:destroy(); self.image42 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.image27 ~= nil then self.image27:destroy(); self.image27 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.image9 ~= nil then self.image9:destroy(); self.image9 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.image28 ~= nil then self.image28:destroy(); self.image28 = nil; end;
        if self.image45 ~= nil then self.image45:destroy(); self.image45 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.image8 ~= nil then self.image8:destroy(); self.image8 = nil; end;
        if self.layout61 ~= nil then self.layout61:destroy(); self.layout61 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.image10 ~= nil then self.image10:destroy(); self.image10 = nil; end;
        if self.image41 ~= nil then self.image41:destroy(); self.image41 = nil; end;
        if self.image47 ~= nil then self.image47:destroy(); self.image47 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.image37 ~= nil then self.image37:destroy(); self.image37 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.image22 ~= nil then self.image22:destroy(); self.image22 = nil; end;
        if self.image49 ~= nil then self.image49:destroy(); self.image49 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.image52 ~= nil then self.image52:destroy(); self.image52 = nil; end;
        if self.frmFichaTeste3_svg ~= nil then self.frmFichaTeste3_svg:destroy(); self.frmFichaTeste3_svg = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.image55 ~= nil then self.image55:destroy(); self.image55 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.image63 ~= nil then self.image63:destroy(); self.image63 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.scrollBox5 ~= nil then self.scrollBox5:destroy(); self.scrollBox5 = nil; end;
        if self.image18 ~= nil then self.image18:destroy(); self.image18 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.image58 ~= nil then self.image58:destroy(); self.image58 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.image34 ~= nil then self.image34:destroy(); self.image34 = nil; end;
        if self.tab6 ~= nil then self.tab6:destroy(); self.tab6 = nil; end;
        if self.image19 ~= nil then self.image19:destroy(); self.image19 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.image32 ~= nil then self.image32:destroy(); self.image32 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.layout60 ~= nil then self.layout60:destroy(); self.layout60 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.image54 ~= nil then self.image54:destroy(); self.image54 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.image14 ~= nil then self.image14:destroy(); self.image14 = nil; end;
        if self.image38 ~= nil then self.image38:destroy(); self.image38 = nil; end;
        if self.image33 ~= nil then self.image33:destroy(); self.image33 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.image46 ~= nil then self.image46:destroy(); self.image46 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.image62 ~= nil then self.image62:destroy(); self.image62 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        if self.image25 ~= nil then self.image25:destroy(); self.image25 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.image48 ~= nil then self.image48:destroy(); self.image48 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.image57 ~= nil then self.image57:destroy(); self.image57 = nil; end;
        if self.image35 ~= nil then self.image35:destroy(); self.image35 = nil; end;
        if self.image39 ~= nil then self.image39:destroy(); self.image39 = nil; end;
        if self.image12 ~= nil then self.image12:destroy(); self.image12 = nil; end;
        if self.image24 ~= nil then self.image24:destroy(); self.image24 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.frmFichaTeste4_svg ~= nil then self.frmFichaTeste4_svg:destroy(); self.frmFichaTeste4_svg = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.image40 ~= nil then self.image40:destroy(); self.image40 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.image16 ~= nil then self.image16:destroy(); self.image16 = nil; end;
        if self.image59 ~= nil then self.image59:destroy(); self.image59 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.image26 ~= nil then self.image26:destroy(); self.image26 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.image17 ~= nil then self.image17:destroy(); self.image17 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.image50 ~= nil then self.image50:destroy(); self.image50 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.frmFichaTeste5_svg ~= nil then self.frmFichaTeste5_svg:destroy(); self.frmFichaTeste5_svg = nil; end;
        if self.scrollBox6 ~= nil then self.scrollBox6:destroy(); self.scrollBox6 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.image15 ~= nil then self.image15:destroy(); self.image15 = nil; end;
        if self.image23 ~= nil then self.image23:destroy(); self.image23 = nil; end;
        if self.image31 ~= nil then self.image31:destroy(); self.image31 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.image36 ~= nil then self.image36:destroy(); self.image36 = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.image13 ~= nil then self.image13:destroy(); self.image13 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.image44 ~= nil then self.image44:destroy(); self.image44 = nil; end;
        if self.image43 ~= nil then self.image43:destroy(); self.image43 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.image53 ~= nil then self.image53:destroy(); self.image53 = nil; end;
        if self.image21 ~= nil then self.image21:destroy(); self.image21 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmPokemon()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmPokemon();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmPokemon = {
    newEditor = newfrmPokemon, 
    new = newfrmPokemon, 
    name = "frmPokemon", 
    dataType = "Pokemon.DataType", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Pokemon Custom", 
    description=""};

frmPokemon = _frmPokemon;
Firecast.registrarForm(_frmPokemon);
Firecast.registrarDataType(_frmPokemon);

return _frmPokemon;
