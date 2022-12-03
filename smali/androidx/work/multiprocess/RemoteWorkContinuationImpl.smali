.class public Landroidx/work/multiprocess/RemoteWorkContinuationImpl;
.super Ljava/lang/Object;
.source "RemoteWorkContinuationImpl.java"


# instance fields
.field public final mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

.field public final mContinuation:Landroidx/work/WorkContinuation;


# direct methods
.method public constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Landroidx/work/WorkContinuation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    .line 3
    iput-object p2, p0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;->mContinuation:Landroidx/work/WorkContinuation;

    return-void
.end method
