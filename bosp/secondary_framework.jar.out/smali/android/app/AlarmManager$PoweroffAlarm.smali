.class public Landroid/app/AlarmManager$PoweroffAlarm;
.super Ljava/lang/Object;
.source "AlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PoweroffAlarm"
.end annotation


# instance fields
.field public alarmType:I

.field final synthetic this$0:Landroid/app/AlarmManager;

.field public when:J


# direct methods
.method public constructor <init>(Landroid/app/AlarmManager;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Landroid/app/AlarmManager$PoweroffAlarm;->this$0:Landroid/app/AlarmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
