.class public final Landroid/renderscript/Script$KernelID;
.super Landroid/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KernelID"
.end annotation


# instance fields
.field mScript:Landroid/renderscript/Script;

.field mSig:I

.field mSlot:I


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Script;II)V
    .locals 0
    .parameter "id"
    .parameter "rs"
    .parameter "s"
    .parameter "slot"
    .parameter "sig"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 40
    iput-object p3, p0, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    .line 41
    iput p4, p0, Landroid/renderscript/Script$KernelID;->mSlot:I

    .line 42
    iput p5, p0, Landroid/renderscript/Script$KernelID;->mSig:I

    .line 43
    return-void
.end method
