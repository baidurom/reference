.class public final enum Lcom/android/server/am/IActivityStateNotifier$ActivityState;
.super Ljava/lang/Enum;
.source "IActivityStateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/IActivityStateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActivityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/am/IActivityStateNotifier$ActivityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/IActivityStateNotifier$ActivityState;

.field public static final enum Destroyed:Lcom/android/server/am/IActivityStateNotifier$ActivityState;

.field public static final enum Paused:Lcom/android/server/am/IActivityStateNotifier$ActivityState;

.field public static final enum Resumed:Lcom/android/server/am/IActivityStateNotifier$ActivityState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    const-string v1, "Paused"

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/IActivityStateNotifier$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->Paused:Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    .line 9
    new-instance v0, Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    const-string v1, "Resumed"

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/IActivityStateNotifier$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->Resumed:Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    .line 10
    new-instance v0, Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    const-string v1, "Destroyed"

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/IActivityStateNotifier$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->Destroyed:Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    sget-object v1, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->Paused:Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->Resumed:Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->Destroyed:Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->$VALUES:[Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/IActivityStateNotifier$ActivityState;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/am/IActivityStateNotifier$ActivityState;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->$VALUES:[Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    invoke-virtual {v0}, [Lcom/android/server/am/IActivityStateNotifier$ActivityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    return-object v0
.end method
