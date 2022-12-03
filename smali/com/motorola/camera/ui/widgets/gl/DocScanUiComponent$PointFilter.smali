.class public Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;
.super Ljava/lang/Object;
.source "DocScanUiComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PointFilter"
.end annotation


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public volatile mLastIsAvailable:Z

.field public mLastTime:J

.field public mPointsFlow:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;>;"
        }
    .end annotation
.end field

.field public mShowingPoint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mLastIsAvailable:Z

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mLastTime:J

    .line 5
    new-instance p1, Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;)V

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static access$1300(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;ZZ)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 2
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    .line 3
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->slidePointTuning:Lcom/motorola/camera/slidedoc/SlidePointTuning;

    .line 4
    invoke-virtual {v3}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->getShowingPoints()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-nez p2, :cond_2

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    .line 5
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz v3, :cond_b

    if-eqz p1, :cond_3

    .line 6
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 7
    :cond_3
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    :goto_1
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mHandler:Landroid/os/Handler;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz p1, :cond_a

    .line 9
    sget-object v3, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 10
    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x0

    const v9, 0x7f120140

    const/4 v12, 0x1

    const/4 v13, 0x3

    const/16 v16, 0x0

    const/4 v11, 0x2

    const/16 v5, 0xfa0

    .line 11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 12
    invoke-static {v13}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v7

    const/16 v10, 0x7d0

    .line 13
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v7, :cond_7

    const/4 v1, 0x3

    if-eq v7, v1, :cond_8

    const/4 v1, 0x4

    if-eq v7, v1, :cond_5

    const/4 v1, 0x5

    if-eq v7, v1, :cond_4

    goto :goto_3

    :cond_4
    if-nez v6, :cond_8

    const/16 v1, 0xbb8

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    .line 15
    :cond_5
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v6, :cond_8

    goto :goto_2

    .line 16
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-nez v6, :cond_8

    :goto_2
    move-object v6, v10

    :cond_8
    :goto_3
    if-nez v6, :cond_9

    .line 17
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 18
    :cond_9
    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v7, 0x1

    .line 19
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v17, 0x0

    move-object v5, v1

    move v6, v7

    move v7, v12

    invoke-direct/range {v5 .. v17}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 20
    sput-object v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 21
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {v4, v1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_4

    :cond_a
    move v1, v2

    .line 23
    :goto_4
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mHandler:Landroid/os/Handler;

    .line 24
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v2, v1

    .line 26
    :cond_b
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 27
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    .line 28
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 29
    iget-object v0, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/google/android/gms/common/api/internal/zaz;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "ANALYTICS_DOC_SCAN_TOAST"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/api/internal/zaz;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static access$200(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;[Landroid/graphics/Point;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_3

    .line 4
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    aget-object v5, p1, v3

    if-eqz v4, :cond_1

    if-nez v5, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0x14

    if-ge v6, v7, :cond_1

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v7, :cond_1

    move v4, v1

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v2

    :goto_2
    if-nez v4, :cond_2

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v1

    rem-int/2addr v3, v4

    .line 9
    aget-object v4, p1, v3

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    .line 10
    aget-object v5, p1, v3

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v3

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, p1, v3

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/List;

    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v4

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/List;

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v5

    .line 14
    invoke-virtual {v3, v6, v0}, Landroid/graphics/Point;->set(II)V

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_5

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 20
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->access$800(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final getPoints()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 3
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    .line 4
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move v6, v2

    :goto_2
    if-ge v6, v4, :cond_1

    .line 5
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Point;

    .line 6
    iget v9, v8, Landroid/graphics/Point;->x:I

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Point;->offset(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    if-ge v2, v4, :cond_3

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    div-int/2addr v5, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    div-int/2addr v6, v0

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Point;->set(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 8
    :cond_3
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/List;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mLastTime:J

    return-object v1
.end method

.method public final isAvailable()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mLastIsAvailable:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mHandler:Landroid/os/Handler;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mLastIsAvailable:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mHandler:Landroid/os/Handler;

    .line 7
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xfa0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mLastIsAvailable:Z

    return v1
.end method

.method public final declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
