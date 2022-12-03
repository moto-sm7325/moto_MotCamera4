.class public Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "StartKPIRunnable.java"


# instance fields
.field public final mKpi:Lcom/motorola/camera/CameraKpi$KPI;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/CameraKpi$KPI;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->mKpi:Lcom/motorola/camera/CameraKpi$KPI;

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    .line 5
    sget-boolean p1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p1, :cond_0

    .line 6
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p2

    iget-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->mKpi:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p2, p3}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->mKpi:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
