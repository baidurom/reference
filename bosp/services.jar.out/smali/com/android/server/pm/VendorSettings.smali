.class final Lcom/android/server/pm/VendorSettings;
.super Ljava/lang/Object;
.source "VendorSettings.java"


# static fields
.field static final ATTR_INSTALL_STATUS:Ljava/lang/String; = "installStatus"

.field static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "name"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_ROOT:Ljava/lang/String; = "packages"

.field static final VAL_INSTALLED:Ljava/lang/String; = "installed"

.field static final VAL_UNINSTALLED:Ljava/lang/String; = "uninstalled"


# instance fields
.field private final mSystemDir:Ljava/io/File;

.field private final mVendorBackupSettingsFilename:Ljava/io/File;

.field final mVendorPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/VendorPackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mVendorSettingsFilename:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/VendorSettings;-><init>(Ljava/io/File;)V

    .line 88
    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .locals 3
    .parameter "dataDir"

    .prologue
    const/4 v2, -0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/VendorSettings;->mVendorPackages:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/io/File;

    const-string v1, "system"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/VendorSettings;->mSystemDir:Ljava/io/File;

    .line 91
    iget-object v0, p0, Lcom/android/server/pm/VendorSettings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 92
    iget-object v0, p0, Lcom/android/server/pm/VendorSettings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 96
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/VendorSettings;->mSystemDir:Ljava/io/File;

    const-string v2, "custom-packages.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/VendorSettings;->mVendorSettingsFilename:Ljava/io/File;

    .line 97
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/VendorSettings;->mSystemDir:Ljava/io/File;

    const-string v2, "custom-packages-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/VendorSettings;->mVendorBackupSettingsFilename:Ljava/io/File;

    .line 98
    return-void
.end method


# virtual methods
.method insertPackage(Ljava/lang/String;Z)V
    .locals 2
    .parameter "packageName"
    .parameter "installStatus"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/server/pm/VendorSettings;->mVendorPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/VendorPackageSetting;

    .line 102
    .local v0, vps:Lcom/android/server/pm/VendorPackageSetting;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p2}, Lcom/android/server/pm/VendorPackageSetting;->setIntallStatus(Z)V

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v0, Lcom/android/server/pm/VendorPackageSetting;

    .end local v0           #vps:Lcom/android/server/pm/VendorPackageSetting;
    invoke-direct {v0, p1, p2}, Lcom/android/server/pm/VendorPackageSetting;-><init>(Ljava/lang/String;Z)V

    .line 106
    .restart local v0       #vps:Lcom/android/server/pm/VendorPackageSetting;
    iget-object v1, p0, Lcom/android/server/pm/VendorSettings;->mVendorPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method readLPw()V
    .locals 17

    .prologue
    .line 127
    const/4 v12, 0x0

    .line 128
    .local v12, str:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 129
    .local v3, docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x0

    .line 130
    .local v2, docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    const/4 v1, 0x0

    .line 131
    .local v1, doc:Lorg/w3c/dom/Document;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/VendorSettings;->mVendorBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 133
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/VendorSettings;->mVendorBackupSettingsFilename:Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v12           #str:Ljava/io/FileInputStream;
    .local v13, str:Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/VendorSettings;->mVendorSettingsFilename:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 137
    const-string v14, "PackageManager"

    const-string v15, "Cleaning up settings file"

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/VendorSettings;->mVendorSettingsFilename:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 146
    :cond_0
    :goto_0
    if-nez v13, :cond_4

    .line 147
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/VendorSettings;->mVendorSettingsFilename:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    move-object v12, v13

    .line 178
    .end local v13           #str:Ljava/io/FileInputStream;
    .restart local v12       #str:Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    return-void

    .line 140
    :catch_0
    move-exception v14

    :goto_2
    move-object v13, v12

    .end local v12           #str:Ljava/io/FileInputStream;
    .restart local v13       #str:Ljava/io/FileInputStream;
    goto :goto_0

    .line 150
    :cond_2
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/VendorSettings;->mVendorSettingsFilename:Ljava/io/File;

    invoke-direct {v12, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3

    .line 152
    .end local v13           #str:Ljava/io/FileInputStream;
    .restart local v12       #str:Ljava/io/FileInputStream;
    :goto_3
    :try_start_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 153
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 154
    invoke-virtual {v2, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 155
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v11

    .line 156
    .local v11, root:Lorg/w3c/dom/Element;
    const-string v14, "package"

    invoke-interface {v11, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 157
    .local v8, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .line 158
    .local v7, node:Lorg/w3c/dom/Node;
    const/4 v9, 0x0

    .line 159
    .local v9, nodeMap:Lorg/w3c/dom/NamedNodeMap;
    const/4 v10, 0x0

    .line 160
    .local v10, packageName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 161
    .local v6, installStatus:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_4
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v5, v14, :cond_1

    .line 162
    invoke-interface {v8, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 163
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "package"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 164
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    .line 165
    const-string v14, "name"

    invoke-interface {v9, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    .line 166
    const-string v14, "installStatus"

    invoke-interface {v9, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 167
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/VendorSettings;->mVendorPackages:Ljava/util/HashMap;

    new-instance v15, Lcom/android/server/pm/VendorPackageSetting;

    const-string v16, "installed"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    move/from16 v0, v16

    invoke-direct {v15, v10, v0}, Lcom/android/server/pm/VendorPackageSetting;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v14, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_4

    .line 161
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 171
    .end local v5           #i:I
    .end local v6           #installStatus:Ljava/lang/String;
    .end local v7           #node:Lorg/w3c/dom/Node;
    .end local v8           #nodeList:Lorg/w3c/dom/NodeList;
    .end local v9           #nodeMap:Lorg/w3c/dom/NamedNodeMap;
    .end local v10           #packageName:Ljava/lang/String;
    .end local v11           #root:Lorg/w3c/dom/Element;
    .end local v12           #str:Ljava/io/FileInputStream;
    .restart local v13       #str:Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    move-object v12, v13

    .line 172
    .end local v13           #str:Ljava/io/FileInputStream;
    .local v4, e:Ljava/io/IOException;
    .restart local v12       #str:Ljava/io/FileInputStream;
    :goto_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 173
    .end local v4           #e:Ljava/io/IOException;
    .end local v12           #str:Ljava/io/FileInputStream;
    .restart local v13       #str:Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    move-object v12, v13

    .line 174
    .end local v13           #str:Ljava/io/FileInputStream;
    .local v4, e:Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v12       #str:Ljava/io/FileInputStream;
    :goto_6
    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    .line 175
    .end local v4           #e:Ljavax/xml/parsers/ParserConfigurationException;
    .end local v12           #str:Ljava/io/FileInputStream;
    .restart local v13       #str:Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    move-object v12, v13

    .line 176
    .end local v13           #str:Ljava/io/FileInputStream;
    .local v4, e:Lorg/xml/sax/SAXException;
    .restart local v12       #str:Ljava/io/FileInputStream;
    :goto_7
    invoke-virtual {v4}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 175
    .end local v4           #e:Lorg/xml/sax/SAXException;
    :catch_4
    move-exception v4

    goto :goto_7

    .line 173
    :catch_5
    move-exception v4

    goto :goto_6

    .line 171
    :catch_6
    move-exception v4

    goto :goto_5

    .line 140
    .end local v12           #str:Ljava/io/FileInputStream;
    .restart local v13       #str:Ljava/io/FileInputStream;
    :catch_7
    move-exception v14

    move-object v12, v13

    .end local v13           #str:Ljava/io/FileInputStream;
    .restart local v12       #str:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v12           #str:Ljava/io/FileInputStream;
    .restart local v13       #str:Ljava/io/FileInputStream;
    :cond_4
    move-object v12, v13

    .end local v13           #str:Ljava/io/FileInputStream;
    .restart local v12       #str:Ljava/io/FileInputStream;
    goto :goto_3

    :cond_5
    move-object v13, v12

    .end local v12           #str:Ljava/io/FileInputStream;
    .restart local v13       #str:Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method removePackage(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/pm/VendorSettings;->mVendorPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/server/pm/VendorSettings;->mVendorPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    return-void
.end method

.method setPackageStatus(Ljava/lang/String;Z)V
    .locals 2
    .parameter "packageName"
    .parameter "installStatus"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/server/pm/VendorSettings;->mVendorPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/VendorPackageSetting;

    .line 112
    .local v0, vps:Lcom/android/server/pm/VendorPackageSetting;
    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/pm/VendorPackageSetting;->setIntallStatus(Z)V

    goto :goto_0
.end method

.method writeLPr()V
    .locals 10

    .prologue
    .line 181
    iget-object v6, p0, Lcom/android/server/pm/VendorSettings;->mVendorSettingsFilename:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 182
    iget-object v6, p0, Lcom/android/server/pm/VendorSettings;->mVendorBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 183
    iget-object v6, p0, Lcom/android/server/pm/VendorSettings;->mVendorSettingsFilename:Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/VendorSettings;->mVendorBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 184
    const-string v6, "PackageManager"

    const-string v7, "Unable to backup package manager vendor settings,  current changes will be lost at reboot"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/VendorSettings;->mVendorSettingsFilename:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 190
    const-string v6, "PackageManager"

    const-string v7, "Preserving older vendor settings backup"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/android/server/pm/VendorSettings;->mVendorSettingsFilename:Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 195
    .local v1, fstr:Ljava/io/FileOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 197
    .local v4, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 198
    .local v5, str:Ljava/io/BufferedOutputStream;
    const-string v6, "utf-8"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 199
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 200
    const/4 v6, 0x0

    const-string v7, "packages"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    iget-object v6, p0, Lcom/android/server/pm/VendorSettings;->mVendorPackages:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/VendorPackageSetting;

    .line 203
    .local v3, ps:Lcom/android/server/pm/VendorPackageSetting;
    const/4 v6, 0x0

    const-string v7, "package"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 204
    const/4 v6, 0x0

    const-string v7, "name"

    invoke-virtual {v3}, Lcom/android/server/pm/VendorPackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    const/4 v7, 0x0

    const-string v8, "installStatus"

    invoke-virtual {v3}, Lcom/android/server/pm/VendorPackageSetting;->getIntallStatus()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "installed"

    :goto_2
    invoke-interface {v4, v7, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    const/4 v6, 0x0

    const-string v7, "package"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 220
    .end local v1           #fstr:Ljava/io/FileOutputStream;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ps:Lcom/android/server/pm/VendorPackageSetting;
    .end local v4           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v5           #str:Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 205
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #fstr:Ljava/io/FileOutputStream;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #ps:Lcom/android/server/pm/VendorPackageSetting;
    .restart local v4       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v5       #str:Ljava/io/BufferedOutputStream;
    :cond_2
    :try_start_1
    const-string v6, "uninstalled"

    goto :goto_2

    .line 209
    .end local v3           #ps:Lcom/android/server/pm/VendorPackageSetting;
    :cond_3
    const/4 v6, 0x0

    const-string v7, "packages"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 211
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 212
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 213
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 215
    iget-object v6, p0, Lcom/android/server/pm/VendorSettings;->mVendorBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 216
    iget-object v6, p0, Lcom/android/server/pm/VendorSettings;->mVendorSettingsFilename:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1b0

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v6, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 222
    .end local v1           #fstr:Ljava/io/FileOutputStream;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v5           #str:Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 224
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 225
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method
