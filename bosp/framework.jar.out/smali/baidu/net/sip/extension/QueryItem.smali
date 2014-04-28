.class public Lbaidu/net/sip/extension/QueryItem;
.super Ljava/lang/Object;
.source "QueryItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final QUERY_TYPE_EMAIL:I = 0x2

.field public static final QUERY_TYPE_NAME:I = 0x1

.field public static final QUERY_TYPE_PHONE:I = 0x3

.field public static final QUERY_TYPE_SIPID:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public qs:Ljava/lang/String;

.field public qt:I

.field public uuid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .parameter "type"
    .parameter "str"
    .parameter "dataId"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lbaidu/net/sip/extension/QueryItem;->qt:I

    .line 24
    iput-object p2, p0, Lbaidu/net/sip/extension/QueryItem;->qs:Ljava/lang/String;

    .line 25
    iput p3, p0, Lbaidu/net/sip/extension/QueryItem;->uuid:I

    .line 26
    return-void
.end method
