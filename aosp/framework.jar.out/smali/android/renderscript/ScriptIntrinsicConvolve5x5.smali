.class public final Landroid/renderscript/ScriptIntrinsicConvolve5x5;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicConvolve5x5.java"


# instance fields
.field private mInput:Landroid/renderscript/Allocation;

.field private final mValues:[F


# direct methods
.method private constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 1
    .parameter "id"
    .parameter "rs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsic;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 26
    const/16 v0, 0x19

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    .line 31
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicConvolve5x5;
    .locals 3
    .parameter "rs"
    .parameter "e"

    .prologue
    .line 51
    const/4 v1, 0x4

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(II)I

    move-result v0

    .line 52
    .local v0, id:I
    new-instance v1, Landroid/renderscript/ScriptIntrinsicConvolve5x5;

    invoke-direct {v1, v0, p0}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;-><init>(ILandroid/renderscript/RenderScript;)V

    return-object v1
.end method


# virtual methods
.method public forEach(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "aout"

    .prologue
    const/4 v1, 0x0

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, v1}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    .line 99
    return-void
.end method

.method public getFieldID_Input()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID()Landroid/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setCoefficients([F)V
    .locals 4
    .parameter "v"

    .prologue
    .line 82
    new-instance v1, Landroid/renderscript/FieldPacker;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 83
    .local v1, fp:Landroid/renderscript/FieldPacker;
    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 84
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    aget v3, p1, v0

    aput v3, v2, v0

    .line 85
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 88
    return-void
.end method

.method public setInput(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "ain"

    .prologue
    .line 63
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mInput:Landroid/renderscript/Allocation;

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 65
    return-void
.end method
