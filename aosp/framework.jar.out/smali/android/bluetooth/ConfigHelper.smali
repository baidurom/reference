.class public Landroid/bluetooth/ConfigHelper;
.super Ljava/lang/Object;
.source "ConfigHelper.java"


# static fields
.field private static final ADVANCED_SETTING_IDS:[Ljava/lang/String; = null

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ConfigHelper"

.field private static mInit:Z

.field private static profileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/ProfileConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/bluetooth/ConfigHelper;->profileList:Ljava/util/ArrayList;

    .line 53
    sput-boolean v2, Landroid/bluetooth/ConfigHelper;->mInit:Z

    .line 169
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "profile_supported_ftp"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "profile_supported_simap"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "profile_supported_prxr"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "profile_supported_maps"

    aput-object v2, v0, v1

    sput-object v0, Landroid/bluetooth/ConfigHelper;->ADVANCED_SETTING_IDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSupportedProfiles(Ljava/lang/String;)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 135
    const-string v2, "/system/etc/bluetooth/btconfig.xml"

    invoke-static {v2}, Landroid/bluetooth/ConfigHelper;->readXML(Ljava/lang/String;)V

    .line 136
    sget-object v2, Landroid/bluetooth/ConfigHelper;->profileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Landroid/bluetooth/ProfileConfig;

    .line 138
    .local v1, profiles:[Landroid/bluetooth/ProfileConfig;
    sget-object v2, Landroid/bluetooth/ConfigHelper;->profileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 141
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/bluetooth/ProfileConfig;->getProfileID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Advanced "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/bluetooth/ProfileConfig;->getProfileID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Enabled!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    .line 144
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/bluetooth/ProfileConfig;->getProfileEnabled()Z

    move-result v2

    .line 148
    :goto_1
    return v2

    .line 139
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Advanced "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Disabled!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    .line 148
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isAdvanceSettingEnabled()Z
    .locals 5

    .prologue
    .line 178
    const-string v3, "/system/etc/bluetooth/btconfig.xml"

    invoke-static {v3}, Landroid/bluetooth/ConfigHelper;->readXML(Ljava/lang/String;)V

    .line 179
    sget-object v3, Landroid/bluetooth/ConfigHelper;->profileList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Landroid/bluetooth/ProfileConfig;

    .line 181
    .local v2, profiles:[Landroid/bluetooth/ProfileConfig;
    sget-object v3, Landroid/bluetooth/ConfigHelper;->profileList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 182
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    sget-object v3, Landroid/bluetooth/ConfigHelper;->ADVANCED_SETTING_IDS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 184
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 186
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/bluetooth/ProfileConfig;->getProfileID()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/bluetooth/ConfigHelper;->ADVANCED_SETTING_IDS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/bluetooth/ProfileConfig;->getProfileEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    const-string v3, "Advanced Settings Enabled!\n"

    invoke-static {v3}, Landroid/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    .line 191
    const/4 v3, 0x1

    .line 197
    .end local v0           #i:I
    :goto_2
    return v3

    .line 184
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v0           #i:I
    :cond_2
    const-string v3, "Advanced Settings Disabled!\n"

    invoke-static {v3}, Landroid/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    .line 197
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public static isAdvancedProfileEnabled()Z
    .locals 3

    .prologue
    .line 153
    const-string v2, "/system/etc/bluetooth/btconfig.xml"

    invoke-static {v2}, Landroid/bluetooth/ConfigHelper;->readXML(Ljava/lang/String;)V

    .line 154
    sget-object v2, Landroid/bluetooth/ConfigHelper;->profileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Landroid/bluetooth/ProfileConfig;

    .line 156
    .local v1, profiles:[Landroid/bluetooth/ProfileConfig;
    sget-object v2, Landroid/bluetooth/ConfigHelper;->profileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 157
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 159
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/bluetooth/ProfileConfig;->getProfileEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const-string v2, "Advanced Profile Enabled!\n"

    invoke-static {v2}, Landroid/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    .line 162
    const/4 v2, 0x1

    .line 166
    :goto_1
    return v2

    .line 157
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    const-string v2, "Advanced Profile Disabled!\n"

    invoke-static {v2}, Landroid/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    .line 166
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 204
    return-void
.end method

.method public static readXML(Ljava/lang/String;)V
    .locals 12
    .parameter "xmlFileName"

    .prologue
    const/4 v11, 0x1

    .line 58
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v8, xmlFile:Ljava/io/File;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 61
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    sget-boolean v9, Landroid/bluetooth/ConfigHelper;->mInit:Z

    if-ne v9, v11, :cond_0

    .line 63
    const-string v9, "ConfigHelper"

    const-string v10, "btconfig.xml has be read!\n"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    return-void

    .line 68
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .local v2, in:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 76
    .local v6, strName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 77
    .local v7, strValue:Ljava/lang/String;
    const/4 v4, 0x0

    .line 78
    .local v4, profileConfig:Landroid/bluetooth/ProfileConfig;
    :try_start_1
    const-string v9, "UTF-8"

    invoke-interface {v3, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 80
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .local v1, eventType:I
    move-object v5, v4

    .line 81
    .end local v4           #profileConfig:Landroid/bluetooth/ProfileConfig;
    .local v5, profileConfig:Landroid/bluetooth/ProfileConfig;
    :goto_1
    if-eq v1, v11, :cond_6

    .line 82
    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_2
    :pswitch_0
    move-object v4, v5

    .line 122
    .end local v5           #profileConfig:Landroid/bluetooth/ProfileConfig;
    .restart local v4       #profileConfig:Landroid/bluetooth/ProfileConfig;
    :goto_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 123
    const-string v9, "Get Next EventType!\n"

    invoke-static {v9}, Landroid/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v5, v4

    .end local v4           #profileConfig:Landroid/bluetooth/ProfileConfig;
    .restart local v5       #profileConfig:Landroid/bluetooth/ProfileConfig;
    goto :goto_1

    .line 69
    .end local v1           #eventType:I
    .end local v2           #in:Ljava/io/InputStream;
    .end local v5           #profileConfig:Landroid/bluetooth/ProfileConfig;
    .end local v6           #strName:Ljava/lang/String;
    .end local v7           #strValue:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/io/FileNotFoundException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readXML Failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #eventType:I
    .restart local v2       #in:Ljava/io/InputStream;
    .restart local v5       #profileConfig:Landroid/bluetooth/ProfileConfig;
    .restart local v6       #strName:Ljava/lang/String;
    .restart local v7       #strValue:Ljava/lang/String;
    :pswitch_1
    :try_start_2
    const-string v9, "Xml Start Document!\n"

    invoke-static {v9}, Landroid/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    move-object v4, v5

    .line 85
    .end local v5           #profileConfig:Landroid/bluetooth/ProfileConfig;
    .restart local v4       #profileConfig:Landroid/bluetooth/ProfileConfig;
    goto :goto_3

    .line 87
    .end local v4           #profileConfig:Landroid/bluetooth/ProfileConfig;
    .restart local v5       #profileConfig:Landroid/bluetooth/ProfileConfig;
    :pswitch_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 88
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[START TAG]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    .line 89
    if-eqz v6, :cond_1

    const-string/jumbo v9, "profile"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 91
    new-instance v4, Landroid/bluetooth/ProfileConfig;

    invoke-direct {v4}, Landroid/bluetooth/ProfileConfig;-><init>()V

    .end local v5           #profileConfig:Landroid/bluetooth/ProfileConfig;
    .restart local v4       #profileConfig:Landroid/bluetooth/ProfileConfig;
    goto :goto_3

    .line 95
    .end local v4           #profileConfig:Landroid/bluetooth/ProfileConfig;
    .restart local v5       #profileConfig:Landroid/bluetooth/ProfileConfig;
    :pswitch_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 97
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TAG]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " [TEXT] is whitespace!\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    move-object v4, v5

    .line 98
    .end local v5           #profileConfig:Landroid/bluetooth/ProfileConfig;
    .restart local v4       #profileConfig:Landroid/bluetooth/ProfileConfig;
    goto :goto_3

    .line 100
    .end local v4           #profileConfig:Landroid/bluetooth/ProfileConfig;
    .restart local v5       #profileConfig:Landroid/bluetooth/ProfileConfig;
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 101
    if-eqz v6, :cond_4

    const-string/jumbo v9, "name"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 103
    invoke-virtual {v5, v7}, Landroid/bluetooth/ProfileConfig;->setProfileID(Ljava/lang/String;)V

    .line 111
    :cond_3
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TAG]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " [TEXT] is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    move-object v4, v5

    .line 112
    .end local v5           #profileConfig:Landroid/bluetooth/ProfileConfig;
    .restart local v4       #profileConfig:Landroid/bluetooth/ProfileConfig;
    goto/16 :goto_3

    .line 105
    .end local v4           #profileConfig:Landroid/bluetooth/ProfileConfig;
    .restart local v5       #profileConfig:Landroid/bluetooth/ProfileConfig;
    :cond_4
    if-eqz v6, :cond_3

    const-string/jumbo v9, "value"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 106
    const-string/jumbo v9, "true"

    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_5

    .line 107
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/bluetooth/ProfileConfig;->setProfileEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 128
    :catch_1
    move-exception v0

    move-object v4, v5

    .line 129
    .end local v1           #eventType:I
    .end local v5           #profileConfig:Landroid/bluetooth/ProfileConfig;
    .local v0, e:Ljava/lang/Exception;
    .restart local v4       #profileConfig:Landroid/bluetooth/ProfileConfig;
    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readXML Failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #profileConfig:Landroid/bluetooth/ProfileConfig;
    .restart local v1       #eventType:I
    .restart local v5       #profileConfig:Landroid/bluetooth/ProfileConfig;
    :cond_5
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v5, v9}, Landroid/bluetooth/ProfileConfig;->setProfileEnabled(Z)V

    goto :goto_4

    .line 114
    :pswitch_4
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 115
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[END TAG]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    .line 116
    if-eqz v6, :cond_1

    const-string/jumbo v9, "profile"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 118
    sget-object v9, Landroid/bluetooth/ConfigHelper;->profileList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 126
    :cond_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 127
    const/4 v9, 0x1

    sput-boolean v9, Landroid/bluetooth/ConfigHelper;->mInit:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v5

    .line 130
    .end local v5           #profileConfig:Landroid/bluetooth/ProfileConfig;
    .restart local v4       #profileConfig:Landroid/bluetooth/ProfileConfig;
    goto/16 :goto_0

    .line 128
    .end local v1           #eventType:I
    :catch_2
    move-exception v0

    goto :goto_5

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
