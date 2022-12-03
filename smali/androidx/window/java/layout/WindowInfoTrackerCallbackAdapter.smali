.class public final Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;
.super Ljava/lang/Object;
.source "WindowInfoTrackerCallbackAdapter.kt"

# interfaces
.implements Landroidx/window/layout/WindowInfoTracker;


# instance fields
.field public final consumerToJobMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/core/util/Consumer<",
            "*>;",
            "Lkotlinx/coroutines/Job;",
            ">;"
        }
    .end annotation
.end field

.field public final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final tracker:Landroidx/window/layout/WindowInfoTracker;


# direct methods
.method public constructor <init>(Landroidx/window/layout/WindowInfoTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->tracker:Landroidx/window/layout/WindowInfoTracker;

    .line 3
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->consumerToJobMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addWindowLayoutInfoListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->tracker:Landroidx/window/layout/WindowInfoTracker;

    invoke-interface {v0, p1}, Landroidx/window/layout/WindowInfoTracker;->windowLayoutInfo(Landroid/app/Activity;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget-object v1, p0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->consumerToJobMap:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 4
    instance-of v1, p2, Lkotlinx/coroutines/DispatcherExecutor;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lkotlinx/coroutines/DispatcherExecutor;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    invoke-direct {v1, p2}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;-><init>(Ljava/util/concurrent/Executor;)V

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 5
    :goto_1
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    .line 6
    iget-object p0, p0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->consumerToJobMap:Ljava/util/Map;

    const/4 v4, 0x0

    new-instance v6, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter$addListener$1$1;

    invoke-direct {v6, p1, p3, v2}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter$addListener$1$1;-><init>(Lkotlinx/coroutines/flow/Flow;Landroidx/core/util/Consumer;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    invoke-interface {p0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public windowLayoutInfo(Landroid/app/Activity;)Lkotlinx/coroutines/flow/Flow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->tracker:Landroidx/window/layout/WindowInfoTracker;

    invoke-interface {p0, p1}, Landroidx/window/layout/WindowInfoTracker;->windowLayoutInfo(Landroid/app/Activity;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
