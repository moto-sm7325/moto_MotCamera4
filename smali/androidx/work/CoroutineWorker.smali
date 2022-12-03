.class public abstract Landroidx/work/CoroutineWorker;
.super Landroidx/work/ListenableWorker;
.source "CoroutineWorker.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineWorker.kt\nandroidx/work/CoroutineWorker\n+ 2 ListenableFuture.kt\nandroidx/work/ListenableFutureKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,144:1\n41#2,8:145\n49#2:162\n61#2,7:163\n41#2,8:172\n49#2:189\n61#2,7:190\n310#3,9:153\n319#3,2:170\n310#3,9:180\n319#3,2:197\n*S KotlinDebug\n*F\n+ 1 CoroutineWorker.kt\nandroidx/work/CoroutineWorker\n*L\n110#1:145,8\n110#1:162\n110#1:163,7\n125#1:172,8\n125#1:189\n125#1:190,7\n110#1:153,9\n110#1:170,2\n125#1:180,9\n125#1:197,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/work/CoroutineWorker;",
        "Landroidx/work/ListenableWorker;",
        "Landroid/content/Context;",
        "appContext",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "work-runtime-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final coroutineContext:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final future:Landroidx/work/impl/utils/futures/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/SettableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation
.end field

.field public final job:Lkotlinx/coroutines/CompletableJob;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->job:Lkotlinx/coroutines/CompletableJob;

    .line 3
    new-instance p1, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {p1}, Landroidx/work/impl/utils/futures/SettableFuture;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/work/CoroutineWorker;->future:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 5
    new-instance p2, Landroidx/work/CoroutineWorker$1;

    invoke-direct {p2, p0}, Landroidx/work/CoroutineWorker$1;-><init>(Landroidx/work/CoroutineWorker;)V

    .line 6
    iget-object v0, p0, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    .line 7
    iget-object v0, v0, Landroidx/work/WorkerParameters;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 8
    check-cast v0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 9
    iget-object v0, v0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutor;

    .line 10
    invoke-virtual {p1, p2, v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 11
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 12
    iput-object p1, p0, Landroidx/work/CoroutineWorker;->coroutineContext:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method


# virtual methods
.method public abstract doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/work/ListenableWorker$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public final onStopped()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/work/CoroutineWorker;->future:Landroidx/work/impl/utils/futures/SettableFuture;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->cancel(Z)Z

    return-void
.end method

.method public final startWork()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/CoroutineWorker;->coroutineContext:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    iget-object v1, p0, Landroidx/work/CoroutineWorker;->job:Lkotlinx/coroutines/CompletableJob;

    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    .line 3
    new-instance v4, Landroidx/work/CoroutineWorker$startWork$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Landroidx/work/CoroutineWorker$startWork$1;-><init>(Landroidx/work/CoroutineWorker;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 4
    iget-object p0, p0, Landroidx/work/CoroutineWorker;->future:Landroidx/work/impl/utils/futures/SettableFuture;

    return-object p0
.end method
