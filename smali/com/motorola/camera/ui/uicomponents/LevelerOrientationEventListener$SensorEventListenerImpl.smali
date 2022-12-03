.class public Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "LevelerOrientationEventListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SensorEventListenerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener$SensorEventListenerImpl;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    .line 1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    neg-float v1, v1

    const/4 v2, 0x1

    .line 3
    aget v3, p1, v2

    neg-float v3, v3

    const/4 v4, 0x2

    .line 4
    aget p1, p1, v4

    neg-float p1, p1

    mul-float v5, v1, v1

    mul-float v6, v3, v3

    add-float/2addr v6, v5

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v6, v5

    mul-float/2addr p1, p1

    cmpl-float p1, v6, p1

    const/16 v5, 0x168

    const/4 v6, -0x1

    if-ltz p1, :cond_1

    const p1, 0x42652ee1

    neg-float v3, v3

    float-to-double v7, v3

    float-to-double v9, v1

    .line 5
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    double-to-float v1, v7

    mul-float/2addr v1, p1

    .line 6
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x5a

    :goto_0
    if-lt p1, v5, :cond_0

    add-int/lit16 p1, p1, -0x168

    goto :goto_0

    :cond_0
    :goto_1
    if-gez p1, :cond_2

    add-int/lit16 p1, p1, 0x168

    goto :goto_1

    :cond_1
    move p1, v6

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener$SensorEventListenerImpl;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener$SensorEventListenerImpl;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;

    .line 10
    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;->mOrientation:I

    if-eq p1, v1, :cond_d

    .line 11
    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;->mOrientation:I

    .line 12
    check-cast p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;

    if-eq p1, v6, :cond_d

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    .line 14
    iget v3, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelOrientation:I

    if-ne p1, v3, :cond_3

    goto/16 :goto_5

    .line 15
    :cond_3
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 16
    iget-boolean v3, v3, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v3, :cond_4

    .line 17
    sget v3, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    sub-int p1, v3, p1

    .line 18
    :cond_4
    iput p1, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelOrientation:I

    .line 19
    iget-object v3, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    if-eqz v3, :cond_d

    .line 20
    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_d

    .line 21
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    .line 22
    iget-object v3, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mOrientationPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v7, 0xa

    if-lt v3, v7, :cond_5

    .line 23
    iget-object v3, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mOrientationPool:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 24
    :cond_5
    iget-object v3, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mOrientationPool:Ljava/util/List;

    add-int/lit16 v7, p1, -0xb4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v3, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mOrientationPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v7, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_2

    .line 26
    :cond_6
    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mOrientationPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v7, v1

    .line 27
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    .line 28
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    .line 29
    iget v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mOrientation:I

    add-int/lit16 v3, v1, -0xb4

    .line 30
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDeviationValue:I

    const/16 v7, 0x2d

    if-le v3, v7, :cond_7

    sub-int/2addr v5, v3

    .line 31
    iput v5, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDeviationValue:I

    .line 32
    :cond_7
    iget v3, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDeviationValue:I

    if-gt v3, v4, :cond_8

    move v0, v2

    .line 33
    :cond_8
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerLine:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveled:Z

    if-eqz v3, :cond_9

    int-to-float p1, v1

    goto :goto_3

    :cond_9
    neg-int p1, p1

    int-to-float p1, p1

    :goto_3
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 34
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveled:Z

    if-ne v0, p1, :cond_a

    goto :goto_5

    .line 35
    :cond_a
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveled:Z

    .line 36
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLine:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    iget v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveledColor:I

    goto :goto_4

    :cond_b
    move v1, v6

    :goto_4
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 37
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerLine:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    iget v6, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveledColor:I

    :cond_c
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_d
    :goto_5
    return-void
.end method
