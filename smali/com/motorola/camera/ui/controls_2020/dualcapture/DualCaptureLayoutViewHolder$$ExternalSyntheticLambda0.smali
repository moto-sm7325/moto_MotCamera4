.class public final synthetic Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;

    check-cast p1, Ljava/lang/Integer;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;->index:Ljava/lang/Integer;

    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;->imageView:Landroid/widget/ImageView;

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;->selectedBitmap:Landroidx/lifecycle/LiveData;

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;->imageView:Landroid/widget/ImageView;

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;->bitmap:Landroidx/lifecycle/LiveData;

    if-nez v1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 10
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;->imageView:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 12
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 13
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void
.end method
