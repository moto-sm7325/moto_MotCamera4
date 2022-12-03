.class public Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "McfCaptureRequestRunnable.java"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfCancelInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;,
        Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;,
        Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;,
        Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RequestListener;,
        Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;,
        Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateOnDemandRequestsRunnable;,
        Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$ReprocStatus;,
        Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;,
        Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfReprocHolder;,
        Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;,
        Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;
    }
.end annotation


# static fields
.field public static sLagFromShutterToEngine:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static sLagFromShutterToNative:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final sShotTimeoutCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCaptureQueueListener:Lcom/motorola/camera/saving/ImageCaptureManager$CaptureQueueListener;

.field public mHandlerCallback:Landroid/os/Handler$Callback;

.field public final mMcfJobHolderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final mMcfReprocList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfReprocHolder;",
            ">;"
        }
    .end annotation
.end field

.field public mOnFullFrameListener:Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sLagFromShutterToNative:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sLagFromShutterToEngine:Ljava/util/Map;

    .line 5
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfReprocList:Ljava/util/List;

    .line 6
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 7
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mOnFullFrameListener:Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;

    .line 8
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mCaptureQueueListener:Lcom/motorola/camera/saving/ImageCaptureManager$CaptureQueueListener;

    return-void
.end method

.method public static access$1100(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getBgHandler(Lcom/motorola/camera/fsm/camera/FsmContext;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static access$1400(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;ZLcom/motorola/camera/mcf/Mcf$ShotSlot;I)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    .line 2
    iput-object p1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 3
    iput-boolean p2, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfCapture:Z

    .line 4
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->getInstanceTypeClass()Lcom/motorola/camera/mcf/Mcf$InstanceType;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->UNUSED:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    :goto_0
    iput-object p0, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    .line 6
    iput-object p3, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 7
    iput p4, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPriority:I

    return-object v0
.end method

.method public static access$2200(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;)Z
    .locals 1

    .line 1
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->ALGORITHM_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    sget-object p1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->CANCELLED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static access$3600(Lcom/motorola/camera/fsm/camera/FsmContext;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getPhotoModeSetup(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/modes/PhotoMode;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup(I)Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized cancelAllJobs(Z)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mCancelled:Z

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5
    new-instance v4, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v4}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    shl-int/lit8 v3, v3, 0x10

    const-string v5, "CancelSnapshot"

    .line 6
    invoke-virtual {v4, v5, v3}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;I)V

    .line 7
    invoke-static {v4}, Lcom/motorola/camera/mcf/Mcf;->setEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    iget-boolean v3, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mSequenceStopped:Z

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    .line 9
    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 10
    invoke-virtual {p0, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getBgHandler(Lcom/motorola/camera/fsm/camera/FsmContext;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 11
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 12
    invoke-virtual {p0, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getBgHandler(Lcom/motorola/camera/fsm/camera/FsmContext;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Ljava/util/Map$Entry;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 13
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final cancelCleanup(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfReprocList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    .line 4
    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-static {v2}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 6
    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->isBgBound:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/jms/BgJobManager;->cancelJob(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    .line 8
    :cond_2
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mSequenceStopped:Z

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v0

    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->onJobCompleted(I)V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mCaptureQueueListener:Lcom/motorola/camera/saving/ImageCaptureManager$CaptureQueueListener;

    .line 14
    const-class v1, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v1

    .line 15
    :try_start_3
    sget-object v2, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 16
    iget-object v2, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    monitor-exit v1

    .line 18
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 19
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getPhotoModeSetup(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    move-result-object v0

    .line 20
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mBgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 21
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getHandlerMessageId(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 22
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object p1

    .line 23
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mCancelSet:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v1

    throw p0

    .line 25
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sendMcfProcessingCompleteTrigger(Z)V

    return-void

    :catchall_1
    move-exception p0

    .line 26
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public cancelJob(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-nez p0, :cond_0

    const-string p0, "McfCaptureRequestRunnable"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No job matching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v1, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v1}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    shl-int/lit8 p1, p1, 0x10

    const-string v2, "CancelSnapshot"

    .line 6
    invoke-virtual {v1, v2, p1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;I)V

    .line 7
    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf;->setEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mCancelled:Z

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final checkCaptureComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mCompleteSent:Z

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    const/4 p0, 0x1

    .line 6
    iput-boolean p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mCompleteSent:Z

    :cond_0
    return-void
.end method

.method public final checkJpegReceived(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;)Z
    .locals 1

    const/4 p0, 0x1

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mNumFailures:I

    add-int/2addr p1, v0

    .line 3
    iget v0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mNumRequests:I

    if-ne v0, p1, :cond_0

    .line 4
    iput-boolean p0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mJpegReceived:Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return p0

    .line 5
    :catch_0
    iget-boolean p1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mJpegReceived:Z

    if-nez p1, :cond_1

    .line 6
    iput-boolean p0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mJpegReceived:Z

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getBgHandler(Lcom/motorola/camera/fsm/camera/FsmContext;)Landroid/os/Handler;
    .locals 0

    const/4 p0, 0x0

    .line 1
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup(I)Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mBgHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getHandlerMessageId(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)I
    .locals 1

    .line 1
    iget p0, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    shl-int/lit8 p0, p0, 0x10

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceId:I

    const v0, 0xffff

    and-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p0, p1

    return p0
.end method

.method public final getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 4
    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    return-object p0
.end method

.method public final hasInstanceFailed(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;)Z
    .locals 1

    .line 1
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->ALGORITHM_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    sget-object p1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->CANCELLED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mBundle:Landroid/os/Bundle;

    const-string v0, "CANCELLED"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final playShutterOnce(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V
    .locals 0

    .line 1
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 2
    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutter:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutter:Z

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->playCaptureSound()V

    :cond_0
    return-void
.end method

.method public final postCheckCaptureRunnables(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getBgHandler(Lcom/motorola/camera/fsm/camera/FsmContext;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getHandlerMessageId(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)I

    move-result p0

    .line 4
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    move-object/from16 v2, p1

    .line 2
    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    .line 4
    sget v3, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->mCaptureSequenceId:I

    add-int/2addr v3, v2

    sput v3, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->mCaptureSequenceId:I

    if-nez v3, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 5
    sput v3, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->mCaptureSequenceId:I

    .line 6
    :cond_0
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    iget-object v4, v4, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    .line 8
    sget-object v5, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    int-to-long v6, v3

    iget-object v8, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    .line 9
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    .line 10
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/motorola/camera/analytics/AnalyticsHelper;->startShotToShotLogging(Lcom/motorola/camera/ShotType;JI)V

    .line 11
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getNextCaptureScene(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v4

    .line 12
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v6

    .line 13
    new-instance v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 14
    iget-object v8, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 15
    sget-object v9, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 16
    iget-object v8, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 17
    invoke-direct {v7, v3, v2, v8, v5}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;-><init>(IZLandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V

    .line 18
    invoke-virtual {v7, v1}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 19
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 20
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 21
    iget-object v8, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    .line 22
    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 23
    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 24
    iget-object v10, v10, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 25
    check-cast v10, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    .line 26
    invoke-virtual {v10}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->isPassiveFocusEnabledAndSuccessful()Z

    move-result v10

    const-string v12, "FOCUS_SUCCESS"

    const/4 v13, 0x0

    if-nez v10, :cond_2

    invoke-virtual {v3, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    :cond_1
    move v10, v13

    goto :goto_1

    :cond_2
    :goto_0
    move v10, v2

    .line 27
    :goto_1
    invoke-virtual {v8, v12, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    iget-object v8, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    .line 29
    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 30
    iget-object v10, v10, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 31
    check-cast v10, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    .line 32
    invoke-virtual {v10}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->isPassiveFocus()Z

    move-result v10

    const-string v11, "ANALYTICS_IS_CAF"

    .line 33
    invoke-virtual {v8, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    iget-object v8, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v10, "FOCUS_TIME"

    const-wide/16 v11, 0x0

    .line 35
    invoke-virtual {v3, v10, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 36
    invoke-virtual {v8, v10, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 37
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->populateExtendedInfo()V

    .line 38
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v3

    xor-int/2addr v3, v2

    .line 39
    iput-boolean v3, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutter:Z

    .line 40
    iput-object v4, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 41
    iput-boolean v6, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFlash:Z

    .line 42
    iget-object v3, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v4, "REVIEW_REQUIRED"

    .line 43
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPostCaptureReview()Z

    move-result v6

    .line 44
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v3

    iput-boolean v3, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsSlowShot:Z

    .line 46
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;)V

    .line 47
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iput-wide v14, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mStartTime:J

    .line 49
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isDeterminateFgProcessingTimeShot(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    iput-boolean v1, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->isDeterminateFgProcessingShot:Z

    .line 50
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegThumbnailSize()Landroid/util/Size;

    move-result-object v1

    iput-object v1, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mJpegThumbnailSize:Landroid/util/Size;

    .line 51
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget-object v4, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v4, v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v1, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    if-ne v1, v5, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 53
    invoke-static {v7}, Lcom/motorola/camera/saving/SaveImageService;->saveImageBeforeProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    .line 54
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 55
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 56
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 57
    iget-object v3, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v4, "DOCUMENT_WIDTH"

    const-string v5, "DOCUMENT_WIDTH"

    .line 58
    invoke-virtual {v1, v5, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 59
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    iget-object v3, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v4, "DOCUMENT_HEIGHT"

    const-string v5, "DOCUMENT_HEIGHT"

    .line 61
    invoke-virtual {v1, v5, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 62
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    iget-object v3, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v4, "DOCUMENT_POINTS"

    const-string v5, "DOCUMENT_POINTS"

    .line 64
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 65
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 66
    :cond_4
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 67
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v3, "SEQ_ID"

    .line 68
    iget-object v4, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 69
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 71
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v3, "REVIEW_REQUIRED"

    .line 72
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPostCaptureReview()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 74
    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 75
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v3, "MCF_PROCESSING"

    .line 76
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFastCaptureUITimeoutMap:Ljava/util/Map;

    .line 78
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 79
    iget-object v1, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    .line 80
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-nez v3, :cond_5

    const-string v1, "McfCaptureRequestRunnable"

    const-string v3, "processForTimeout invalid holder!"

    .line 81
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 82
    :cond_5
    iget-object v4, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 83
    sget-object v5, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v5, v5, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFastCaptureUITimeoutMap:Ljava/util/Map;

    if-eqz v5, :cond_6

    .line 84
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v2

    goto :goto_2

    :cond_6
    move v4, v13

    :goto_2
    if-eqz v4, :cond_9

    .line 85
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 86
    sget-object v4, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v4, v4, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFastCaptureUITimeoutMap:Ljava/util/Map;

    if-eqz v4, :cond_7

    .line 87
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 88
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_3

    :cond_7
    move-wide v3, v11

    :goto_3
    cmp-long v5, v3, v11

    if-gtz v5, :cond_8

    goto :goto_4

    .line 89
    :cond_8
    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 90
    new-instance v6, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0, v1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;I)V

    .line 91
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    monitor-enter v7

    .line 92
    :try_start_0
    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 93
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v3, v7

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    monitor-exit v7

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 96
    :cond_9
    :goto_4
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 97
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "SEQ_ID"

    .line 98
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-nez v4, :cond_a

    const-string v2, "McfCaptureRequestRunnable"

    const-string v3, "No valid seqId"

    .line 99
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 101
    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 102
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_11

    .line 104
    :cond_a
    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget v6, v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-nez v5, :cond_b

    const-string v2, "McfCaptureRequestRunnable"

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jobHolder for seqId:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is NULL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 107
    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 108
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_11

    .line 110
    :cond_b
    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 111
    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v6

    invoke-static {v6}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(Z)I

    move-result v6

    .line 112
    iget-object v7, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 113
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v7

    sget-object v8, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 114
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    .line 115
    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 116
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 117
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v8

    if-nez v8, :cond_c

    if-eqz v7, :cond_d

    :cond_c
    move v7, v2

    goto :goto_5

    :cond_d
    move v7, v13

    .line 118
    :goto_5
    iget-object v8, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v8, v8, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v9

    iget v10, v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    .line 120
    iget-object v9, v9, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mStateMap:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;

    invoke-direct {v11, v8}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;-><init>(Lcom/motorola/camera/mcf/Mcf$SceneMode;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v9, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v9}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    const/4 v10, 0x6

    .line 122
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v10

    const/4 v11, -0x1

    const/16 v12, 0x10

    if-eqz v10, :cond_f

    .line 123
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getBokehLevel()F

    move-result v2

    float-to-int v2, v2

    .line 124
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthShotReady()Z

    move-result v10

    if-nez v10, :cond_e

    goto :goto_6

    :cond_e
    move v11, v2

    .line 125
    :goto_6
    invoke-virtual {v9, v11, v13, v13}, Lcom/motorola/camera/mcf/McfParameters;->setDualDepthParameters(IZZ)V

    goto :goto_8

    .line 126
    :cond_f
    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 127
    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->CUTOUT_DEFAULT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v10

    .line 128
    iget-object v10, v10, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 129
    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 130
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthShotReady()Z

    move-result v12

    if-nez v12, :cond_10

    goto :goto_7

    :cond_10
    move v11, v10

    .line 131
    :goto_7
    invoke-virtual {v9, v11, v13, v2}, Lcom/motorola/camera/mcf/McfParameters;->setDualDepthParameters(IZZ)V

    .line 132
    :cond_11
    :goto_8
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 133
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 134
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v10

    .line 136
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v11

    .line 137
    iget-object v10, v10, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->m3aMap:Ljava/util/Map;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;

    .line 138
    sget-object v11, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v11, v11, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSnapShotMinInterval:I

    const-string v12, "CAPTURE_AUTO_CAPTURE_TYPE"

    .line 139
    invoke-virtual {v3, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    const-string v13, "CAPTURE_AUTO_CAPTURE_REF_TIME"

    const-wide/16 v14, -0x1

    .line 140
    invoke-virtual {v3, v13, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 141
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBgServiceProcessingEnable()Z

    move-result v15

    if-eqz v15, :cond_13

    .line 142
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v15

    .line 143
    iget-object v15, v15, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 144
    check-cast v15, Landroid/util/Size;

    .line 145
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v16

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v15

    mul-int v15, v15, v16

    move-object/from16 p1, v1

    .line 146
    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 147
    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->BG_SERVICE_PIC_RES_LIMIT:Lcom/motorola/camera/AppFeatures$Feature;

    const v16, 0x7fffffff

    move/from16 p2, v11

    .line 148
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 149
    invoke-virtual {v1, v0, v11}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v15, v0, :cond_12

    const/4 v0, 0x1

    goto :goto_9

    :cond_12
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_a

    :cond_13
    move-object/from16 p1, v1

    move/from16 p2, v11

    :cond_14
    const/4 v0, 0x0

    :goto_a
    const-string v1, "FOCUS_TIMEOUT"

    const/4 v11, 0x0

    .line 150
    invoke-virtual {v3, v1, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 151
    iget-object v11, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v11, v11, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFlash:Z

    if-eqz v11, :cond_16

    .line 152
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashTorchModeEnable()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrEnabledForCurrentMode()Z

    move-result v11

    if-eqz v11, :cond_15

    const/4 v11, 0x1

    goto :goto_b

    :cond_15
    const/4 v11, 0x0

    :goto_b
    if-nez v11, :cond_16

    const/4 v11, 0x1

    goto :goto_c

    :cond_16
    const/4 v11, 0x0

    .line 153
    :goto_c
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v15

    iget-object v15, v15, Lcom/motorola/camera/IqConfigManager;->mZslSettings:Ljava/util/HashMap;

    move-wide/from16 v16, v13

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 154
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v13

    iget-object v13, v13, Lcom/motorola/camera/IqConfigManager;->mZslSettings:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 155
    invoke-static {v13}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/IqConfigManager$ZslSetting;

    goto :goto_d

    :cond_17
    const/4 v13, 0x0

    :goto_d
    if-nez v13, :cond_18

    .line 156
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v13

    iget-object v13, v13, Lcom/motorola/camera/IqConfigManager;->mZslSettings:Ljava/util/HashMap;

    const-string v14, "default"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 157
    invoke-static {v13}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/IqConfigManager$ZslSetting;

    :cond_18
    if-eqz v13, :cond_1a

    .line 158
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v14

    if-eqz v14, :cond_19

    .line 159
    iget-boolean v13, v13, Lcom/motorola/camera/IqConfigManager$ZslSetting;->frontCameraUseZsl:Z

    goto :goto_e

    :cond_19
    iget-boolean v13, v13, Lcom/motorola/camera/IqConfigManager$ZslSetting;->useZsl:Z

    .line 160
    :goto_e
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    if-nez v11, :cond_1a

    .line 161
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_1a

    const/4 v13, 0x1

    goto :goto_f

    :cond_1a
    const/4 v13, 0x0

    :goto_f
    if-nez v13, :cond_1b

    .line 162
    sget-boolean v14, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v14, :cond_1b

    .line 163
    sget-object v14, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 164
    invoke-virtual {v14}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v14

    sget-object v15, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_YUV_CAPTURE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 165
    iget-object v14, v14, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-static {v14, v15}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline2;->m(Ljava/util/HashMap;Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_1b
    const-string v14, "ON_DOWN"

    .line 166
    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/motorola/camera/SensorTime;->convertTime(J)J

    move-result-wide v14

    move/from16 p3, v12

    const-string v12, "ON_UP"

    .line 167
    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    move v3, v6

    move v12, v7

    invoke-static/range {v18 .. v19}, Lcom/motorola/camera/SensorTime;->convertTime(J)J

    move-result-wide v6

    .line 168
    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-object/from16 v18, v10

    move/from16 v19, v11

    iget-wide v10, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 169
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 170
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 171
    check-cast v5, Landroid/util/Size;

    move/from16 v20, v12

    .line 172
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v12

    .line 173
    iget v4, v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    shl-int/lit8 v4, v4, 0x10

    move/from16 v21, v3

    .line 174
    iget-boolean v3, v9, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v3, :cond_1c

    .line 175
    iget-object v3, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v22, v12

    const/16 v12, 0x2c

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_1c
    move/from16 v22, v12

    :goto_10
    const/4 v3, 0x0

    .line 176
    iput-boolean v3, v9, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 177
    iget-object v3, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string/jumbo v12, "{\""

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v3, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v12, "DoSnapshot"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v3, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v12, "\":{\"jobId\":"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-object v3, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    iget-object v3, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v4, ",\"touchDownTime\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v3, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 183
    iget-object v3, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v4, ",\"touchUpTime\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v3, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 185
    iget-object v3, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v4, ",\"sceneMode\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v3, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v3, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v4, ",\"zoomRatio\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v3, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 189
    iget-object v2, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v3, ",\"bgServiceEnabled\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v2, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v2, ",\"focusTimeout\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 193
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ",\"useZsl\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 195
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ",\"isFlash\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 197
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ",\"javaCaptureRecordTimestamp\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 199
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ",\"jpegWidth\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ",\"jpegHeight\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ",\"jpegQuality\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v10, v18

    .line 205
    iget-object v0, v10, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mExposureTime:Ljava/lang/Long;

    if-eqz v0, :cond_1d

    .line 206
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ",\"expTime\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mExposureTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    :cond_1d
    iget-object v0, v10, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mSensitivity:Ljava/lang/Integer;

    if-eqz v0, :cond_1e

    .line 209
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ",\"sensitivity\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mSensitivity:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    :cond_1e
    iget-object v0, v10, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mBoost:Ljava/lang/Integer;

    if-eqz v0, :cond_1f

    .line 212
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ",\"boost\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mBoost:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    :cond_1f
    iget-object v0, v10, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mIso100Gain:Ljava/lang/Float;

    if-eqz v0, :cond_20

    .line 215
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ",\"iso100gain\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mIso100Gain:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    :cond_20
    iget-object v0, v10, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mLensFocusDistance:Ljava/lang/Float;

    if-eqz v0, :cond_21

    .line 218
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ",\"focusDistance\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mLensFocusDistance:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    :cond_21
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ",\"orientation\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ",\"frontMirror\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v13, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_22

    .line 224
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ",\"autoCaptureType\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x0

    cmp-long v0, v16, v0

    if-eqz v0, :cond_22

    const-wide/16 v0, -0x1

    cmp-long v0, v16, v0

    if-eqz v0, :cond_22

    .line 226
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ",\"autoCaptureRefTimestampNs\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 228
    :cond_22
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ",\"snapshotInterval\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    iget-object v0, v9, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    .line 231
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 232
    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getPhotoModeSetup(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    move-result-object v1

    .line 233
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mBgHandler:Landroid/os/Handler;

    if-nez v2, :cond_23

    const-string v1, "McfCaptureRequestRunnable"

    const-string v2, "bgHandler is NULL"

    .line 234
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 236
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 237
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_11

    .line 239
    :cond_23
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 240
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mBgHandlerCallback:Landroid/os/Handler$Callback;

    .line 241
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mCaptureQueueListener:Lcom/motorola/camera/saving/ImageCaptureManager$CaptureQueueListener;

    .line 242
    const-class v3, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v3

    .line 243
    :try_start_1
    sget-object v4, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 244
    iget-object v5, v4, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 245
    iget-object v4, v4, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 246
    :cond_24
    monitor-exit v3

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v1

    .line 248
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mCancelSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mOnFullFrameListener:Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;

    invoke-static {v0, v2}, Lcom/motorola/camera/mcf/Mcf;->setFullFrameListener(Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;Landroid/os/Handler;)V

    .line 250
    invoke-static {v9}, Lcom/motorola/camera/mcf/Mcf;->setEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    :goto_11
    return-void

    :catchall_1
    move-exception v0

    .line 251
    monitor-exit v3

    throw v0
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 252
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final sendMcfProcessingCompleteTrigger(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "MCF_PROCESSING"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_PROCESSING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method
