.class public Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;
.super Ljava/lang/Object;
.source "CallOptionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallOptionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AssociateSimMissingArgs"
.end annotation


# static fields
.field public static final ASSOCIATE_SIM_MISSING_YES_NO:I = 0x0

.field public static final ASSOCIATE_SIM_MISSING_YES_OTHER:I = 0x1


# instance fields
.field public suggested:J

.field final synthetic this$0:Lcom/android/phone/CallOptionHelper;

.field public type:I

.field public viaSimInfo:Landroid/provider/Telephony$SIMInfo;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallOptionHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;->this$0:Lcom/android/phone/CallOptionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    return-void
.end method
