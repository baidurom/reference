.class Lcom/baidu/service/power/PowerModeManager$4;
.super Ljava/lang/Object;
.source "PowerModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/service/power/PowerModeManager;->storePolicys()V
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
    .line 158
    iput-object p1, p0, Lcom/baidu/service/power/PowerModeManager$4;->this$0:Lcom/baidu/service/power/PowerModeManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 160
    iget-object v3, p0, Lcom/baidu/service/power/PowerModeManager$4;->this$0:Lcom/baidu/service/power/PowerModeManager;

    #getter for: Lcom/baidu/service/power/PowerModeManager;->mPolicys:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/baidu/service/power/PowerModeManager;->access$000(Lcom/baidu/service/power/PowerModeManager;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 161
    :try_start_0
    iget-object v3, p0, Lcom/baidu/service/power/PowerModeManager$4;->this$0:Lcom/baidu/service/power/PowerModeManager;

    #getter for: Lcom/baidu/service/power/PowerModeManager;->mPolicys:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/baidu/service/power/PowerModeManager;->access$000(Lcom/baidu/service/power/PowerModeManager;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 163
    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/baidu/service/power/PowerModeManager$4;->this$0:Lcom/baidu/service/power/PowerModeManager;

    #getter for: Lcom/baidu/service/power/PowerModeManager;->mDataDir:Ljava/lang/String;
    invoke-static {v3}, Lcom/baidu/service/power/PowerModeManager;->access$300(Lcom/baidu/service/power/PowerModeManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "power_policys.xml"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v2, policys:Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 165
    .local v1, output:Ljava/io/OutputStream;
    iget-object v3, p0, Lcom/baidu/service/power/PowerModeManager$4;->this$0:Lcom/baidu/service/power/PowerModeManager;

    #getter for: Lcom/baidu/service/power/PowerModeManager;->mPolicys:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/baidu/service/power/PowerModeManager;->access$000(Lcom/baidu/service/power/PowerModeManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/baidu/service/power/XmlUtil;->storePowerPolicys(Ljava/util/ArrayList;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    .end local v1           #output:Ljava/io/OutputStream;
    .end local v2           #policys:Ljava/io/File;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 171
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 170
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
