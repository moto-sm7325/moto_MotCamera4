.class public abstract Landroidx/lifecycle/LiveData$ObserverWrapper;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ObserverWrapper"
.end annotation


# instance fields
.field public mActive:Z

.field public mLastVersion:I

.field public final mObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Landroidx/lifecycle/LiveData;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    .line 3
    iput-object p2, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mObserver:Landroidx/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method public activeStateChanged(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    .line 3
    iget-object v0, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    iget v1, v0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    add-int/2addr v1, v2

    .line 4
    iput v1, v0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->onActive()V

    .line 6
    :cond_3
    iget-object p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    iget v0, p1, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-nez v0, :cond_4

    .line 7
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->onInactive()V

    .line 8
    :cond_4
    iget-boolean p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz p1, :cond_5

    .line 9
    iget-object p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    :cond_5
    return-void
.end method

.method public detachObserver()V
    .locals 0

    return-void
.end method

.method public isAttachedTo(Landroidx/lifecycle/LifecycleOwner;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract shouldBeActive()Z
.end method
