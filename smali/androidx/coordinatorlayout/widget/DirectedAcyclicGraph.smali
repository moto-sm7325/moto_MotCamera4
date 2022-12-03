.class public Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;
.super Ljava/lang/Object;
.source "DirectedAcyclicGraph.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final synthetic $r8$classId:I

.field public mGraph:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "TT;",
            "Ljava/util/ArrayList<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final mListPool:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SimplePool;"
        }
    .end annotation
.end field

.field public final mSortResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final mSortTmpMarked:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->$r8$classId:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v1, Landroidx/core/util/Pools$SimplePool;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0}, Landroidx/core/util/Pools$SimplePool;-><init>(II)V

    iput-object v1, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mListPool:Ljava/lang/Object;

    .line 18
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Ljava/lang/Object;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mSortResult:Ljava/lang/Object;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mSortTmpMarked:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->$r8$classId:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mListPool:Ljava/lang/Object;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-direct {p1}, Lcom/motorola/camera/capturedmediadata/RecordingTime;-><init>()V

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mSortResult:Ljava/lang/Object;

    .line 10
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mSortTmpMarked:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;Lcom/motorola/camera/capturedmediadata/RecordingTime;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->$r8$classId:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mListPool:Ljava/lang/Object;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iput-object p2, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mSortResult:Ljava/lang/Object;

    .line 15
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mSortTmpMarked:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mListPool:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mSortResult:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mSortTmpMarked:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addNode(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/SimpleArrayMap;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/SimpleArrayMap;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public dfs(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/HashSet<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/SimpleArrayMap;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->dfs(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 11
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This graph contains cyclic dependencies"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public get()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;
    .locals 4

    .line 2
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mListPool:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Ljava/lang/Object;

    check-cast v1, Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mSortResult:Ljava/lang/Object;

    check-cast v2, Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    iget-object p0, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mSortTmpMarked:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    .line 3
    new-instance v3, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;)V

    return-object v3
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->get()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mListPool:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    return-object p0
.end method

.method public getMetadata()Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mSortTmpMarked:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string v0, "VideoSession{Session video size: "

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mListPool:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Current Capture Video Data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Next capture video Data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
