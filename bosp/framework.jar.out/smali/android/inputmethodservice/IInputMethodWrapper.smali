.class Landroid/inputmethodservice/IInputMethodWrapper;
.super Lcom/android/internal/view/IInputMethod$Stub;
.source "IInputMethodWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;,
        Landroid/inputmethodservice/IInputMethodWrapper$Notifier;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DO_ATTACH_TOKEN:I = 0xa

.field private static final DO_CHANGE_INPUTMETHOD_SUBTYPE:I = 0x50

.field private static final DO_CREATE_SESSION:I = 0x28

.field private static final DO_DUMP:I = 0x1

.field private static final DO_HIDE_SOFT_INPUT:I = 0x46

.field private static final DO_RESTART_INPUT:I = 0x22

.field private static final DO_REVOKE_SESSION:I = 0x32

.field private static final DO_SET_INPUT_CONTEXT:I = 0x14

.field private static final DO_SET_SESSION_ENABLED:I = 0x2d

.field private static final DO_SHOW_SOFT_INPUT:I = 0x3c

.field private static final DO_START_INPUT:I = 0x20

.field private static final DO_UNSET_INPUT_CONTEXT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "InputMethodWrapper"


# instance fields
.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mInputMethod:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/inputmethod/InputMethod;",
            ">;"
        }
    .end annotation
.end field

.field final mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/inputmethodservice/AbstractInputMethodService;",
            ">;"
        }
    .end annotation
.end field

.field final mTargetSdkVersion:I


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/AbstractInputMethodService;Landroid/view/inputmethod/InputMethod;)V
    .locals 2
    .parameter "context"
    .parameter "inputMethod"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethod$Stub;-><init>()V

    .line 104
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    .line 105
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p1}, Landroid/inputmethodservice/AbstractInputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Lcom/android/internal/os/HandlerCaller$Callback;)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 106
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Ljava/lang/ref/WeakReference;

    .line 107
    invoke-virtual {p1}, Landroid/inputmethodservice/AbstractInputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    .line 108
    return-void
.end method


# virtual methods
.method public attachToken(Landroid/os/IBinder;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 227
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 228
    return-void
.end method

.method public bindInput(Landroid/view/inputmethod/InputBinding;)V
    .locals 5
    .parameter "binding"

    .prologue
    .line 231
    new-instance v0, Lcom/android/internal/view/InputConnectionWrapper;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputBinding;->getConnectionToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/view/InputConnectionWrapper;-><init>(Lcom/android/internal/view/IInputContext;)V

    .line 233
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    new-instance v1, Landroid/view/inputmethod/InputBinding;

    invoke-direct {v1, v0, p1}, Landroid/view/inputmethod/InputBinding;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputBinding;)V

    .line 234
    .local v1, nu:Landroid/view/inputmethod/InputBinding;
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x14

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 235
    return-void
.end method

.method public changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 3
    .parameter "subtype"

    .prologue
    .line 287
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x50

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 289
    return-void
.end method

.method public createSession(Lcom/android/internal/view/IInputMethodCallback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 252
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x28

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 253
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    const/4 v1, 0x1

    .line 201
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/inputmethodservice/AbstractInputMethodService;

    .line 202
    .local v7, target:Landroid/inputmethodservice/AbstractInputMethodService;
    if-nez v7, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    const-string v0, "android.permission.DUMP"

    invoke-virtual {v7, v0}, Landroid/inputmethodservice/AbstractInputMethodService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump InputMethodManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_2
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 215
    .local v5, latch:Ljava/util/concurrent/CountDownLatch;
    iget-object v8, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 218
    const-wide/16 v0, 0x5

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    const-string v0, "Timeout waiting for dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v6

    .line 222
    .local v6, e:Ljava/lang/InterruptedException;
    const-string v0, "Interrupted waiting for dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 115
    iget-object v7, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethod;

    .line 117
    .local v5, inputMethod:Landroid/view/inputmethod/InputMethod;
    if-nez v5, :cond_1

    iget v7, p1, Landroid/os/Message;->what:I

    if-eq v7, v8, :cond_1

    .line 118
    const-string v7, "InputMethodWrapper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Input method reference was null, ignoring message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 197
    const-string v7, "InputMethodWrapper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unhandled message code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :sswitch_0
    iget-object v7, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/inputmethodservice/AbstractInputMethodService;

    .line 125
    .local v6, target:Landroid/inputmethodservice/AbstractInputMethodService;
    if-eqz v6, :cond_0

    .line 128
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 130
    .local v0, args:Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Ljava/io/FileDescriptor;

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Ljava/io/PrintWriter;

    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/String;

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/inputmethodservice/AbstractInputMethodService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_1
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v8

    .line 136
    :try_start_1
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 137
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, e:Ljava/lang/RuntimeException;
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 137
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 143
    .end local v0           #args:Lcom/android/internal/os/SomeArgs;
    .end local v6           #target:Landroid/inputmethodservice/AbstractInputMethodService;
    :sswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/IBinder;

    invoke-interface {v5, v7}, Landroid/view/inputmethod/InputMethod;->attachToken(Landroid/os/IBinder;)V

    goto :goto_0

    .line 147
    :sswitch_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/view/inputmethod/InputBinding;

    invoke-interface {v5, v7}, Landroid/view/inputmethod/InputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    goto :goto_0

    .line 151
    :sswitch_3
    invoke-interface {v5}, Landroid/view/inputmethod/InputMethod;->unbindInput()V

    goto/16 :goto_0

    .line 154
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 155
    .restart local v0       #args:Lcom/android/internal/os/SomeArgs;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/view/IInputContext;

    .line 156
    .local v4, inputContext:Lcom/android/internal/view/IInputContext;
    if-eqz v4, :cond_2

    new-instance v2, Lcom/android/internal/view/InputConnectionWrapper;

    invoke-direct {v2, v4}, Lcom/android/internal/view/InputConnectionWrapper;-><init>(Lcom/android/internal/view/IInputContext;)V

    .line 158
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    :cond_2
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/EditorInfo;

    .line 159
    .local v3, info:Landroid/view/inputmethod/EditorInfo;
    iget v7, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    invoke-virtual {v3, v7}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    .line 160
    invoke-interface {v5, v2, v3}, Landroid/view/inputmethod/InputMethod;->startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 161
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 165
    .end local v0           #args:Lcom/android/internal/os/SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v3           #info:Landroid/view/inputmethod/EditorInfo;
    .end local v4           #inputContext:Lcom/android/internal/view/IInputContext;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 166
    .restart local v0       #args:Lcom/android/internal/os/SomeArgs;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/view/IInputContext;

    .line 167
    .restart local v4       #inputContext:Lcom/android/internal/view/IInputContext;
    if-eqz v4, :cond_3

    new-instance v2, Lcom/android/internal/view/InputConnectionWrapper;

    invoke-direct {v2, v4}, Lcom/android/internal/view/InputConnectionWrapper;-><init>(Lcom/android/internal/view/IInputContext;)V

    .line 169
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_3
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/EditorInfo;

    .line 170
    .restart local v3       #info:Landroid/view/inputmethod/EditorInfo;
    iget v7, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    invoke-virtual {v3, v7}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    .line 171
    invoke-interface {v5, v2, v3}, Landroid/view/inputmethod/InputMethod;->restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 172
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 176
    .end local v0           #args:Lcom/android/internal/os/SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v3           #info:Landroid/view/inputmethod/EditorInfo;
    .end local v4           #inputContext:Lcom/android/internal/view/IInputContext;
    :sswitch_6
    new-instance v8, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;

    iget-object v7, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v9, v7, Lcom/android/internal/os/HandlerCaller;->mContext:Landroid/content/Context;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/view/IInputMethodCallback;

    invoke-direct {v8, v9, v7}, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;-><init>(Landroid/content/Context;Lcom/android/internal/view/IInputMethodCallback;)V

    invoke-interface {v5, v8}, Landroid/view/inputmethod/InputMethod;->createSession(Landroid/view/inputmethod/InputMethod$SessionCallback;)V

    goto/16 :goto_0

    .line 181
    :sswitch_7
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/view/inputmethod/InputMethodSession;

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_4

    :goto_2
    invoke-interface {v5, v7, v8}, Landroid/view/inputmethod/InputMethod;->setSessionEnabled(Landroid/view/inputmethod/InputMethodSession;Z)V

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 185
    :sswitch_8
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v5, v7}, Landroid/view/inputmethod/InputMethod;->revokeSession(Landroid/view/inputmethod/InputMethodSession;)V

    goto/16 :goto_0

    .line 188
    :sswitch_9
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/ResultReceiver;

    invoke-interface {v5, v8, v7}, Landroid/view/inputmethod/InputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V

    goto/16 :goto_0

    .line 191
    :sswitch_a
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/ResultReceiver;

    invoke-interface {v5, v8, v7}, Landroid/view/inputmethod/InputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V

    goto/16 :goto_0

    .line 194
    :sswitch_b
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-interface {v5, v7}, Landroid/view/inputmethod/InputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    goto/16 :goto_0

    .line 122
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x1e -> :sswitch_3
        0x20 -> :sswitch_4
        0x22 -> :sswitch_5
        0x28 -> :sswitch_6
        0x2d -> :sswitch_7
        0x32 -> :sswitch_8
        0x3c -> :sswitch_9
        0x46 -> :sswitch_a
        0x50 -> :sswitch_b
    .end sparse-switch
.end method

.method public getInternalInputMethod()Landroid/view/inputmethod/InputMethod;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethod;

    return-object v0
.end method

.method public hideSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 3
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    .line 282
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x46

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 284
    return-void
.end method

.method public restartInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .parameter "inputContext"
    .parameter "attribute"

    .prologue
    .line 247
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x22

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 249
    return-void
.end method

.method public revokeSession(Lcom/android/internal/view/IInputMethodSession;)V
    .locals 6
    .parameter "session"

    .prologue
    .line 268
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/IInputMethodSessionWrapper;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;

    move-result-object v2

    .line 270
    .local v2, ls:Landroid/view/inputmethod/InputMethodSession;
    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v5, 0x32

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v2           #ls:Landroid/view/inputmethod/InputMethodSession;
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "InputMethodWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incoming session not of correct type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    .locals 7
    .parameter "session"
    .parameter "enabled"

    .prologue
    .line 257
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/IInputMethodSessionWrapper;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;

    move-result-object v2

    .line 259
    .local v2, ls:Landroid/view/inputmethod/InputMethodSession;
    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v5, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v6, 0x2d

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v6, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v2           #ls:Landroid/view/inputmethod/InputMethodSession;
    :goto_1
    return-void

    .line 259
    .restart local v2       #ls:Landroid/view/inputmethod/InputMethodSession;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 261
    .end local v2           #ls:Landroid/view/inputmethod/InputMethodSession;
    :catch_0
    move-exception v1

    .line 262
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "InputMethodWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incoming session not of correct type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public showSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 3
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    .line 277
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 279
    return-void
.end method

.method public startInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .parameter "inputContext"
    .parameter "attribute"

    .prologue
    .line 242
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x20

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 244
    return-void
.end method

.method public unbindInput()V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 239
    return-void
.end method
