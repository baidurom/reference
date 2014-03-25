.class Lcom/baidu/service/power/PowerModeManager$3;
.super Ljava/lang/Object;
.source "PowerModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/service/power/PowerModeManager;->initModes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/service/power/PowerModeManager;


# direct methods
.method constructor <init>(Lcom/baidu/service/power/PowerModeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/baidu/service/power/PowerModeManager$3;->this$0:Lcom/baidu/service/power/PowerModeManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xa00

    .line 119
    const/4 v3, 0x0

    .line 120
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/baidu/service/power/PowerModeManager$3;->this$0:Lcom/baidu/service/power/PowerModeManager;

    #getter for: Lcom/baidu/service/power/PowerModeManager;->mDataDir:Ljava/lang/String;
    invoke-static {v4}, Lcom/baidu/service/power/PowerModeManager;->access$300(Lcom/baidu/service/power/PowerModeManager;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "power_modes.xml"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .local v2, modes:Ljava/io/File;
    const/4 v1, 0x0

    .line 123
    .local v1, input:Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x200

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gez v4, :cond_2

    .line 124
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1           #input:Ljava/io/InputStream;
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 125
    .restart local v1       #input:Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 126
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 132
    :goto_0
    iget-object v4, p0, Lcom/baidu/service/power/PowerModeManager$3;->this$0:Lcom/baidu/service/power/PowerModeManager;

    #getter for: Lcom/baidu/service/power/PowerModeManager;->mModes:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/baidu/service/power/PowerModeManager;->access$200(Lcom/baidu/service/power/PowerModeManager;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 134
    :try_start_1
    iget-object v4, p0, Lcom/baidu/service/power/PowerModeManager$3;->this$0:Lcom/baidu/service/power/PowerModeManager;

    #getter for: Lcom/baidu/service/power/PowerModeManager;->mModes:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/baidu/service/power/PowerModeManager;->access$200(Lcom/baidu/service/power/PowerModeManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/baidu/service/power/XmlUtil;->parsePowerModes(Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 135
    const-string v4, "SmartPowerService"

    const-string/jumbo v6, "parse xml fail!"

    invoke-static {v4, v6}, Lcom/baidu/service/power/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 138
    :cond_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .end local v1           #input:Ljava/io/InputStream;
    .end local v2           #modes:Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .line 129
    .restart local v1       #input:Ljava/io/InputStream;
    .restart local v2       #modes:Ljava/io/File;
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/baidu/service/power/PowerModeManager$3;->this$0:Lcom/baidu/service/power/PowerModeManager;

    #getter for: Lcom/baidu/service/power/PowerModeManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/baidu/service/power/PowerModeManager;->access$100(Lcom/baidu/service/power/PowerModeManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #xml@modes#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    goto :goto_0

    .line 140
    :cond_3
    if-eqz v1, :cond_4

    .line 141
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 142
    :cond_4
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    .line 144
    :cond_5
    iget-object v4, p0, Lcom/baidu/service/power/PowerModeManager$3;->this$0:Lcom/baidu/service/power/PowerModeManager;

    invoke-virtual {v4}, Lcom/baidu/service/power/PowerModeManager;->storeModes()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 146
    .end local v1           #input:Ljava/io/InputStream;
    .end local v2           #modes:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 142
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #input:Ljava/io/InputStream;
    .restart local v2       #modes:Ljava/io/File;
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 148
    .end local v1           #input:Ljava/io/InputStream;
    .end local v2           #modes:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 149
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1

    .line 150
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v0

    .line 151
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
