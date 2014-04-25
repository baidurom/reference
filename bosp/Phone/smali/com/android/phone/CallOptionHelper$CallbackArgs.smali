.class public Lcom/android/phone/CallOptionHelper$CallbackArgs;
.super Ljava/lang/Object;
.source "CallOptionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallOptionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallbackArgs"
.end annotation


# instance fields
.field public args:Ljava/lang/Object;

.field public id:J

.field public number:Ljava/lang/String;

.field public reason:I

.field final synthetic this$0:Lcom/android/phone/CallOptionHelper;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/android/phone/CallOptionHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->this$0:Lcom/android/phone/CallOptionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/android/phone/CallOptionHelper;IIJLjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "_reason"
    .parameter "_type"
    .parameter "_id"
    .parameter "_number"
    .parameter "_args"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->this$0:Lcom/android/phone/CallOptionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p2, p0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    .line 111
    iput p3, p0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->type:I

    .line 112
    iput-object p6, p0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->number:Ljava/lang/String;

    .line 113
    iput-object p7, p0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->args:Ljava/lang/Object;

    .line 114
    iput-wide p4, p0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->id:J

    .line 115
    return-void
.end method
