.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;ILcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheAdapter;Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;->f$3:I

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;->f$3:I

    .line 1
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    .line 2
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->readPixels()Ljava/nio/Buffer;

    move-result-object v3

    .line 3
    invoke-virtual {v0, v1, v3, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->processDualCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/nio/Buffer;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;I)V

    return-void

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;->f$3:I

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheAdapter;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->LISTENED_STATES:Ljava/util/Collection;

    const-string v3, "$filtersRecycler"

    .line 5
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$meisheAdapter"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "this$0"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->adjustToCenter(I)V

    .line 7
    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheAdapter;->setSelectedFilter(I)V

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->selectedFilter:Landroidx/lifecycle/MutableLiveData;

    :goto_1
    if-nez p0, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
