.class public Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$CheckStopMovingPress;
.super Ljava/lang/Object;
.source "ModeMenuTexture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckStopMovingPress"
.end annotation


# instance fields
.field public event:Landroid/view/MotionEvent;

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$CheckStopMovingPress;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$CheckStopMovingPress;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->isSliderBg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$CheckStopMovingPress;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 5
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 6
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 7
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$CheckStopMovingPress;->event:Landroid/view/MotionEvent;

    .line 8
    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    .line 9
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    const/4 v6, 0x1

    .line 10
    invoke-virtual/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateSliderCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Landroid/view/MotionEvent;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;Z)Z

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$CheckStopMovingPress;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto/16 :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$CheckStopMovingPress;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 14
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 15
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 16
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$CheckStopMovingPress;->event:Landroid/view/MotionEvent;

    .line 17
    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    .line 18
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v5, :cond_1

    .line 21
    monitor-exit v1

    goto :goto_1

    .line 22
    :cond_1
    :try_start_1
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 23
    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v4

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 24
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 25
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 26
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 27
    iget-boolean v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isAnimation:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    .line 28
    monitor-exit v1

    goto :goto_1

    .line 29
    :cond_3
    :try_start_2
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 30
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 31
    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    .line 32
    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateCellPosition(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    .line 33
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 34
    :cond_4
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 35
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 36
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_0

    .line 37
    :cond_6
    invoke-virtual {v1, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mapPoint(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v6

    .line 38
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->getRect()Lcom/google/gson/FieldAttributes;

    move-result-object v7

    .line 39
    invoke-virtual {v7, v6}, Lcom/google/gson/FieldAttributes;->contains(Landroid/graphics/PointF;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 40
    invoke-virtual {v1, v4, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->moveMenuCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    .line 41
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :cond_7
    monitor-exit v1

    .line 43
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$CheckStopMovingPress;->event:Landroid/view/MotionEvent;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v1

    throw p0
.end method
