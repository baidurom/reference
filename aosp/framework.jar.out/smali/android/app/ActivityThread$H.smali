.class Landroid/app/ActivityThread$H;
.super Landroid/os/Handler;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field public static final ACTIVITY_CONFIGURATION_CHANGED:I = 0x7d

.field public static final BIND_APPLICATION:I = 0x6e

.field public static final BIND_SERVICE:I = 0x79

.field public static final CLEAN_UP_CONTEXT:I = 0x77

.field public static final CONFIGURATION_CHANGED:I = 0x76

.field public static final CREATE_BACKUP_AGENT:I = 0x80

.field public static final CREATE_SERVICE:I = 0x72

.field public static final DESTROY_ACTIVITY:I = 0x6d

.field public static final DESTROY_BACKUP_AGENT:I = 0x81

.field public static final DISPATCH_PACKAGE_BROADCAST:I = 0x85

.field public static final DUMP_ACTIVITY:I = 0x88

.field public static final DUMP_HEAP:I = 0x87

.field public static final DUMP_PROVIDER:I = 0x8d

.field public static final DUMP_SERVICE:I = 0x7b

.field public static final ENABLE_JIT:I = 0x84

.field public static final EXIT_APPLICATION:I = 0x6f

.field public static final GC_WHEN_IDLE:I = 0x78

.field public static final HIDE_WINDOW:I = 0x6a

.field public static final LAUNCH_ACTIVITY:I = 0x64

.field public static final LOW_MEMORY:I = 0x7c

.field public static final NEW_INTENT:I = 0x70

.field public static final PAUSE_ACTIVITY:I = 0x65

.field public static final PAUSE_ACTIVITY_FINISHING:I = 0x66

.field public static final PROFILER_CONTROL:I = 0x7f

.field public static final RECEIVER:I = 0x71

.field public static final RELAUNCH_ACTIVITY:I = 0x7e

.field public static final REMOVE_PROVIDER:I = 0x83

.field public static final REQUEST_THUMBNAIL:I = 0x75

.field public static final RESUME_ACTIVITY:I = 0x6b

.field public static final SCHEDULE_CRASH:I = 0x86

.field public static final SEND_RESULT:I = 0x6c

.field public static final SERVICE_ARGS:I = 0x73

.field public static final SET_CORE_SETTINGS:I = 0x8a

.field public static final SHOW_WINDOW:I = 0x69

.field public static final SLEEPING:I = 0x89

.field public static final STOP_ACTIVITY_HIDE:I = 0x68

.field public static final STOP_ACTIVITY_SHOW:I = 0x67

.field public static final STOP_SERVICE:I = 0x74

.field public static final SUICIDE:I = 0x82

.field public static final TRIM_MEMORY:I = 0x8c

.field public static final UNBIND_SERVICE:I = 0x7a

.field public static final UNSTABLE_PROVIDER_DIED:I = 0x8e

.field public static final UPDATE_PACKAGE_COMPATIBILITY_INFO:I = 0x8b


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1092
    iput-object p1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1092
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private maybeSnapshot()V
    .locals 8

    .prologue
    .line 1397
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1400
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-object v3, v5, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 1401
    .local v3, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1403
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1404
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 1405
    const-string v5, "ActivityThread"

    const-string v6, "cannot get a valid context"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #packageName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1408
    .restart local v0       #context:Landroid/content/Context;
    .restart local v2       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1409
    .local v4, pm:Landroid/content/pm/PackageManager;
    if-nez v4, :cond_2

    .line 1410
    const-string v5, "ActivityThread"

    const-string v6, "cannot get a valid PackageManager"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1415
    .end local v0           #context:Landroid/content/Context;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 1416
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot get package info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1418
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshot(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    goto :goto_0

    .line 1413
    .restart local v0       #context:Landroid/content/Context;
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "code"

    .prologue
    .line 1184
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v8, 0x40

    .line 1188
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1394
    :goto_0
    return-void

    .line 1190
    :pswitch_0
    const-string v3, "activityStart"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1191
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1193
    .local v2, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v3, v4, v5}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v3

    iput-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 1195
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #calls: Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V
    invoke-static {v3, v2, v6}, Landroid/app/ActivityThread;->access$600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    .line 1196
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 1199
    .end local v2           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    :pswitch_1
    const-string v3, "activityRestart"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1200
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1201
    .restart local v2       #r:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #calls: Landroid/app/ActivityThread;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    invoke-static {v3, v2}, Landroid/app/ActivityThread;->access$700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 1202
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 1205
    .end local v2           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    :pswitch_2
    const-string v3, "activityPause"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1206
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_0

    :goto_1
    iget v7, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZI)V
    invoke-static {v6, v3, v5, v4, v7}, Landroid/app/ActivityThread;->access$800(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZI)V

    .line 1207
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1208
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :cond_0
    move v4, v5

    .line 1206
    goto :goto_1

    .line 1211
    :pswitch_3
    const-string v3, "activityPause"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1212
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_1

    move v5, v4

    :cond_1
    iget v7, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZI)V
    invoke-static {v6, v3, v4, v5, v7}, Landroid/app/ActivityThread;->access$800(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZI)V

    .line 1213
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 1216
    :pswitch_4
    const-string v3, "activityStop"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1217
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    iget v6, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZI)V
    invoke-static {v5, v3, v4, v6}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    .line 1218
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 1221
    :pswitch_5
    const-string v3, "activityStop"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1222
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    iget v6, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZI)V
    invoke-static {v4, v3, v5, v6}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    .line 1223
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1226
    :pswitch_6
    const-string v3, "activityShowWindow"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1227
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    #calls: Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V
    invoke-static {v5, v3, v4}, Landroid/app/ActivityThread;->access$1000(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1228
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1231
    :pswitch_7
    const-string v3, "activityHideWindow"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1232
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    #calls: Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V
    invoke-static {v4, v3, v5}, Landroid/app/ActivityThread;->access$1000(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1233
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1236
    :pswitch_8
    const-string v3, "activityResume"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1237
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_2

    move v5, v4

    :cond_2
    invoke-virtual {v6, v3, v4, v5}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZ)V

    .line 1239
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1242
    :pswitch_9
    const-string v3, "activityDeliverResult"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1243
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$ResultData;

    #calls: Landroid/app/ActivityThread;->handleSendResult(Landroid/app/ActivityThread$ResultData;)V
    invoke-static {v4, v3}, Landroid/app/ActivityThread;->access$1100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V

    .line 1244
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1247
    :pswitch_a
    const-string v3, "activityDestroy"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1248
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_3

    :goto_2
    iget v7, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V
    invoke-static {v6, v3, v4, v7, v5}, Landroid/app/ActivityThread;->access$1200(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V

    .line 1250
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_3
    move v4, v5

    .line 1248
    goto :goto_2

    .line 1253
    :pswitch_b
    const-string v3, "bindApplication"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1254
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$AppBindData;

    .line 1255
    .local v1, data:Landroid/app/ActivityThread$AppBindData;
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #calls: Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    invoke-static {v3, v1}, Landroid/app/ActivityThread;->access$1300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    .line 1256
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1259
    .end local v1           #data:Landroid/app/ActivityThread$AppBindData;
    :pswitch_c
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v3, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v3, :cond_4

    .line 1260
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v3, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->onTerminate()V

    .line 1262
    :cond_4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 1265
    :pswitch_d
    const-string v3, "activityNewIntent"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1266
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$NewIntentData;

    #calls: Landroid/app/ActivityThread;->handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V
    invoke-static {v4, v3}, Landroid/app/ActivityThread;->access$1400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V

    .line 1267
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1270
    :pswitch_e
    const-string v3, "broadcastReceiveComp"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1271
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$ReceiverData;

    #calls: Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    invoke-static {v4, v3}, Landroid/app/ActivityThread;->access$1500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V

    .line 1272
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1273
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1276
    :pswitch_f
    const-string/jumbo v3, "serviceCreate"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1277
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$CreateServiceData;

    #calls: Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    invoke-static {v4, v3}, Landroid/app/ActivityThread;->access$1600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V

    .line 1278
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1281
    :pswitch_10
    const-string/jumbo v3, "serviceBind"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1282
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$BindServiceData;

    #calls: Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    invoke-static {v4, v3}, Landroid/app/ActivityThread;->access$1700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 1283
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1286
    :pswitch_11
    const-string/jumbo v3, "serviceUnbind"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1287
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$BindServiceData;

    #calls: Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    invoke-static {v4, v3}, Landroid/app/ActivityThread;->access$1800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 1288
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1291
    :pswitch_12
    const-string/jumbo v3, "serviceStart"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1292
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$ServiceArgsData;

    #calls: Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    invoke-static {v4, v3}, Landroid/app/ActivityThread;->access$1900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V

    .line 1293
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1296
    :pswitch_13
    const-string/jumbo v3, "serviceStop"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1297
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    #calls: Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V
    invoke-static {v4, v3}, Landroid/app/ActivityThread;->access$2000(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 1298
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1299
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1302
    :pswitch_14
    const-string/jumbo v3, "requestThumbnail"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1303
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    #calls: Landroid/app/ActivityThread;->handleRequestThumbnail(Landroid/os/IBinder;)V
    invoke-static {v4, v3}, Landroid/app/ActivityThread;->access$2100(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 1304
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1307
    :pswitch_15
    const-string v3, "configChanged"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1308
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/res/Configuration;

    invoke-virtual {v4, v3, v6}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 1309
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1312
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    .line 1313
    .local v0, cci:Landroid/app/ActivityThread$ContextCleanupInfo;
    iget-object v3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    iget-object v4, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    iget-object v5, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1316
    .end local v0           #cci:Landroid/app/ActivityThread$ContextCleanupInfo;
    :pswitch_17
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    goto/16 :goto_0

    .line 1319
    :pswitch_18
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$DumpComponentInfo;

    #calls: Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V
    invoke-static {v4, v3}, Landroid/app/ActivityThread;->access$2200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1322
    :pswitch_19
    const-string v3, "lowMemory"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1323
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->handleLowMemory()V

    .line 1324
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1327
    :pswitch_1a
    const-string v3, "activityConfigChanged"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1328
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/os/IBinder;)V

    .line 1329
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1332
    :pswitch_1b
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_5

    :goto_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$ProfilerControlData;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v4, v3, v5}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ActivityThread$ProfilerControlData;I)V

    goto/16 :goto_0

    :cond_5
    move v4, v5

    goto :goto_3

    .line 1335
    :pswitch_1c
    const-string v3, "backupCreateAgent"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1336
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$CreateBackupAgentData;

    #calls: Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    invoke-static {v4, v3}, Landroid/app/ActivityThread;->access$2300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 1337
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1340
    :pswitch_1d
    const-string v3, "backupDestroyAgent"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1341
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$CreateBackupAgentData;

    #calls: Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    invoke-static {v4, v3}, Landroid/app/ActivityThread;->access$2400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 1342
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1345
    :pswitch_1e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    .line 1348
    :pswitch_1f
    const-string/jumbo v3, "providerRemove"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1349
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-virtual {v4, v3}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V

    .line 1350
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1353
    :pswitch_20
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    goto/16 :goto_0

    .line 1356
    :pswitch_21
    const-string v3, "broadcastPackage"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1357
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 1358
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1361
    :pswitch_22
    new-instance v4, Landroid/app/RemoteServiceException;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1363
    :pswitch_23
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_6

    :goto_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$DumpHeapData;

    invoke-static {v4, v3}, Landroid/app/ActivityThread;->handleDumpHeap(ZLandroid/app/ActivityThread$DumpHeapData;)V

    goto/16 :goto_0

    :cond_6
    move v4, v5

    goto :goto_4

    .line 1366
    :pswitch_24
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$DumpComponentInfo;

    #calls: Landroid/app/ActivityThread;->handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V
    invoke-static {v4, v3}, Landroid/app/ActivityThread;->access$2500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1369
    :pswitch_25
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$DumpComponentInfo;

    #calls: Landroid/app/ActivityThread;->handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V
    invoke-static {v4, v3}, Landroid/app/ActivityThread;->access$2600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1372
    :pswitch_26
    const-string/jumbo v3, "sleeping"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1373
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_7

    :goto_5
    #calls: Landroid/app/ActivityThread;->handleSleeping(Landroid/os/IBinder;Z)V
    invoke-static {v6, v3, v4}, Landroid/app/ActivityThread;->access$2700(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1374
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_7
    move v4, v5

    .line 1373
    goto :goto_5

    .line 1377
    :pswitch_27
    const-string/jumbo v3, "setCoreSettings"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1378
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    #calls: Landroid/app/ActivityThread;->handleSetCoreSettings(Landroid/os/Bundle;)V
    invoke-static {v4, v3}, Landroid/app/ActivityThread;->access$2800(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    .line 1379
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1382
    :pswitch_28
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$UpdateCompatibilityData;

    #calls: Landroid/app/ActivityThread;->handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    invoke-static {v4, v3}, Landroid/app/ActivityThread;->access$2900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    goto/16 :goto_0

    .line 1385
    :pswitch_29
    const-string/jumbo v3, "trimMemory"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1386
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    .line 1387
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1390
    :pswitch_2a
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    invoke-virtual {v4, v3, v5}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    .line 1188
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_10
        :pswitch_11
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_25
        :pswitch_2a
    .end packed-switch
.end method
