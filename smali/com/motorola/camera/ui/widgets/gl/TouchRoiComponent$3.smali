.class public Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;
.super Ljava/lang/Object;
.source "TouchRoiComponent.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_14

    .line 1
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 2
    iget-boolean v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mTouchingBar:Z

    if-eqz v2, :cond_0

    goto/16 :goto_b

    .line 3
    :cond_0
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    .line 4
    aget v6, v2, v5

    const/4 v7, 0x2

    .line 5
    aget v2, v2, v7

    .line 6
    iget-object v8, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getType()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_e

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 8
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 9
    iget-wide v12, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mLastT:J

    const-wide/16 v14, 0x0

    cmp-long v8, v12, v14

    if-eqz v8, :cond_d

    sub-long v12, v10, v12

    long-to-float v8, v12

    const/high16 v12, 0x42200000    # 40.0f

    cmpg-float v12, v8, v12

    if-gez v12, :cond_1

    return-void

    :cond_1
    mul-float/2addr v4, v8

    .line 10
    iget v12, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelX:F

    add-float/2addr v12, v4

    iput v12, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelX:F

    mul-float/2addr v6, v8

    .line 11
    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelY:F

    add-float/2addr v4, v6

    iput v4, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelY:F

    mul-float/2addr v2, v8

    .line 12
    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelZ:F

    add-float/2addr v4, v2

    iput v4, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelZ:F

    .line 13
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v9, :cond_5

    .line 15
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 16
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v9, :cond_2

    goto/16 :goto_1

    .line 18
    :cond_2
    monitor-enter v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v14, v13

    move/from16 v15, v16

    move/from16 v18, v17

    move v13, v12

    move v12, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v4

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_3

    .line 19
    :try_start_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v5, v19

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    move-wide/from16 v20, v10

    .line 20
    iget-wide v10, v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-float v5, v10

    add-float/2addr v7, v5

    .line 21
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 22
    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    .line 23
    aget v4, v5, v4

    add-float/2addr v12, v4

    .line 24
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 25
    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    const/4 v5, 0x1

    .line 26
    aget v4, v4, v5

    add-float/2addr v14, v4

    .line 27
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 28
    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    .line 29
    aget v4, v4, v8

    move/from16 v5, v18

    add-float v18, v5, v4

    float-to-double v4, v6

    .line 30
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 31
    iget-wide v10, v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-double v10, v10

    move/from16 p1, v7

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 32
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-float v6, v4

    .line 33
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 34
    iget-wide v4, v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-float v4, v4

    .line 35
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 36
    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    const/4 v7, 0x0

    .line 37
    aget v5, v5, v7

    mul-float/2addr v4, v5

    add-float/2addr v9, v4

    .line 38
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 39
    iget-wide v4, v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-float v4, v4

    .line 40
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 41
    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    const/4 v7, 0x1

    .line 42
    aget v5, v5, v7

    mul-float/2addr v4, v5

    add-float/2addr v13, v4

    .line 43
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 44
    iget-wide v4, v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-float v4, v4

    .line 45
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 46
    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    const/4 v7, 0x2

    .line 47
    aget v5, v5, v7

    mul-float/2addr v4, v5

    add-float/2addr v15, v4

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x2

    move/from16 v7, p1

    move-wide/from16 v10, v20

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_3
    move-wide/from16 v20, v10

    move/from16 v5, v18

    .line 48
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v1, v2

    mul-float/2addr v6, v1

    mul-float v2, v7, v7

    sub-float/2addr v6, v2

    const/4 v2, 0x0

    cmpl-float v2, v6, v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    mul-float/2addr v9, v1

    invoke-static {v12, v7, v9, v6}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline1;->m(FFFF)F

    move-result v2

    mul-float/2addr v13, v1

    invoke-static {v14, v7, v13, v6}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline1;->m(FFFF)F

    move-result v3

    mul-float/2addr v1, v15

    invoke-static {v7, v5, v1, v6}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline1;->m(FFFF)F

    move-result v1

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v2, 0x1

    aput v3, v4, v2

    const/4 v2, 0x2

    aput v1, v4, v2

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :goto_1
    move-wide/from16 v20, v10

    :goto_2
    const/4 v4, 0x0

    .line 49
    :goto_3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 50
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 51
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_9

    .line 52
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 53
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 54
    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 55
    :goto_4
    :try_start_2
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 56
    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 57
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 58
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 59
    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 60
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 61
    iget-object v8, v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    add-int/lit8 v9, v6, -0x1

    .line 62
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    const/4 v10, 0x0

    aget v8, v8, v10

    sub-float/2addr v7, v8

    add-float/2addr v5, v7

    .line 63
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 64
    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 65
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 66
    iget-object v10, v10, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 67
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    aget v10, v10, v8

    sub-float/2addr v7, v10

    add-float/2addr v2, v7

    .line 68
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 69
    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 70
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    const/4 v8, 0x2

    aget v7, v7, v8

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 71
    iget-object v10, v10, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 72
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    aget v8, v9, v8

    sub-float/2addr v7, v8

    add-float/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 73
    :cond_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 75
    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    if-nez v6, :cond_7

    const/4 v6, 0x3

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v5, v6, v7

    const/4 v8, 0x1

    aput v2, v6, v8

    const/4 v8, 0x2

    aput v3, v6, v8

    .line 76
    iput-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    .line 77
    :goto_5
    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    .line 78
    aget v6, v6, v7

    invoke-static {v1, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->access$2000(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;FF)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 79
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    const/4 v6, 0x1

    .line 80
    aget v5, v5, v6

    invoke-static {v1, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->access$2000(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;FF)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 81
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    const/4 v5, 0x2

    .line 82
    aget v2, v2, v5

    invoke-static {v1, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->access$2000(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;FF)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    const/4 v5, 0x1

    goto :goto_6

    :catchall_1
    move-exception v0

    .line 83
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_9
    const/4 v5, 0x0

    :goto_6
    if-eqz v4, :cond_b

    .line 84
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 85
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 86
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 88
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 89
    monitor-enter v1

    .line 90
    :try_start_4
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 91
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 92
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_a

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 93
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    const/4 v3, 0x0

    .line 94
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 95
    :cond_a
    monitor-exit v1

    goto :goto_7

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 96
    :cond_b
    :goto_7
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 97
    iget-wide v3, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mFirstT:J

    sub-long v10, v20, v3

    const/4 v3, 0x3

    new-array v3, v3, [F

    .line 98
    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelX:F

    const/4 v6, 0x0

    aput v4, v3, v6

    .line 99
    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelY:F

    const/4 v7, 0x1

    aput v4, v3, v7

    .line 100
    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelZ:F

    const/4 v4, 0x2

    aput v2, v3, v4

    .line 101
    invoke-direct {v1, v10, v11, v3}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;-><init>(J[F)V

    .line 102
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 103
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    .line 104
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 106
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    .line 107
    monitor-enter v1

    .line 108
    :try_start_5
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 109
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    .line 110
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_c

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 111
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    const/4 v3, 0x0

    .line 112
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 113
    :cond_c
    monitor-exit v1

    goto :goto_8

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :cond_d
    move-wide/from16 v20, v10

    const/4 v1, 0x0

    move v5, v1

    .line 114
    :goto_8
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    move-wide/from16 v2, v20

    .line 115
    iput-wide v2, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mLastT:J

    .line 116
    iget-wide v6, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mFirstT:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_12

    .line 117
    iput-wide v2, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mFirstT:J

    goto/16 :goto_a

    :cond_e
    move v7, v5

    .line 118
    iget-object v3, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_11

    .line 119
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 120
    iget v5, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mGyroTimestamp:F

    const/4 v8, 0x0

    cmpl-float v9, v5, v8

    if-eqz v9, :cond_f

    .line 121
    iget-wide v8, v1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v8, v8

    sub-float/2addr v8, v5

    const v5, 0x3089705f    # 1.0E-9f

    mul-float/2addr v8, v5

    mul-float v5, v4, v8

    .line 122
    iget v9, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleX:F

    add-float/2addr v9, v5

    iput v9, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleX:F

    mul-float v5, v6, v8

    .line 123
    iget v10, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleY:F

    add-float/2addr v10, v5

    iput v10, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleY:F

    mul-float/2addr v8, v2

    .line 124
    iget v5, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleZ:F

    add-float/2addr v5, v8

    iput v5, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleZ:F

    float-to-double v8, v9

    .line 125
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 126
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 127
    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleY:F

    float-to-double v9, v3

    .line 128
    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-float v3, v9

    .line 129
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 130
    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleZ:F

    float-to-double v9, v5

    .line 131
    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-float v5, v9

    goto :goto_9

    :cond_f
    move v3, v8

    move v5, v3

    .line 132
    :goto_9
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-wide v10, v1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v1, v10

    .line 133
    iput v1, v9, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mGyroTimestamp:F

    float-to-double v9, v4

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 134
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    float-to-double v13, v6

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    add-double/2addr v13, v9

    float-to-double v1, v2

    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-double/2addr v1, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v8, v8

    .line 135
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v2, v3

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, v8

    float-to-double v4, v5

    .line 136
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v2

    .line 137
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3fe66666    # 1.8f

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_10

    const/high16 v1, 0x41c80000    # 25.0f

    cmpl-float v1, v2, v1

    if-lez v1, :cond_11

    :cond_10
    move v5, v7

    goto :goto_a

    :cond_11
    const/4 v5, 0x0

    :cond_12
    :goto_a
    if-eqz v5, :cond_14

    .line 138
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->registerSensor(Z)V

    .line 139
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 140
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    .line 141
    iget-boolean v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    if-eqz v2, :cond_13

    .line 142
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->dispatchReset()V

    .line 143
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 144
    iget-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mShouldKeepHidden:Z

    if-nez v2, :cond_13

    .line 145
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    .line 146
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->isShutterButtonMode()Z

    move-result v1

    .line 147
    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->applyCenterRoiAnimation(Z)V

    .line 148
    :cond_13
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 149
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->resetSensorValues()V

    :cond_14
    :goto_b
    return-void
.end method
