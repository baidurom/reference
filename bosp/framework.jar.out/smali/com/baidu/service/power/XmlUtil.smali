.class public Lcom/baidu/service/power/XmlUtil;
.super Ljava/lang/Object;
.source "XmlUtil.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SmartPowerService"

.field static final XML_ATTRIBUTE_ACTION:Ljava/lang/String; = "action"

.field static final XML_ATTRIBUTE_ACTIVE:Ljava/lang/String; = "active"

.field static final XML_ATTRIBUTE_AUTO_CLEAN:Ljava/lang/String; = "autoclean"

.field static final XML_ATTRIBUTE_DATA1:Ljava/lang/String; = "data1"

.field static final XML_ATTRIBUTE_DATA2:Ljava/lang/String; = "data2"

.field static final XML_ATTRIBUTE_DISABLE_DATA:Ljava/lang/String; = "disabledata"

.field static final XML_ATTRIBUTE_ID:Ljava/lang/String; = "id"

.field static final XML_ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field static final XML_ATTRIBUTE_RECOVERY:Ljava/lang/String; = "recovery"

.field static final XML_ATTRIBUTE_TIME:Ljava/lang/String; = "time"

.field static final XML_ATTRIBUTE_TYPE:Ljava/lang/String; = "type"

.field static final XML_ATTRIBUTE_VALUE:Ljava/lang/String; = "value"

.field static final XML_ATTRIBUTE_VISIBILITY:Ljava/lang/String; = "visibility"

.field static final XML_TAG_ACTION:Ljava/lang/String; = "action"

.field static final XML_TAG_ACTION_INTENT:Ljava/lang/String; = "actionintent"

.field static final XML_TAG_CONDITION:Ljava/lang/String; = "condition"

.field static final XML_TAG_MODE:Ljava/lang/String; = "mode"

.field static final XML_TAG_MODES:Ljava/lang/String; = "modes"

.field static final XML_TAG_POLICY:Ljava/lang/String; = "policy"

.field static final XML_TAG_POLICYS:Ljava/lang/String; = "policys"

.field static final XML_TAG_PROFILE:Ljava/lang/String; = "profile"

.field static final XML_TAG_PROFILE_ELEMENT:Ljava/lang/String; = "element"

.field static final XML_TAG_TRIGGER:Ljava/lang/String; = "trigger"

.field static final XML_TAG_TRIGGER_ALARM:Ljava/lang/String; = "alarm"

.field static final XML_TAG_TRIGGER_INTENT:Ljava/lang/String; = "triggerintent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseAction(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/service/power/Action;
    .locals 8
    .parameter "parser"

    .prologue
    const/4 v7, 0x0

    .line 280
    const-string v5, "SmartPowerService"

    const-string/jumbo v6, "start parse action."

    invoke-static {v5, v6}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v0, Lcom/baidu/service/power/Action;

    invoke-direct {v0}, Lcom/baidu/service/power/Action;-><init>()V

    .line 282
    .local v0, action:Lcom/baidu/service/power/Action;
    const-string v5, "id"

    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, idStr:Ljava/lang/String;
    const-string/jumbo v5, "type"

    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, typeStr:Ljava/lang/String;
    const-string/jumbo v5, "value"

    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, valueStr:Ljava/lang/String;
    const-string/jumbo v5, "recovery"

    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, recoveryStr:Ljava/lang/String;
    const-string v5, "SmartPowerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parse action. id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",recovery = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v0, Lcom/baidu/service/power/Action;->mId:I

    .line 290
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/baidu/service/power/Action;->mType:I

    .line 291
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/baidu/service/power/Action;->mValue:I

    .line 292
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/baidu/service/power/Action;->mRecoveryId:I

    .line 294
    const-string v5, "SmartPowerService"

    const-string v6, "end parse action."

    invoke-static {v5, v6}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-object v0
.end method

.method private static parseAlarm(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .parameter "parser"

    .prologue
    .line 251
    const-string v1, "SmartPowerService"

    const-string/jumbo v2, "start parse alarm."

    invoke-static {v1, v2}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v1, 0x0

    const-string/jumbo v2, "time"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, time:Ljava/lang/String;
    const-string v1, "SmartPowerService"

    const-string v2, "end parse alarm."

    invoke-static {v1, v2}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-object v0
.end method

.method private static parseCondition(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/service/power/TriggerCondition;
    .locals 9
    .parameter "parser"

    .prologue
    const/4 v8, 0x0

    .line 259
    const-string v6, "SmartPowerService"

    const-string/jumbo v7, "start parse conidition."

    invoke-static {v6, v7}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v6, "id"

    invoke-interface {p0, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, idStr:Ljava/lang/String;
    const-string/jumbo v6, "type"

    invoke-interface {p0, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, typeStr:Ljava/lang/String;
    const-string v6, "data1"

    invoke-interface {p0, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, data1Str:Ljava/lang/String;
    const-string v6, "data2"

    invoke-interface {p0, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, data2Str:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 267
    .local v4, type:I
    invoke-static {v4}, Lcom/baidu/service/power/ConditionFactory;->createCondition(I)Lcom/baidu/service/power/TriggerCondition;

    move-result-object v0

    .line 268
    .local v0, conidition:Lcom/baidu/service/power/TriggerCondition;
    const-string v6, "SmartPowerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parse conidition. id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", data1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",data2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lcom/baidu/service/power/TriggerCondition;->mId:I

    .line 271
    iput v4, v0, Lcom/baidu/service/power/TriggerCondition;->mType:I

    .line 272
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/baidu/service/power/TriggerCondition;->mData1:I

    .line 273
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/baidu/service/power/TriggerCondition;->mData2:I

    .line 275
    const-string v6, "SmartPowerService"

    const-string v7, "end parse conidition."

    invoke-static {v6, v7}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-object v0
.end method

.method private static parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .locals 4
    .parameter "parser"

    .prologue
    .line 242
    const-string v2, "SmartPowerService"

    const-string/jumbo v3, "start parse intent."

    invoke-static {v2, v3}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 244
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    const-string v3, "action"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v2, "SmartPowerService"

    const-string v3, "end parse intent."

    invoke-static {v2, v3}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-object v1
.end method

.method private static parseMode(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/service/power/PowerMode;
    .locals 9
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 157
    const-string v6, "SmartPowerService"

    const-string/jumbo v7, "start parse mode."

    invoke-static {v6, v7}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v2, 0x0

    .line 159
    .local v2, mode:Lcom/baidu/service/power/PowerMode;
    const-string v6, "id"

    invoke-interface {p0, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, idStr:Ljava/lang/String;
    const-string v6, "active"

    invoke-interface {p0, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, activeStr:Ljava/lang/String;
    const-string/jumbo v6, "type"

    invoke-interface {p0, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, typeStr:Ljava/lang/String;
    const-string/jumbo v6, "name"

    invoke-interface {p0, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, nameStr:Ljava/lang/String;
    const-string v6, "SmartPowerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parse mode. id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", active = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 165
    .local v4, type:I
    if-nez v4, :cond_1

    .line 166
    new-instance v2, Lcom/baidu/service/power/NormalMode;

    .end local v2           #mode:Lcom/baidu/service/power/PowerMode;
    invoke-direct {v2}, Lcom/baidu/service/power/NormalMode;-><init>()V

    .line 170
    .restart local v2       #mode:Lcom/baidu/service/power/PowerMode;
    :cond_0
    :goto_0
    iput v4, v2, Lcom/baidu/service/power/PowerMode;->mType:I

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v2, Lcom/baidu/service/power/PowerMode;->mId:I

    .line 172
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/baidu/service/power/PowerMode;->mIsActive:Z

    .line 173
    iput-object v3, v2, Lcom/baidu/service/power/PowerMode;->mName:Ljava/lang/String;

    .line 174
    const-string v6, "SmartPowerService"

    const-string v7, "end parse mode."

    invoke-static {v6, v7}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-object v2

    .line 167
    :cond_1
    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 168
    new-instance v2, Lcom/baidu/service/power/SuperMode;

    .end local v2           #mode:Lcom/baidu/service/power/PowerMode;
    invoke-direct {v2}, Lcom/baidu/service/power/SuperMode;-><init>()V

    .restart local v2       #mode:Lcom/baidu/service/power/PowerMode;
    goto :goto_0
.end method

.method private static parsePolicy(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/service/power/Policy;
    .locals 10
    .parameter "parser"

    .prologue
    const/4 v9, 0x0

    .line 202
    const-string v7, "SmartPowerService"

    const-string/jumbo v8, "start parse policy."

    invoke-static {v7, v8}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v5, Lcom/baidu/service/power/Policy;

    invoke-direct {v5}, Lcom/baidu/service/power/Policy;-><init>()V

    .line 204
    .local v5, policy:Lcom/baidu/service/power/Policy;
    const-string v7, "id"

    invoke-interface {p0, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, idStr:Ljava/lang/String;
    const-string/jumbo v7, "name"

    invoke-interface {p0, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, name:Ljava/lang/String;
    const-string v7, "active"

    invoke-interface {p0, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, activeStr:Ljava/lang/String;
    const-string/jumbo v7, "visibility"

    invoke-interface {p0, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, visibilityStr:Ljava/lang/String;
    const-string v7, "disabledata"

    invoke-interface {p0, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, disabledataStr:Ljava/lang/String;
    const-string v7, "autoclean"

    invoke-interface {p0, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, autocleanStr:Ljava/lang/String;
    const-string v7, "SmartPowerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parse policy. id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", active = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",visibility = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",disabledataStr = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",autoclean = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v5, Lcom/baidu/service/power/Policy;->mId:I

    .line 213
    iput-object v4, v5, Lcom/baidu/service/power/Policy;->mName:Ljava/lang/String;

    .line 214
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v5, Lcom/baidu/service/power/Policy;->mIsActive:Z

    .line 215
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v5, Lcom/baidu/service/power/Policy;->mVisibility:Z

    .line 216
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v5, Lcom/baidu/service/power/Policy;->mDisableData:Z

    .line 217
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v5, Lcom/baidu/service/power/Policy;->mAutoClean:Z

    .line 219
    const-string v7, "SmartPowerService"

    const-string v8, "end parse policy."

    invoke-static {v7, v8}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-object v5
.end method

.method static parsePowerModes(Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 11
    .parameter
    .parameter "parser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/service/power/PowerMode;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, modes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/service/power/PowerMode;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 54
    const-string v8, "SmartPowerService"

    const-string/jumbo v9, "start parse modes.xml"

    invoke-static {v8, v9}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 58
    .local v1, eventType:I
    const/4 v2, 0x0

    .line 59
    .local v2, mode:Lcom/baidu/service/power/PowerMode;
    const/4 v3, 0x0

    .line 60
    .local v3, profile:Lcom/baidu/service/power/Profile;
    const/4 v4, 0x0

    .line 62
    .local v4, profileElement:Lcom/baidu/service/power/ProfileElement;
    :goto_0
    if-eq v1, v6, :cond_3

    .line 63
    packed-switch v1, :pswitch_data_0

    .line 83
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 67
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, tag:Ljava/lang/String;
    const-string v8, "SmartPowerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "tag = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v8, "mode"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 70
    invoke-static {p1}, Lcom/baidu/service/power/XmlUtil;->parseMode(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/service/power/PowerMode;

    move-result-object v2

    .line 71
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 86
    .end local v1           #eventType:I
    .end local v2           #mode:Lcom/baidu/service/power/PowerMode;
    .end local v3           #profile:Lcom/baidu/service/power/Profile;
    .end local v4           #profileElement:Lcom/baidu/service/power/ProfileElement;
    .end local v5           #tag:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v6, v7

    .line 96
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_2
    return v6

    .line 72
    .restart local v1       #eventType:I
    .restart local v2       #mode:Lcom/baidu/service/power/PowerMode;
    .restart local v3       #profile:Lcom/baidu/service/power/Profile;
    .restart local v4       #profileElement:Lcom/baidu/service/power/ProfileElement;
    .restart local v5       #tag:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string/jumbo v8, "profile"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 73
    invoke-static {p1}, Lcom/baidu/service/power/XmlUtil;->parseProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/service/power/Profile;

    move-result-object v3

    .line 74
    invoke-virtual {v2, v3}, Lcom/baidu/service/power/PowerMode;->setProfile(Lcom/baidu/service/power/Profile;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 89
    .end local v1           #eventType:I
    .end local v2           #mode:Lcom/baidu/service/power/PowerMode;
    .end local v3           #profile:Lcom/baidu/service/power/Profile;
    .end local v4           #profileElement:Lcom/baidu/service/power/ProfileElement;
    .end local v5           #tag:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 90
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    move v6, v7

    .line 91
    goto :goto_2

    .line 75
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #eventType:I
    .restart local v2       #mode:Lcom/baidu/service/power/PowerMode;
    .restart local v3       #profile:Lcom/baidu/service/power/Profile;
    .restart local v4       #profileElement:Lcom/baidu/service/power/ProfileElement;
    .restart local v5       #tag:Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v8, "element"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 76
    invoke-static {p1}, Lcom/baidu/service/power/XmlUtil;->parseProfileElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/service/power/ProfileElement;

    move-result-object v4

    .line 77
    invoke-virtual {v3, v4}, Lcom/baidu/service/power/Profile;->addProfileElement(Lcom/baidu/service/power/ProfileElement;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 92
    .end local v1           #eventType:I
    .end local v2           #mode:Lcom/baidu/service/power/PowerMode;
    .end local v3           #profile:Lcom/baidu/service/power/Profile;
    .end local v4           #profileElement:Lcom/baidu/service/power/ProfileElement;
    .end local v5           #tag:Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 93
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 95
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    const-string v7, "SmartPowerService"

    const-string v8, "end parse modes.xml"

    invoke-static {v7, v8}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static parsePowerPolicys(Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 14
    .parameter
    .parameter "parser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/service/power/Policy;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, policys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/service/power/Policy;>;"
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 100
    const-string v9, "SmartPowerService"

    const-string/jumbo v12, "start parse policys.xml"

    invoke-static {v9, v12}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 104
    .local v4, eventType:I
    const/4 v6, 0x0

    .line 105
    .local v6, policy:Lcom/baidu/service/power/Policy;
    const/4 v8, 0x0

    .line 106
    .local v8, trigger:Lcom/baidu/service/power/Trigger;
    const/4 v2, 0x0

    .line 107
    .local v2, condition:Lcom/baidu/service/power/TriggerCondition;
    const/4 v1, 0x0

    .line 108
    .local v1, action:Lcom/baidu/service/power/Action;
    const/4 v5, 0x0

    .line 110
    .local v5, intent:Landroid/content/Intent;
    :goto_0
    if-eq v4, v10, :cond_3

    .line 111
    packed-switch v4, :pswitch_data_0

    .line 140
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 115
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, tag:Ljava/lang/String;
    const-string v9, "SmartPowerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "tag = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string/jumbo v9, "policy"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 118
    invoke-static {p1}, Lcom/baidu/service/power/XmlUtil;->parsePolicy(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/service/power/Policy;

    move-result-object v6

    .line 119
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 143
    .end local v1           #action:Lcom/baidu/service/power/Action;
    .end local v2           #condition:Lcom/baidu/service/power/TriggerCondition;
    .end local v4           #eventType:I
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #policy:Lcom/baidu/service/power/Policy;
    .end local v7           #tag:Ljava/lang/String;
    .end local v8           #trigger:Lcom/baidu/service/power/Trigger;
    :catch_0
    move-exception v3

    .line 144
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v9, v11

    .line 153
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :goto_2
    return v9

    .line 120
    .restart local v1       #action:Lcom/baidu/service/power/Action;
    .restart local v2       #condition:Lcom/baidu/service/power/TriggerCondition;
    .restart local v4       #eventType:I
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v6       #policy:Lcom/baidu/service/power/Policy;
    .restart local v7       #tag:Ljava/lang/String;
    .restart local v8       #trigger:Lcom/baidu/service/power/Trigger;
    :cond_1
    :try_start_1
    const-string/jumbo v9, "trigger"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 121
    invoke-static {p1}, Lcom/baidu/service/power/XmlUtil;->parseTrigger(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/service/power/Trigger;

    move-result-object v8

    .line 122
    invoke-virtual {v6, v8}, Lcom/baidu/service/power/Policy;->setTrigger(Lcom/baidu/service/power/Trigger;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 146
    .end local v1           #action:Lcom/baidu/service/power/Action;
    .end local v2           #condition:Lcom/baidu/service/power/TriggerCondition;
    .end local v4           #eventType:I
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #policy:Lcom/baidu/service/power/Policy;
    .end local v7           #tag:Ljava/lang/String;
    .end local v8           #trigger:Lcom/baidu/service/power/Trigger;
    :catch_1
    move-exception v3

    .line 147
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    move v9, v11

    .line 148
    goto :goto_2

    .line 123
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #action:Lcom/baidu/service/power/Action;
    .restart local v2       #condition:Lcom/baidu/service/power/TriggerCondition;
    .restart local v4       #eventType:I
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v6       #policy:Lcom/baidu/service/power/Policy;
    .restart local v7       #tag:Ljava/lang/String;
    .restart local v8       #trigger:Lcom/baidu/service/power/Trigger;
    :cond_2
    :try_start_2
    const-string/jumbo v9, "triggerintent"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 124
    invoke-static {p1}, Lcom/baidu/service/power/XmlUtil;->parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v5

    .line 125
    move-object v0, v8

    check-cast v0, Lcom/baidu/service/power/BroadcastTrigger;

    move-object v9, v0

    invoke-virtual {v9, v5}, Lcom/baidu/service/power/BroadcastTrigger;->setIntent(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 149
    .end local v1           #action:Lcom/baidu/service/power/Action;
    .end local v2           #condition:Lcom/baidu/service/power/TriggerCondition;
    .end local v4           #eventType:I
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #policy:Lcom/baidu/service/power/Policy;
    .end local v7           #tag:Ljava/lang/String;
    .end local v8           #trigger:Lcom/baidu/service/power/Trigger;
    :catch_2
    move-exception v3

    .line 150
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 152
    .end local v3           #e:Ljava/io/IOException;
    :cond_3
    const-string v9, "SmartPowerService"

    const-string v11, "end parse policys.xml"

    invoke-static {v9, v11}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v10

    .line 153
    goto :goto_2

    .line 126
    .restart local v1       #action:Lcom/baidu/service/power/Action;
    .restart local v2       #condition:Lcom/baidu/service/power/TriggerCondition;
    .restart local v4       #eventType:I
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v6       #policy:Lcom/baidu/service/power/Policy;
    .restart local v7       #tag:Ljava/lang/String;
    .restart local v8       #trigger:Lcom/baidu/service/power/Trigger;
    :cond_4
    :try_start_3
    const-string v9, "condition"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 127
    invoke-static {p1}, Lcom/baidu/service/power/XmlUtil;->parseCondition(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/service/power/TriggerCondition;

    move-result-object v2

    .line 128
    invoke-virtual {v8, v2}, Lcom/baidu/service/power/Trigger;->setCondition(Lcom/baidu/service/power/TriggerCondition;)V

    goto/16 :goto_1

    .line 129
    :cond_5
    const-string v9, "action"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 130
    invoke-static {p1}, Lcom/baidu/service/power/XmlUtil;->parseAction(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/service/power/Action;

    move-result-object v1

    .line 131
    invoke-virtual {v6, v1}, Lcom/baidu/service/power/Policy;->addAction(Lcom/baidu/service/power/Action;)V

    goto/16 :goto_1

    .line 132
    :cond_6
    const-string v9, "actionintent"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 133
    invoke-static {p1}, Lcom/baidu/service/power/XmlUtil;->parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v5

    .line 134
    invoke-virtual {v1, v5}, Lcom/baidu/service/power/Action;->setIntent(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static parseProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/service/power/Profile;
    .locals 3
    .parameter "parser"

    .prologue
    .line 179
    const-string v1, "SmartPowerService"

    const-string/jumbo v2, "start parse profile."

    invoke-static {v1, v2}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v0, Lcom/baidu/service/power/Profile;

    invoke-direct {v0}, Lcom/baidu/service/power/Profile;-><init>()V

    .line 181
    .local v0, profile:Lcom/baidu/service/power/Profile;
    const-string v1, "SmartPowerService"

    const-string v2, "end parse profile."

    invoke-static {v1, v2}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-object v0
.end method

.method private static parseProfileElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/service/power/ProfileElement;
    .locals 8
    .parameter "parser"

    .prologue
    const/4 v7, 0x0

    .line 186
    const-string v5, "SmartPowerService"

    const-string/jumbo v6, "start parse profileElement."

    invoke-static {v5, v6}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v2, Lcom/baidu/service/power/ProfileElement;

    invoke-direct {v2}, Lcom/baidu/service/power/ProfileElement;-><init>()V

    .line 188
    .local v2, profileElement:Lcom/baidu/service/power/ProfileElement;
    const-string v5, "id"

    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, idStr:Ljava/lang/String;
    const-string/jumbo v5, "value"

    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, valueStr:Ljava/lang/String;
    const-string v5, "active"

    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, activeStr:Ljava/lang/String;
    const-string/jumbo v5, "visibility"

    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, visibilityStr:Ljava/lang/String;
    const-string v5, "SmartPowerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parse profileElement. id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", active = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",visibility = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v2, Lcom/baidu/service/power/ProfileElement;->mId:I

    .line 194
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/baidu/service/power/ProfileElement;->mValue:I

    .line 195
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v2, Lcom/baidu/service/power/ProfileElement;->mIsActive:Z

    .line 196
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v2, Lcom/baidu/service/power/ProfileElement;->mVisibility:Z

    .line 197
    const-string v5, "SmartPowerService"

    const-string v6, "end parse profileElement."

    invoke-static {v5, v6}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-object v2
.end method

.method private static parseTrigger(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/service/power/Trigger;
    .locals 8
    .parameter "parser"

    .prologue
    const/4 v7, 0x0

    .line 224
    const-string v5, "SmartPowerService"

    const-string/jumbo v6, "start parse trigger."

    invoke-static {v5, v6}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v5, "id"

    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, idStr:Ljava/lang/String;
    const-string/jumbo v5, "name"

    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, name:Ljava/lang/String;
    const-string/jumbo v5, "type"

    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, typeStr:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 230
    .local v3, type:I
    invoke-static {v3}, Lcom/baidu/service/power/TriggerFactory;->createTrigger(I)Lcom/baidu/service/power/Trigger;

    move-result-object v2

    .line 231
    .local v2, trigger:Lcom/baidu/service/power/Trigger;
    const-string v5, "SmartPowerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parse trigger. id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iput-object v1, v2, Lcom/baidu/service/power/Trigger;->mName:Ljava/lang/String;

    .line 234
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v2, Lcom/baidu/service/power/Trigger;->mId:I

    .line 235
    iput v3, v2, Lcom/baidu/service/power/Trigger;->mType:I

    .line 237
    const-string v5, "SmartPowerService"

    const-string v6, "end parse trigger."

    invoke-static {v5, v6}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-object v2
.end method

.method private static serializeAction(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 5
    .parameter "xmlSerializer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/service/power/Action;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, actions:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/service/power/Action;>;"
    const/4 v4, 0x0

    .line 429
    const-string v2, "SmartPowerService"

    const-string/jumbo v3, "start serialize action."

    invoke-static {v2, v3}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/service/power/Action;

    .line 431
    .local v0, action:Lcom/baidu/service/power/Action;
    const-string v2, "action"

    invoke-interface {p0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 432
    const-string v2, "id"

    iget v3, v0, Lcom/baidu/service/power/Action;->mId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 433
    const-string/jumbo v2, "type"

    iget v3, v0, Lcom/baidu/service/power/Action;->mType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    const-string/jumbo v2, "value"

    iget v3, v0, Lcom/baidu/service/power/Action;->mValue:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 435
    const-string/jumbo v2, "recovery"

    iget v3, v0, Lcom/baidu/service/power/Action;->mRecoveryId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 436
    iget-object v2, v0, Lcom/baidu/service/power/Action;->mIntent:Landroid/content/Intent;

    invoke-static {p0, v2}, Lcom/baidu/service/power/XmlUtil;->serializeActionIntent(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Intent;)V

    .line 437
    const-string v2, "action"

    invoke-interface {p0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 439
    .end local v0           #action:Lcom/baidu/service/power/Action;
    :cond_0
    const-string v2, "SmartPowerService"

    const-string v3, "end serialize action."

    invoke-static {v2, v3}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method private static serializeActionIntent(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Intent;)V
    .locals 3
    .parameter "xmlSerializer"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 462
    const-string v0, "SmartPowerService"

    const-string/jumbo v1, "start serialize action intent."

    invoke-static {v0, v1}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v0, "actionintent"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 464
    const-string v0, "action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 465
    const-string v0, "actionintent"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 466
    const-string v0, "SmartPowerService"

    const-string v1, "end serialize action intent"

    invoke-static {v0, v1}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method private static serializeCondition(Lorg/xmlpull/v1/XmlSerializer;Lcom/baidu/service/power/TriggerCondition;)V
    .locals 3
    .parameter "xmlSerializer"
    .parameter "condition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 471
    const-string v0, "SmartPowerService"

    const-string/jumbo v1, "start serialize condition."

    invoke-static {v0, v1}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v0, "condition"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 473
    const-string v0, "id"

    iget v1, p1, Lcom/baidu/service/power/TriggerCondition;->mId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 474
    const-string/jumbo v0, "type"

    iget v1, p1, Lcom/baidu/service/power/TriggerCondition;->mType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 475
    const-string v0, "data1"

    iget v1, p1, Lcom/baidu/service/power/TriggerCondition;->mData1:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 476
    const-string v0, "data2"

    iget v1, p1, Lcom/baidu/service/power/TriggerCondition;->mData2:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 477
    const-string v0, "condition"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 478
    const-string v0, "SmartPowerService"

    const-string v1, "end serialize condition."

    invoke-static {v0, v1}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method private static serializeMode(Lorg/xmlpull/v1/XmlSerializer;Lcom/baidu/service/power/PowerMode;)V
    .locals 3
    .parameter "xmlSerializer"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 350
    const-string v0, "SmartPowerService"

    const-string/jumbo v1, "start serialize mode."

    invoke-static {v0, v1}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string/jumbo v0, "mode"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 352
    const-string v0, "id"

    iget v1, p1, Lcom/baidu/service/power/PowerMode;->mId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 353
    const-string v0, "active"

    iget-boolean v1, p1, Lcom/baidu/service/power/PowerMode;->mIsActive:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 354
    const-string/jumbo v0, "type"

    iget v1, p1, Lcom/baidu/service/power/PowerMode;->mType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 355
    const-string/jumbo v0, "name"

    iget-object v1, p1, Lcom/baidu/service/power/PowerMode;->mName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 356
    invoke-virtual {p1}, Lcom/baidu/service/power/PowerMode;->getProfile()Lcom/baidu/service/power/Profile;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/service/power/XmlUtil;->serializeProfile(Lorg/xmlpull/v1/XmlSerializer;Lcom/baidu/service/power/Profile;)V

    .line 357
    const-string/jumbo v0, "mode"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 358
    const-string v0, "SmartPowerService"

    const-string v1, "end serialize mode."

    invoke-static {v0, v1}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private static serializePolicy(Lorg/xmlpull/v1/XmlSerializer;Lcom/baidu/service/power/Policy;)V
    .locals 3
    .parameter "xmlSerializer"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 386
    const-string v0, "SmartPowerService"

    const-string/jumbo v1, "start serialize policy."

    invoke-static {v0, v1}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string/jumbo v0, "policy"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 388
    const-string v0, "id"

    iget v1, p1, Lcom/baidu/service/power/Policy;->mId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 389
    const-string v0, "active"

    iget-boolean v1, p1, Lcom/baidu/service/power/Policy;->mIsActive:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 390
    const-string/jumbo v0, "name"

    iget-object v1, p1, Lcom/baidu/service/power/Policy;->mName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 391
    const-string/jumbo v0, "visibility"

    iget-boolean v1, p1, Lcom/baidu/service/power/Policy;->mVisibility:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 392
    const-string v0, "disabledata"

    iget-boolean v1, p1, Lcom/baidu/service/power/Policy;->mDisableData:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 393
    const-string v0, "autoclean"

    iget-boolean v1, p1, Lcom/baidu/service/power/Policy;->mAutoClean:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 395
    iget-object v0, p1, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    invoke-static {p0, v0}, Lcom/baidu/service/power/XmlUtil;->serializeTrigger(Lorg/xmlpull/v1/XmlSerializer;Lcom/baidu/service/power/Trigger;)V

    .line 396
    iget-object v0, p1, Lcom/baidu/service/power/Policy;->mActions:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/baidu/service/power/XmlUtil;->serializeAction(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 397
    iget-object v0, p1, Lcom/baidu/service/power/Policy;->mProfile:Lcom/baidu/service/power/Profile;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p1, Lcom/baidu/service/power/Policy;->mProfile:Lcom/baidu/service/power/Profile;

    invoke-static {p0, v0}, Lcom/baidu/service/power/XmlUtil;->serializeProfile(Lorg/xmlpull/v1/XmlSerializer;Lcom/baidu/service/power/Profile;)V

    .line 399
    :cond_0
    const-string/jumbo v0, "policy"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 400
    const-string v0, "SmartPowerService"

    const-string v1, "end serialize prolicy."

    invoke-static {v0, v1}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method private static serializeProfile(Lorg/xmlpull/v1/XmlSerializer;Lcom/baidu/service/power/Profile;)V
    .locals 3
    .parameter "xmlSerializer"
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 363
    const-string v0, "SmartPowerService"

    const-string/jumbo v1, "start serialize profile."

    invoke-static {v0, v1}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string/jumbo v0, "profile"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 365
    invoke-virtual {p1}, Lcom/baidu/service/power/Profile;->getProfileElements()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/service/power/XmlUtil;->serializeProfileElements(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/ArrayList;)V

    .line 366
    const-string/jumbo v0, "profile"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 367
    const-string v0, "SmartPowerService"

    const-string v1, "end serialize profile."

    invoke-static {v0, v1}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method private static serializeProfileElements(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "xmlSerializer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/service/power/ProfileElement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, profileElements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/service/power/ProfileElement;>;"
    const/4 v4, 0x0

    .line 372
    const-string v2, "SmartPowerService"

    const-string/jumbo v3, "start serialize profile element."

    invoke-static {v2, v3}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/service/power/ProfileElement;

    .line 374
    .local v1, profileElement:Lcom/baidu/service/power/ProfileElement;
    const-string v2, "element"

    invoke-interface {p0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 375
    const-string v2, "id"

    iget v3, v1, Lcom/baidu/service/power/ProfileElement;->mId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 376
    const-string v2, "active"

    iget-boolean v3, v1, Lcom/baidu/service/power/ProfileElement;->mIsActive:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 377
    const-string/jumbo v2, "value"

    iget v3, v1, Lcom/baidu/service/power/ProfileElement;->mValue:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 378
    const-string/jumbo v2, "visibility"

    iget-boolean v3, v1, Lcom/baidu/service/power/ProfileElement;->mVisibility:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 379
    const-string v2, "element"

    invoke-interface {p0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 381
    .end local v1           #profileElement:Lcom/baidu/service/power/ProfileElement;
    :cond_0
    const-string v2, "SmartPowerService"

    const-string v3, "end serialize profile element."

    invoke-static {v2, v3}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method private static serializeTrigger(Lorg/xmlpull/v1/XmlSerializer;Lcom/baidu/service/power/Trigger;)V
    .locals 3
    .parameter "xmlSerializer"
    .parameter "trigger"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 405
    const-string v0, "SmartPowerService"

    const-string/jumbo v1, "start serialize trigger."

    invoke-static {v0, v1}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string/jumbo v0, "trigger"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 407
    const-string v0, "id"

    iget v1, p1, Lcom/baidu/service/power/Trigger;->mId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 408
    const-string/jumbo v0, "type"

    iget v1, p1, Lcom/baidu/service/power/Trigger;->mType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 409
    const-string/jumbo v0, "name"

    iget-object v1, p1, Lcom/baidu/service/power/Trigger;->mName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 410
    iget v0, p1, Lcom/baidu/service/power/Trigger;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 420
    :goto_0
    iget-object v0, p1, Lcom/baidu/service/power/Trigger;->mCondition:Lcom/baidu/service/power/TriggerCondition;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p1, Lcom/baidu/service/power/Trigger;->mCondition:Lcom/baidu/service/power/TriggerCondition;

    invoke-static {p0, v0}, Lcom/baidu/service/power/XmlUtil;->serializeCondition(Lorg/xmlpull/v1/XmlSerializer;Lcom/baidu/service/power/TriggerCondition;)V

    .line 423
    :cond_0
    const-string/jumbo v0, "trigger"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 424
    const-string v0, "SmartPowerService"

    const-string v1, "end serialize trigger."

    invoke-static {v0, v1}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    return-void

    :pswitch_0
    move-object v0, p1

    .line 414
    check-cast v0, Lcom/baidu/service/power/BroadcastTrigger;

    iget-object v0, v0, Lcom/baidu/service/power/BroadcastTrigger;->mIntent:Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/baidu/service/power/XmlUtil;->serializeTriggerIntent(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    move-object v0, p1

    .line 417
    check-cast v0, Lcom/baidu/service/power/AlarmTrigger;

    iget-object v0, v0, Lcom/baidu/service/power/AlarmTrigger;->mTime:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/baidu/service/power/XmlUtil;->serializeTriggerAlarm(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static serializeTriggerAlarm(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 3
    .parameter "xmlSerializer"
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 453
    const-string v0, "SmartPowerService"

    const-string/jumbo v1, "start serialize trigger alarm."

    invoke-static {v0, v1}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v0, "alarm"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 455
    const-string/jumbo v0, "time"

    invoke-interface {p0, v2, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 456
    const-string v0, "alarm"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 457
    const-string v0, "SmartPowerService"

    const-string v1, "end serialize trigger alarm."

    invoke-static {v0, v1}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method private static serializeTriggerIntent(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Intent;)V
    .locals 3
    .parameter "xmlSerializer"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 444
    const-string v0, "SmartPowerService"

    const-string/jumbo v1, "start serialize trigger intent."

    invoke-static {v0, v1}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string/jumbo v0, "triggerintent"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 446
    const-string v0, "action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 447
    const-string/jumbo v0, "triggerintent"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 448
    const-string v0, "SmartPowerService"

    const-string v1, "end serialize trigger intent."

    invoke-static {v0, v1}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method static storePowerModes(Ljava/util/ArrayList;Ljava/io/OutputStream;)V
    .locals 7
    .parameter
    .parameter "output"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/service/power/PowerMode;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, modes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/service/power/PowerMode;>;"
    const-string v5, "SmartPowerService"

    const-string/jumbo v6, "start store modes."

    invoke-static {v5, v6}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 302
    .local v1, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 303
    .local v4, xmlSerializer:Lorg/xmlpull/v1/XmlSerializer;
    const/4 v5, 0x0

    invoke-interface {v4, p1, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 304
    const-string/jumbo v5, "utf-8"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 305
    const/4 v5, 0x0

    const-string/jumbo v6, "modes"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 306
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/service/power/PowerMode;

    .line 307
    .local v3, mode:Lcom/baidu/service/power/PowerMode;
    invoke-static {v4, v3}, Lcom/baidu/service/power/XmlUtil;->serializeMode(Lorg/xmlpull/v1/XmlSerializer;Lcom/baidu/service/power/PowerMode;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 311
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mode:Lcom/baidu/service/power/PowerMode;
    .end local v4           #xmlSerializer:Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 320
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    const-string v5, "SmartPowerService"

    const-string v6, "end store modes."

    invoke-static {v5, v6}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void

    .line 309
    .restart local v1       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #xmlSerializer:Lorg/xmlpull/v1/XmlSerializer;
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    const-string/jumbo v6, "modes"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 310
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 313
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #xmlSerializer:Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v0

    .line 314
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 315
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 316
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 317
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 318
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static storePowerPolicys(Ljava/util/ArrayList;Ljava/io/OutputStream;)V
    .locals 7
    .parameter
    .parameter "output"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/service/power/Policy;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, policys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/service/power/Policy;>;"
    const-string v5, "SmartPowerService"

    const-string/jumbo v6, "start store policys."

    invoke-static {v5, v6}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 327
    .local v1, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 328
    .local v4, xmlSerializer:Lorg/xmlpull/v1/XmlSerializer;
    const/4 v5, 0x0

    invoke-interface {v4, p1, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 329
    const-string/jumbo v5, "utf-8"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 330
    const/4 v5, 0x0

    const-string/jumbo v6, "policys"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 331
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/service/power/Policy;

    .line 332
    .local v3, policy:Lcom/baidu/service/power/Policy;
    invoke-static {v4, v3}, Lcom/baidu/service/power/XmlUtil;->serializePolicy(Lorg/xmlpull/v1/XmlSerializer;Lcom/baidu/service/power/Policy;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 336
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #policy:Lcom/baidu/service/power/Policy;
    .end local v4           #xmlSerializer:Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .line 337
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 345
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    const-string v5, "SmartPowerService"

    const-string v6, "end store policys."

    invoke-static {v5, v6}, Lcom/baidu/service/power/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void

    .line 334
    .restart local v1       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #xmlSerializer:Lorg/xmlpull/v1/XmlSerializer;
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    const-string/jumbo v6, "policys"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 338
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #xmlSerializer:Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 340
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 341
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 342
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 343
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
