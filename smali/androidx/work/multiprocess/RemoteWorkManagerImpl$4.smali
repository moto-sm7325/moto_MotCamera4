.class public Landroidx/work/multiprocess/RemoteWorkManagerImpl$4;
.super Landroidx/work/multiprocess/ListenableCallback;
.source "RemoteWorkManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/multiprocess/ListenableCallback<",
        "Landroidx/work/Operation$State$SUCCESS;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Landroidx/work/multiprocess/ListenableCallback;-><init>(Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public toByteArray(Ljava/lang/Object;)[B
    .locals 0

    .line 1
    check-cast p1, Landroidx/work/Operation$State$SUCCESS;

    .line 2
    sget-object p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->sEMPTY:[B

    return-object p0
.end method
