.class Lcom/baidu/service/power/PowerModeManager$5;
.super Ljava/lang/Object;
.source "PowerModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/service/power/PowerModeManager;->initPolicys()V
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
    .line 176
    iput-object p1, p0, Lcom/baidu/service/power/PowerModeManager$5;->this$0:Lcom/baidu/service/power/PowerModeManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 179
    const/4 v3, 0x0

    .line 180
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/baidu/service/power/PowerModeManager$5;->this$0:Lcom/baidu/service/power/PowerModeManager;

    #getter for: Lcom/baidu/service/power/PowerModeManager;->mDataDir:Ljava/lang/String;
    invoke-static {v6}, Lcom/baidu/service/power/PowerModeManager;->access$300(Lcom/baidu/service/power/PowerModeManager;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "power_policys.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v5, policys:Ljava/io/File;
    const/4 v2, 0x0

    .line 183
    .local v2, input:Ljava/io/InputStream;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x200

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 184
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2           #input:Ljava/io/InputStream;
    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 185
    .restart local v2       #input:Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 186
    const/4 v6, 0x0

    invoke-interface {v3, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 192
    :goto_0
    iget-object v6, p0, Lcom/baidu/service/power/PowerModeManager$5;->this$0:Lcom/baidu/service/power/PowerModeManager;

    #getter for: Lcom/baidu/service/power/PowerModeManager;->mPolicys:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/baidu/service/power/PowerModeManager;->access$000(Lcom/baidu/service/power/PowerModeManager;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 194
    :try_start_1
    iget-object v6, p0, Lcom/baidu/service/power/PowerModeManager$5;->this$0:Lcom/baidu/service/power/PowerModeManager;

    #getter for: Lcom/baidu/service/power/PowerModeManager;->mPolicys:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/baidu/service/power/PowerModeManager;->access$000(Lcom/baidu/service/power/PowerModeManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/baidu/service/power/XmlUtil;->parsePowerPolicys(Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 195
    const-string v6, "SmartPowerService"

    const-string/jumbo v8, "parse xml fail!"

    invoke-static {v6, v8}, Lcom/baidu/service/power/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    if-eqz v2, :cond_0

    .line 197
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 198
    :cond_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    .end local v2           #input:Ljava/io/InputStream;
    .end local v5           #policys:Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .line 189
    .restart local v2       #input:Ljava/io/InputStream;
    .restart local v5       #policys:Ljava/io/File;
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/baidu/service/power/PowerModeManager$5;->this$0:Lcom/baidu/service/power/PowerModeManager;

    #getter for: Lcom/baidu/service/power/PowerModeManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/baidu/service/power/PowerModeManager;->access$100(Lcom/baidu/service/power/PowerModeManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, #xml@policys#t

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    goto :goto_0

    .line 200
    :cond_3
    if-eqz v2, :cond_4

    .line 201
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 202
    :cond_4
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    :try_start_4
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 204
    :cond_5
    iget-object v6, p0, Lcom/baidu/service/power/PowerModeManager$5;->this$0:Lcom/baidu/service/power/PowerModeManager;

    invoke-virtual {v6}, Lcom/baidu/service/power/PowerModeManager;->storePolicys()V

    .line 207
    :cond_6
    iget-object v6, p0, Lcom/baidu/service/power/PowerModeManager$5;->this$0:Lcom/baidu/service/power/PowerModeManager;

    #getter for: Lcom/baidu/service/power/PowerModeManager;->mPolicys:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/baidu/service/power/PowerModeManager;->access$000(Lcom/baidu/service/power/PowerModeManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/service/power/Policy;

    .line 208
    .local v4, policy:Lcom/baidu/service/power/Policy;
    iget-object v6, p0, Lcom/baidu/service/power/PowerModeManager$5;->this$0:Lcom/baidu/service/power/PowerModeManager;

    #getter for: Lcom/baidu/service/power/PowerModeManager;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/baidu/service/power/PowerModeManager;->access$400(Lcom/baidu/service/power/PowerModeManager;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/baidu/service/power/Policy;->setHandler(Landroid/os/Handler;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 210
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #input:Ljava/io/InputStream;
    .end local v4           #policy:Lcom/baidu/service/power/Policy;
    .end local v5           #policys:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 202
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #input:Ljava/io/InputStream;
    .restart local v5       #policys:Ljava/io/File;
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 212
    .end local v2           #input:Ljava/io/InputStream;
    .end local v5           #policys:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 213
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1

    .line 214
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v0

    .line 215
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
