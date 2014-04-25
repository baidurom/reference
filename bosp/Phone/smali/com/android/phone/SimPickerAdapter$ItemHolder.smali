.class public Lcom/android/phone/SimPickerAdapter$ItemHolder;
.super Ljava/lang/Object;
.source "SimPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolder"
.end annotation


# instance fields
.field public data:Ljava/lang/Object;

.field public type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .parameter "data"
    .parameter "type"

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/android/phone/SimPickerAdapter$ItemHolder;->data:Ljava/lang/Object;

    .line 214
    iput p2, p0, Lcom/android/phone/SimPickerAdapter$ItemHolder;->type:I

    .line 215
    return-void
.end method
