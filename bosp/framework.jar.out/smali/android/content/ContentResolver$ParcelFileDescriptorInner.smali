.class final Landroid/content/ContentResolver$ParcelFileDescriptorInner;
.super Landroid/os/ParcelFileDescriptor;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ParcelFileDescriptorInner"
.end annotation


# instance fields
.field private final mContentProvider:Landroid/content/IContentProvider;

.field private mReleaseProviderFlag:Z

.field final synthetic this$0:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/content/IContentProvider;)V
    .locals 1
    .parameter
    .parameter "pfd"
    .parameter "icp"

    .prologue
    .line 1923
    iput-object p1, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->this$0:Landroid/content/ContentResolver;

    .line 1924
    invoke-direct {p0, p2}, Landroid/os/ParcelFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 1921
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->mReleaseProviderFlag:Z

    .line 1925
    iput-object p3, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->mContentProvider:Landroid/content/IContentProvider;

    .line 1926
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1930
    iget-boolean v0, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->mReleaseProviderFlag:Z

    if-nez v0, :cond_0

    .line 1931
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1932
    iget-object v0, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->this$0:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1933
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->mReleaseProviderFlag:Z

    .line 1935
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1939
    iget-boolean v0, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->mReleaseProviderFlag:Z

    if-nez v0, :cond_0

    .line 1940
    invoke-virtual {p0}, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->close()V

    .line 1942
    :cond_0
    return-void
.end method
