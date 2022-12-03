.class public Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable$1;
.super Ljava/lang/Object;
.source "RecorderPrepareRunnable.java"

# interfaces
.implements Lcom/motorola/camera/device/callables/RecorderPrepareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/view/Surface;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 4
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_PREPARED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 26

    move-object/from16 v0, p1

    .line 1
    instance-of v0, v0, Lcom/motorola/camera/device/exception/DriveStateUnknownException;

    const/4 v1, 0x1

    const/16 v2, 0xbb8

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Text Description is empty for Setting Confirmation"

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/16 v6, 0xfa0

    .line 3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    const/16 v8, 0x7d0

    .line 4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x3

    if-eqz v0, :cond_6

    .line 5
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 6
    sget-object v12, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v16, 0x0

    const v17, 0x7f1200ce

    const/16 v20, 0x1

    const/16 v21, 0x3

    const/16 v24, 0x0

    .line 7
    invoke-static/range {v21 .. v21}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v13

    if-eqz v13, :cond_4

    if-eq v13, v11, :cond_3

    if-eq v13, v7, :cond_1

    if-eq v13, v4, :cond_0

    move-object v2, v9

    goto :goto_0

    :cond_0
    move/from16 v19, v11

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move/from16 v19, v1

    move-object v2, v8

    goto :goto_1

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move/from16 v19, v5

    move-object v2, v9

    goto :goto_1

    :cond_4
    move-object v2, v8

    :goto_0
    move/from16 v19, v10

    :goto_1
    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v6, v2

    .line 10
    :goto_2
    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v14, 0x1

    .line 11
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v25, 0x0

    move-object v13, v1

    move/from16 v15, v20

    invoke-direct/range {v13 .. v25}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 12
    sput-object v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v12, v1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_6

    .line 15
    :cond_6
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 16
    sget-object v12, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v16, 0x0

    const v17, 0x7f120130

    const/16 v20, 0x1

    const/16 v24, 0x0

    const/16 v21, 0x4

    .line 17
    invoke-static/range {v21 .. v21}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v13

    if-eqz v13, :cond_b

    if-eq v13, v11, :cond_a

    if-eq v13, v7, :cond_8

    if-eq v13, v4, :cond_7

    move-object v2, v9

    goto :goto_3

    :cond_7
    move/from16 v19, v11

    goto :goto_4

    .line 18
    :cond_8
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    move/from16 v19, v1

    move-object v2, v8

    goto :goto_4

    .line 19
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move/from16 v19, v5

    move-object v2, v9

    goto :goto_4

    :cond_b
    move-object v2, v8

    :goto_3
    move/from16 v19, v10

    :goto_4
    if-nez v2, :cond_c

    goto :goto_5

    :cond_c
    move-object v6, v2

    .line 20
    :goto_5
    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v14, 0x1

    .line 21
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v25, 0x0

    move-object v13, v1

    move/from16 v15, v20

    invoke-direct/range {v13 .. v25}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 22
    sput-object v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 23
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {v12, v1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :goto_6
    move-object/from16 v0, p0

    .line 25
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPrepareRunnable;

    .line 26
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 27
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 28
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast v0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method
