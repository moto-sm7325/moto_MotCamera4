.class public Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$MinDurationSuperSlowMotionGuardRunnable;
.super Ljava/lang/Object;
.source "VideoStates.java"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MinDurationSuperSlowMotionGuardRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/fsm/GuardedTransitionRunnable<",
        "Lcom/motorola/camera/fsm/camera/FsmContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0b005e

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result p0

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 5
    iget-object v3, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string v3, "VIDEO_RECORDING"

    .line 6
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, p2

    goto :goto_0

    :cond_0
    move p0, v2

    .line 7
    :goto_0
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_1

    .line 8
    iget-object v5, p1, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mSortResult:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    .line 9
    iget-wide v5, v5, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    goto :goto_1

    :cond_1
    move-wide v5, v3

    :goto_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    cmp-long p0, v5, v3

    if-lez p0, :cond_3

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sub-long/2addr p0, v5

    cmp-long p0, p0, v0

    if-ltz p0, :cond_2

    goto :goto_2

    :cond_2
    move p2, v2

    :cond_3
    :goto_2
    return p2
.end method
