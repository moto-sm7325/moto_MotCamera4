.class public Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;
.super Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;
.source "SuperSlowMotionActivityBindingImpl.java"

# interfaces
.implements Lcom/motorola/camera/generated/callback/OnClickListener$Listener;


# static fields
.field public static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final mCallback1:Landroid/view/View$OnClickListener;

.field public final mCallback2:Landroid/view/View$OnClickListener;

.field public mDirtyFlags:J

.field public final mboundView10:Landroid/widget/TextView;

.field public final mboundView8:Landroidx/constraintlayout/widget/Group;

.field public final mboundView9:Landroidx/constraintlayout/widget/Group;

.field public superSlowMotionTrimBarvaluesAttrChanged:Landroidx/databinding/InverseBindingListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a03a2

    const/16 v2, 0xb

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03a1

    const/16 v2, 0xc

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0397

    const/16 v2, 0xd

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a039d

    const/16 v2, 0xe

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03a4

    const/16 v2, 0xf

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0394

    const/16 v2, 0x10

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0399

    const/16 v2, 0x11

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0398

    const/16 v2, 0x12

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a039b

    const/16 v2, 0x13

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 23

    move-object/from16 v4, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    sget-object v5, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v6, 0x14

    move-object/from16 v7, p1

    invoke-static {v7, v0, v6, v5}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v21

    const/16 v5, 0x10

    .line 2
    aget-object v5, v21, v5

    check-cast v5, Landroidx/constraintlayout/widget/Guideline;

    const/4 v15, 0x2

    aget-object v6, v21, v15

    check-cast v6, Landroid/widget/ImageButton;

    const/16 v7, 0xd

    aget-object v7, v21, v7

    check-cast v7, Lcom/google/android/exoplayer2/ui/PlayerView;

    const/16 v8, 0x12

    aget-object v8, v21, v8

    check-cast v8, Landroidx/constraintlayout/widget/Guideline;

    const/16 v9, 0x11

    aget-object v9, v21, v9

    check-cast v9, Landroidx/constraintlayout/widget/Guideline;

    const/4 v10, 0x5

    aget-object v10, v21, v10

    check-cast v10, Landroid/widget/ProgressBar;

    const/16 v11, 0x13

    aget-object v11, v21, v11

    check-cast v11, Landroidx/constraintlayout/widget/Guideline;

    const/4 v12, 0x7

    aget-object v12, v21, v12

    check-cast v12, Landroid/widget/Button;

    const/16 v13, 0xe

    aget-object v13, v21, v13

    check-cast v13, Landroid/widget/TextView;

    const/4 v14, 0x6

    aget-object v14, v21, v14

    check-cast v14, Landroid/widget/TextView;

    const/16 v16, 0x4

    aget-object v16, v21, v16

    check-cast v16, Landroid/widget/ImageView;

    move-object/from16 v15, v16

    const/4 v4, 0x1

    aget-object v16, v21, v4

    check-cast v16, Landroid/widget/Button;

    const/16 v17, 0xc

    aget-object v17, v21, v17

    check-cast v17, Landroid/widget/Button;

    const/16 v18, 0xb

    aget-object v18, v21, v18

    check-cast v18, Landroid/widget/ToggleButton;

    const/16 v19, 0xf

    aget-object v19, v21, v19

    check-cast v19, Landroid/widget/TextView;

    const/16 v20, 0x3

    aget-object v20, v21, v20

    check-cast v20, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const/16 v22, 0xd

    move/from16 v4, v22

    invoke-direct/range {v1 .. v20}, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Guideline;Landroid/widget/ImageButton;Lcom/google/android/exoplayer2/ui/PlayerView;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/ProgressBar;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ToggleButton;Landroid/widget/TextView;Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V

    .line 3
    new-instance v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl$1;-><init>(Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;)V

    iput-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->superSlowMotionTrimBarvaluesAttrChanged:Landroidx/databinding/InverseBindingListener;

    const-wide/16 v3, -0x1

    .line 4
    iput-wide v3, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const/4 v1, 0x0

    .line 5
    aget-object v1, v21, v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0xa

    .line 7
    aget-object v1, v21, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView10:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x8

    .line 9
    aget-object v1, v21, v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    iput-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView8:Landroidx/constraintlayout/widget/Group;

    .line 10
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x9

    .line 11
    aget-object v1, v21, v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    iput-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView9:Landroidx/constraintlayout/widget/Group;

    .line 12
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingProgressPercentage:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a012b

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 21
    new-instance v0, Lcom/motorola/camera/generated/callback/OnClickListener;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/generated/callback/OnClickListener;-><init>(Lcom/motorola/camera/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mCallback2:Landroid/view/View$OnClickListener;

    .line 22
    new-instance v0, Lcom/motorola/camera/generated/callback/OnClickListener;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/generated/callback/OnClickListener;-><init>(Lcom/motorola/camera/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    .line 23
    monitor-enter p0

    const-wide/16 v0, 0x4000

    .line 24
    :try_start_0
    iput-wide v0, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 25
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 27
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 12

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p0, :cond_1

    move p2, v0

    :cond_1
    if-eqz p2, :cond_6

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->playWhenReady:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    goto/16 :goto_2

    .line 3
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->setPlayWhenReady(Z)V

    goto/16 :goto_2

    .line 4
    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move v0, p2

    :goto_0
    if-eqz v0, :cond_6

    .line 5
    invoke-virtual {p0, p2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->setPlayWhenReady(Z)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    iget p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->totalFrames:I

    .line 7
    iget-object v0, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result v0

    iget-object v1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->first([I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 8
    iget-object v1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->data:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    .line 9
    iget v1, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 10
    iget-object v1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result v1

    iget-object v2, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    invoke-static {v2}, Lkotlin/collections/ArraysKt___ArraysKt;->first([I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 11
    invoke-virtual {p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->getRecordingDuration()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float p2, p2

    mul-float/2addr p2, v1

    float-to-int p2, p2

    sub-int/2addr p2, v0

    .line 12
    iget p1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->slowMotionProgressFactor:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    .line 13
    iput v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->totalProgress:I

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->PROCESSING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->thumbnailTimer:Ljava/util/Timer;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 16
    :goto_1
    new-instance v0, Ljava/util/Timer;

    const-string p1, "Super slow motion thumbnail timer"

    invoke-direct {v0, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->thumbnailTimer:Ljava/util/Timer;

    .line 17
    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V

    const-wide/16 v2, 0x0

    .line 18
    iget-wide v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingThumbnailUpdateInterval:J

    .line 19
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 20
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    .line 21
    sget-object v7, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 22
    new-instance v9, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;

    const/4 p1, 0x0

    invoke-direct {v9, p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_6
    :goto_2
    return-void
.end method

.method public executeBindings()V
    .locals 63

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    const-wide/16 v6, 0x7fff

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/32 v9, 0x1000000

    const-wide/16 v13, 0x6000

    const-wide/16 v15, 0x6002

    const-wide/16 v17, 0x6001

    const-wide/16 v19, 0x6008

    const-wide/16 v21, 0x600c

    const-wide/16 v23, 0x7008

    const-wide/16 v25, 0x6088

    const-wide/16 v27, 0x6100

    const-wide/16 v29, 0x6400

    const-wide/16 v31, 0x6200

    const-wide/16 v33, 0x6800

    const/4 v7, 0x3

    const-wide/16 v37, 0x6020

    const-wide/16 v39, 0x6040

    const/4 v8, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    if-eqz v6, :cond_32

    and-long v44, v2, v17

    cmp-long v6, v44, v4

    if-eqz v6, :cond_2

    if-eqz v0, :cond_0

    .line 6
    iget-object v6, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->playButtonSelected:Landroidx/lifecycle/LiveData;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 7
    :goto_0
    invoke-virtual {v1, v11, v6}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 9
    :goto_1
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v11

    :goto_2
    and-long v44, v2, v15

    cmp-long v44, v44, v4

    if-eqz v44, :cond_5

    if-eqz v0, :cond_3

    .line 10
    iget-object v15, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->duration:Landroidx/lifecycle/MutableLiveData;

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    .line 11
    :goto_3
    invoke-virtual {v1, v12, v15}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v15, :cond_4

    .line 12
    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    .line 13
    :goto_4
    invoke-static {v15}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v15

    goto :goto_5

    :cond_5
    move v15, v11

    :goto_5
    and-long v46, v2, v13

    cmp-long v16, v46, v4

    if-eqz v16, :cond_6

    if-eqz v0, :cond_6

    .line 14
    iget v13, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->maxRange:I

    goto :goto_6

    :cond_6
    move v13, v11

    :goto_6
    and-long v48, v2, v21

    cmp-long v14, v48, v4

    if-eqz v14, :cond_a

    if-eqz v0, :cond_7

    .line 15
    iget-object v11, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingIndicatorVisible:Landroidx/lifecycle/LiveData;

    goto :goto_7

    :cond_7
    const/4 v11, 0x0

    .line 16
    :goto_7
    invoke-virtual {v1, v8, v11}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_8

    .line 17
    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    goto :goto_8

    :cond_8
    const/4 v11, 0x0

    .line 18
    :goto_8
    invoke-static {v11}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v11

    if-eqz v14, :cond_b

    if-eqz v11, :cond_9

    const-wide/32 v48, 0x40000000

    goto :goto_9

    :cond_9
    const-wide/32 v48, 0x20000000

    :goto_9
    or-long v2, v2, v48

    goto :goto_a

    :cond_a
    const/4 v11, 0x0

    :cond_b
    :goto_a
    and-long v48, v2, v19

    cmp-long v14, v48, v4

    if-eqz v14, :cond_11

    if-eqz v0, :cond_c

    .line 19
    iget-object v8, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->contentHidden:Landroidx/lifecycle/MutableLiveData;

    goto :goto_b

    :cond_c
    const/4 v8, 0x0

    .line 20
    :goto_b
    invoke-virtual {v1, v7, v8}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v8, :cond_d

    .line 21
    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/Boolean;

    goto :goto_c

    :cond_d
    const/16 v49, 0x0

    .line 22
    :goto_c
    invoke-static/range {v49 .. v49}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v50

    if-eqz v14, :cond_f

    if-eqz v50, :cond_e

    or-long/2addr v2, v9

    goto :goto_d

    :cond_e
    const-wide/32 v41, 0x800000

    or-long v2, v2, v41

    :cond_f
    :goto_d
    if-eqz v50, :cond_10

    const/4 v14, 0x0

    goto :goto_e

    :cond_10
    const/16 v14, 0x8

    :goto_e
    const-wide/16 v35, 0x6010

    goto :goto_f

    :cond_11
    const/4 v8, 0x0

    const/4 v14, 0x0

    const-wide/16 v35, 0x6010

    const/16 v49, 0x0

    :goto_f
    and-long v50, v2, v35

    cmp-long v50, v50, v4

    if-eqz v50, :cond_13

    if-eqz v0, :cond_12

    .line 23
    iget-object v12, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingProgressPercentage:Landroidx/lifecycle/LiveData;

    goto :goto_10

    :cond_12
    const/4 v12, 0x0

    :goto_10
    const/4 v9, 0x4

    .line 24
    invoke-virtual {v1, v9, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_13

    .line 25
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_11

    :cond_13
    const/4 v9, 0x0

    :goto_11
    and-long v53, v2, v37

    cmp-long v10, v53, v4

    if-eqz v10, :cond_15

    if-eqz v0, :cond_14

    .line 26
    iget-object v10, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->selectedRange:Landroidx/lifecycle/MutableLiveData;

    goto :goto_12

    :cond_14
    const/4 v10, 0x0

    :goto_12
    const/4 v12, 0x5

    .line 27
    invoke-virtual {v1, v12, v10}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v10, :cond_15

    .line 28
    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    goto :goto_13

    :cond_15
    const/4 v10, 0x0

    :goto_13
    and-long v53, v2, v39

    cmp-long v12, v53, v4

    if-eqz v12, :cond_18

    if-eqz v0, :cond_16

    .line 29
    iget-object v12, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->minRange:Landroidx/lifecycle/MutableLiveData;

    goto :goto_14

    :cond_16
    const/4 v12, 0x0

    :goto_14
    const/4 v7, 0x6

    .line 30
    invoke-virtual {v1, v7, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_17

    .line 31
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    goto :goto_15

    :cond_17
    const/4 v7, 0x0

    .line 32
    :goto_15
    invoke-static {v7}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v7

    goto :goto_16

    :cond_18
    const/4 v7, 0x0

    :goto_16
    and-long v54, v2, v25

    cmp-long v12, v54, v4

    if-eqz v12, :cond_1c

    if-eqz v0, :cond_19

    .line 33
    iget-object v4, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->cancelButtonVisible:Landroidx/lifecycle/LiveData;

    goto :goto_17

    :cond_19
    const/4 v4, 0x0

    :goto_17
    const/4 v5, 0x7

    .line 34
    invoke-virtual {v1, v5, v4}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_1a

    .line 35
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_18

    :cond_1a
    const/4 v4, 0x0

    .line 36
    :goto_18
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v12, :cond_1d

    if-eqz v4, :cond_1b

    const-wide/32 v56, 0x100000

    goto :goto_19

    :cond_1b
    const-wide/32 v56, 0x80000

    :goto_19
    or-long v2, v2, v56

    goto :goto_1a

    :cond_1c
    const/4 v4, 0x0

    :cond_1d
    :goto_1a
    and-long v56, v2, v27

    const-wide/16 v54, 0x0

    cmp-long v5, v56, v54

    if-eqz v5, :cond_20

    if-eqz v0, :cond_1e

    .line 37
    iget-object v5, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->currentFrame:Landroidx/lifecycle/MutableLiveData;

    goto :goto_1b

    :cond_1e
    const/4 v5, 0x0

    :goto_1b
    const/16 v12, 0x8

    .line 38
    invoke-virtual {v1, v12, v5}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v5, :cond_1f

    .line 39
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    goto :goto_1c

    :cond_1f
    const/4 v5, 0x0

    .line 40
    :goto_1c
    invoke-static {v5}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v5

    goto :goto_1d

    :cond_20
    const/16 v12, 0x8

    const/4 v5, 0x0

    :goto_1d
    and-long v56, v2, v31

    const-wide/16 v54, 0x0

    cmp-long v43, v56, v54

    if-eqz v43, :cond_26

    if-eqz v0, :cond_21

    .line 41
    iget-object v12, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingSlideshowVisible:Landroidx/lifecycle/LiveData;

    move/from16 v57, v4

    goto :goto_1e

    :cond_21
    move/from16 v57, v4

    const/4 v12, 0x0

    :goto_1e
    const/16 v4, 0x9

    .line 42
    invoke-virtual {v1, v4, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_22

    .line 43
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_1f

    :cond_22
    const/4 v4, 0x0

    .line 44
    :goto_1f
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v43, :cond_24

    if-eqz v4, :cond_23

    const-wide/32 v58, 0x10000

    goto :goto_20

    :cond_23
    const-wide/32 v58, 0x8000

    :goto_20
    or-long v2, v2, v58

    :cond_24
    if-eqz v4, :cond_25

    goto :goto_21

    :cond_25
    const/16 v4, 0x8

    goto :goto_22

    :cond_26
    move/from16 v57, v4

    :goto_21
    const/4 v4, 0x0

    :goto_22
    and-long v58, v2, v29

    const-wide/16 v54, 0x0

    cmp-long v12, v58, v54

    if-eqz v12, :cond_28

    if-eqz v0, :cond_27

    .line 45
    iget-object v12, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingPreview:Landroidx/lifecycle/MutableLiveData;

    move/from16 v43, v4

    goto :goto_23

    :cond_27
    move/from16 v43, v4

    const/4 v12, 0x0

    :goto_23
    const/16 v4, 0xa

    .line 46
    invoke-virtual {v1, v4, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_29

    .line 47
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto :goto_24

    :cond_28
    move/from16 v43, v4

    :cond_29
    const/4 v4, 0x0

    :goto_24
    and-long v58, v2, v33

    const-wide/16 v54, 0x0

    cmp-long v12, v58, v54

    if-eqz v12, :cond_2c

    if-eqz v0, :cond_2a

    .line 48
    iget-object v12, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingProgress:Landroidx/lifecycle/LiveData;

    move-object/from16 v58, v4

    goto :goto_25

    :cond_2a
    move-object/from16 v58, v4

    const/4 v12, 0x0

    :goto_25
    const/16 v4, 0xb

    .line 49
    invoke-virtual {v1, v4, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_2b

    .line 50
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    goto :goto_26

    :cond_2b
    const/4 v4, 0x0

    .line 51
    :goto_26
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v4

    goto :goto_27

    :cond_2c
    move-object/from16 v58, v4

    const/4 v4, 0x0

    :goto_27
    and-long v59, v2, v23

    const-wide/16 v54, 0x0

    cmp-long v12, v59, v54

    if-eqz v12, :cond_31

    if-eqz v0, :cond_2d

    move/from16 v59, v4

    .line 52
    iget-object v4, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->editControlsVisible:Landroidx/lifecycle/LiveData;

    move/from16 v60, v5

    goto :goto_28

    :cond_2d
    move/from16 v59, v4

    move/from16 v60, v5

    const/4 v4, 0x0

    :goto_28
    const/16 v5, 0xc

    .line 53
    invoke-virtual {v1, v5, v4}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_2e

    .line 54
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_29

    :cond_2e
    const/4 v4, 0x0

    .line 55
    :goto_29
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v12, :cond_30

    if-eqz v4, :cond_2f

    const-wide/32 v61, 0x4000000

    goto :goto_2a

    :cond_2f
    const-wide/32 v61, 0x2000000

    :goto_2a
    or-long v2, v2, v61

    :cond_30
    move v12, v11

    move/from16 v5, v43

    move v11, v4

    move-object/from16 v43, v8

    move-object/from16 v4, v58

    move/from16 v8, v59

    move-object/from16 v58, v49

    goto :goto_2b

    :cond_31
    move/from16 v59, v4

    move/from16 v60, v5

    move v12, v11

    move/from16 v5, v43

    move-object/from16 v4, v58

    const/4 v11, 0x0

    move-object/from16 v43, v8

    move-object/from16 v58, v49

    move/from16 v8, v59

    :goto_2b
    move/from16 v49, v60

    goto :goto_2c

    :cond_32
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v43, 0x0

    const/16 v49, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    :goto_2c
    const-wide/32 v59, 0x44100000

    and-long v59, v2, v59

    const-wide/16 v54, 0x0

    cmp-long v59, v59, v54

    if-eqz v59, :cond_37

    if-eqz v0, :cond_33

    .line 56
    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->contentHidden:Landroidx/lifecycle/MutableLiveData;

    goto :goto_2d

    :cond_33
    move-object/from16 v0, v43

    :goto_2d
    move/from16 v43, v7

    const/4 v7, 0x3

    .line 57
    invoke-virtual {v1, v7, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_34

    .line 58
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v58, v0

    check-cast v58, Ljava/lang/Boolean;

    .line 59
    :cond_34
    invoke-static/range {v58 .. v58}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    and-long v58, v2, v19

    const-wide/16 v53, 0x0

    cmp-long v7, v58, v53

    if-eqz v7, :cond_36

    if-eqz v0, :cond_35

    const-wide/32 v51, 0x1000000

    or-long v2, v2, v51

    goto :goto_2e

    :cond_35
    const-wide/32 v41, 0x800000

    or-long v2, v2, v41

    :cond_36
    :goto_2e
    const/4 v7, 0x1

    xor-int/2addr v0, v7

    goto :goto_2f

    :cond_37
    move/from16 v43, v7

    const/4 v0, 0x0

    :goto_2f
    and-long v41, v2, v25

    const-wide/16 v51, 0x0

    cmp-long v7, v41, v51

    if-eqz v7, :cond_3c

    if-eqz v57, :cond_38

    move/from16 v41, v0

    goto :goto_30

    :cond_38
    const/16 v41, 0x0

    :goto_30
    if-eqz v7, :cond_3a

    if-eqz v41, :cond_39

    const-wide/32 v51, 0x10000000

    goto :goto_31

    :cond_39
    const-wide/32 v51, 0x8000000

    :goto_31
    or-long v2, v2, v51

    :cond_3a
    if-eqz v41, :cond_3b

    goto :goto_32

    :cond_3b
    const/16 v7, 0x8

    goto :goto_33

    :cond_3c
    :goto_32
    const/4 v7, 0x0

    :goto_33
    and-long v41, v2, v23

    const-wide/16 v51, 0x0

    cmp-long v41, v41, v51

    if-eqz v41, :cond_41

    if-eqz v11, :cond_3d

    move v11, v0

    goto :goto_34

    :cond_3d
    const/4 v11, 0x0

    :goto_34
    if-eqz v41, :cond_3f

    if-eqz v11, :cond_3e

    const-wide/32 v41, 0x40000

    goto :goto_35

    :cond_3e
    const-wide/32 v41, 0x20000

    :goto_35
    or-long v2, v2, v41

    :cond_3f
    if-eqz v11, :cond_40

    goto :goto_36

    :cond_40
    const/16 v11, 0x8

    goto :goto_37

    :cond_41
    :goto_36
    const/4 v11, 0x0

    :goto_37
    and-long v41, v2, v21

    const-wide/16 v51, 0x0

    cmp-long v41, v41, v51

    if-eqz v41, :cond_46

    if-eqz v12, :cond_42

    goto :goto_38

    :cond_42
    const/4 v0, 0x0

    :goto_38
    if-eqz v41, :cond_44

    if-eqz v0, :cond_43

    const-wide/32 v41, 0x400000

    goto :goto_39

    :cond_43
    const-wide/32 v41, 0x200000

    :goto_39
    or-long v2, v2, v41

    :cond_44
    if-eqz v0, :cond_45

    const/16 v56, 0x0

    goto :goto_3a

    :cond_45
    const/16 v56, 0x8

    :goto_3a
    move/from16 v0, v56

    goto :goto_3b

    :cond_46
    const/4 v0, 0x0

    :goto_3b
    and-long v19, v2, v19

    const-wide/16 v41, 0x0

    cmp-long v12, v19, v41

    if-eqz v12, :cond_47

    .line 60
    iget-object v12, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView10:Landroid/widget/TextView;

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_47
    and-long v19, v2, v23

    cmp-long v12, v19, v41

    if-eqz v12, :cond_48

    .line 61
    iget-object v12, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView8:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v12, v11}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_48
    and-long v11, v2, v21

    cmp-long v11, v11, v41

    if-eqz v11, :cond_49

    .line 62
    iget-object v11, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView9:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v11, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_49
    const-wide/16 v11, 0x4000

    and-long/2addr v11, v2

    cmp-long v0, v11, v41

    if-eqz v0, :cond_4a

    .line 63
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

    iget-object v11, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mCallback2:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionSaveButton:Landroid/widget/Button;

    iget-object v11, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    iget-object v11, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->superSlowMotionTrimBarvaluesAttrChanged:Landroidx/databinding/InverseBindingListener;

    const-string/jumbo v12, "view"

    .line 66
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "attrChange"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getRangeListeners()Ljava/util/HashSet;

    move-result-object v0

    new-instance v12, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBarKt$setListeners$1;

    invoke-direct {v12, v11}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBarKt$setListeners$1;-><init>(Landroidx/databinding/InverseBindingListener;)V

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4a
    and-long v11, v2, v17

    const-wide/16 v17, 0x0

    cmp-long v0, v11, v17

    if-eqz v0, :cond_4b

    .line 68
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setSelected(Z)V

    :cond_4b
    and-long v11, v2, v33

    cmp-long v0, v11, v17

    if-eqz v0, :cond_4c

    .line 69
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_4c
    and-long v11, v2, v25

    cmp-long v0, v11, v17

    if-eqz v0, :cond_4d

    .line 70
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4d
    const-wide/16 v6, 0x6010

    and-long/2addr v6, v2

    cmp-long v0, v6, v17

    if-eqz v0, :cond_58

    .line 71
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingProgressPercentage:Landroid/widget/TextView;

    .line 72
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eq v9, v6, :cond_58

    if-nez v9, :cond_4e

    .line 73
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_4e

    goto :goto_42

    .line 74
    :cond_4e
    instance-of v7, v9, Landroid/text/Spanned;

    if-eqz v7, :cond_4f

    .line 75
    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    goto :goto_42

    :cond_4f
    if-nez v9, :cond_50

    const/4 v7, 0x1

    goto :goto_3c

    :cond_50
    const/4 v7, 0x0

    :goto_3c
    if-nez v6, :cond_51

    const/4 v8, 0x1

    goto :goto_3d

    :cond_51
    const/4 v8, 0x0

    :goto_3d
    if-eq v7, v8, :cond_52

    goto :goto_3f

    :cond_52
    if-nez v9, :cond_53

    goto :goto_40

    .line 76
    :cond_53
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    .line 77
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eq v7, v8, :cond_54

    goto :goto_3f

    :cond_54
    const/4 v8, 0x0

    :goto_3e
    if-ge v8, v7, :cond_56

    .line 78
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-interface {v6, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-eq v11, v12, :cond_55

    :goto_3f
    const/4 v6, 0x1

    goto :goto_41

    :cond_55
    add-int/lit8 v8, v8, 0x1

    goto :goto_3e

    :cond_56
    :goto_40
    const/4 v6, 0x0

    :goto_41
    if-nez v6, :cond_57

    goto :goto_42

    .line 79
    :cond_57
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_58
    :goto_42
    and-long v6, v2, v31

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_59

    .line 80
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_59
    and-long v5, v2, v29

    cmp-long v0, v5, v8

    if-eqz v0, :cond_5e

    .line 81
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

    const-string v5, "imageView"

    .line 82
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    if-nez v4, :cond_5a

    .line 83
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :cond_5a
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    instance-of v7, v6, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v7, :cond_5b

    check-cast v6, Landroid/graphics/drawable/TransitionDrawable;

    goto :goto_43

    :cond_5b
    move-object v6, v5

    :goto_43
    if-nez v6, :cond_5c

    move-object v11, v5

    goto :goto_45

    .line 85
    :cond_5c
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v5, v7, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 86
    invoke-virtual {v6}, Landroid/graphics/drawable/TransitionDrawable;->getNumberOfLayers()I

    move-result v7

    if-lez v7, :cond_5d

    .line 87
    invoke-virtual {v6}, Landroid/graphics/drawable/TransitionDrawable;->getNumberOfLayers()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/TransitionDrawable;->getId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/TransitionDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_44

    :cond_5d
    const/4 v8, 0x1

    move-object v6, v5

    .line 88
    :goto_44
    new-instance v7, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v9, 0x2

    new-array v11, v9, [Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    aput-object v6, v11, v9

    aput-object v5, v11, v8

    invoke-direct {v7, v11}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 89
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 91
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 92
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_45
    if-nez v11, :cond_5e

    .line 93
    new-instance v5, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/BitmapDrawable;

    .line 94
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 95
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v4, 0x1

    aput-object v7, v6, v4

    .line 96
    invoke-direct {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5e
    const-wide/16 v4, 0x6002

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5f

    .line 97
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v4, "view"

    .line 98
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, v15}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setFrameCount(I)V

    :cond_5f
    and-long v4, v2, v37

    cmp-long v0, v4, v6

    if-eqz v0, :cond_60

    .line 100
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v4, "view"

    .line 101
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "newValue"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getValues()[I

    move-result-object v4

    invoke-static {v4, v10}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_60

    .line 103
    invoke-virtual {v0, v10}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->setValues([I)V

    :cond_60
    const-wide/16 v4, 0x6000

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_61

    .line 104
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v4, "view"

    .line 105
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getMaximumRange()I

    move-result v4

    if-eq v4, v13, :cond_61

    .line 107
    invoke-virtual {v0, v13}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->setMaximumRange(I)V

    :cond_61
    and-long v4, v2, v39

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_62

    .line 108
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v4, "view"

    .line 109
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getMinimumRange()I

    move-result v4

    move/from16 v7, v43

    if-eq v4, v7, :cond_62

    .line 111
    invoke-virtual {v0, v7}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->setMinimumRange(I)V

    :cond_62
    and-long v2, v2, v27

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_63

    .line 112
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v1, "view"

    .line 113
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v1, v49

    .line 114
    invoke-virtual {v0, v1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setPlayHeadFrame(I)V

    :cond_63
    return-void

    :catchall_0
    move-exception v0

    .line 115
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFieldChange(ILjava/lang/Object;I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    .line 1
    :pswitch_0
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x1000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 5
    :pswitch_1
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_1

    .line 6
    monitor-enter p0

    .line 7
    :try_start_1
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x800

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 8
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    .line 9
    :pswitch_2
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_2

    .line 10
    monitor-enter p0

    .line 11
    :try_start_2
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x400

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 12
    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    move v0, v1

    :goto_2
    return v0

    .line 13
    :pswitch_3
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_3

    .line 14
    monitor-enter p0

    .line 15
    :try_start_3
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x200

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 16
    monitor-exit p0

    goto :goto_3

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_3
    move v0, v1

    :goto_3
    return v0

    .line 17
    :pswitch_4
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_4

    .line 18
    monitor-enter p0

    .line 19
    :try_start_4
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x100

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 20
    monitor-exit p0

    goto :goto_4

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :cond_4
    move v0, v1

    :goto_4
    return v0

    .line 21
    :pswitch_5
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_5

    .line 22
    monitor-enter p0

    .line 23
    :try_start_5
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x80

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 24
    monitor-exit p0

    goto :goto_5

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p1

    :cond_5
    move v0, v1

    :goto_5
    return v0

    .line 25
    :pswitch_6
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_6

    .line 26
    monitor-enter p0

    .line 27
    :try_start_6
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x40

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 28
    monitor-exit p0

    goto :goto_6

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw p1

    :cond_6
    move v0, v1

    :goto_6
    return v0

    .line 29
    :pswitch_7
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_7

    .line 30
    monitor-enter p0

    .line 31
    :try_start_7
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x20

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 32
    monitor-exit p0

    goto :goto_7

    :catchall_7
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw p1

    :cond_7
    move v0, v1

    :goto_7
    return v0

    .line 33
    :pswitch_8
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_8

    .line 34
    monitor-enter p0

    .line 35
    :try_start_8
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x10

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 36
    monitor-exit p0

    goto :goto_8

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw p1

    :cond_8
    move v0, v1

    :goto_8
    return v0

    .line 37
    :pswitch_9
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_9

    .line 38
    monitor-enter p0

    .line 39
    :try_start_9
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 40
    monitor-exit p0

    goto :goto_9

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw p1

    :cond_9
    move v0, v1

    :goto_9
    return v0

    .line 41
    :pswitch_a
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_a

    .line 42
    monitor-enter p0

    .line 43
    :try_start_a
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 44
    monitor-exit p0

    goto :goto_a

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw p1

    :cond_a
    move v0, v1

    :goto_a
    return v0

    .line 45
    :pswitch_b
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_b

    .line 46
    monitor-enter p0

    .line 47
    :try_start_b
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 48
    monitor-exit p0

    goto :goto_b

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw p1

    :cond_b
    move v0, v1

    :goto_b
    return v0

    .line 49
    :pswitch_c
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_c

    .line 50
    monitor-enter p0

    .line 51
    :try_start_c
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 52
    monitor-exit p0

    goto :goto_c

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw p1

    :cond_c
    move v0, v1

    :goto_c
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->setViewModel(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setViewModel(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x4

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
