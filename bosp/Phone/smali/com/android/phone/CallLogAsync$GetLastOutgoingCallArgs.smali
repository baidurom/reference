.class public Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetLastOutgoingCallArgs"
.end annotation


# instance fields
.field public final callback:Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;)V
    .locals 0
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;->context:Landroid/content/Context;

    .line 220
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;->callback:Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;

    .line 221
    return-void
.end method
