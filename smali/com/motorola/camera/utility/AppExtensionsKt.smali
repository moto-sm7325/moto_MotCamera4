.class public Lcom/motorola/camera/utility/AppExtensionsKt;
.super Ljava/lang/Object;
.source "AppExtensions.kt"


# static fields
.field public static zza$com$google$android$gms$internal$mlkit_vision_barcode$zzmc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmb;


# direct methods
.method public static final animatedSetGuidelineBegin(Landroidx/constraintlayout/widget/Guideline;IZ)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    :goto_1
    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    if-nez p2, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    .line 3
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p2, 0x2

    new-array p2, p2, [I

    aput v0, p2, v1

    const/4 v0, 0x1

    aput p1, p2, v0

    const-string p1, "guidelineBegin"

    .line 4
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_3
    return-void
.end method

.method public static final animatedSetGuidelineEnd(Landroidx/constraintlayout/widget/Guideline;IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    :goto_1
    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    if-nez p2, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    .line 2
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p2, 0x2

    new-array p2, p2, [I

    aput v0, p2, v1

    const/4 v0, 0x1

    aput p1, p2, v0

    const-string p1, "guidelineEnd"

    .line 3
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_3
    return-void
.end method

.method public static final controlPanelGuideline(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2
    check-cast p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result v0

    .line 3
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v0, v1

    .line 4
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 6
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    float-to-int v0, v0

    const/4 v2, 0x3

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTrait$enumunboxing$()I

    move-result p0

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    float-to-int p0, v1

    if-le v0, p0, :cond_1

    move v0, p0

    :cond_1
    const p0, 0x7f07009d

    .line 8
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public static final isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTrait$enumunboxing$()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static declared-synchronized zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;
    .locals 4

    const-class v0, Lcom/motorola/camera/utility/AppExtensionsKt;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v1, :cond_2

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzli;

    .line 4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzli;-><init>(Ljava/lang/String;ZI)V

    .line 5
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object p0, Lcom/motorola/camera/utility/AppExtensionsKt;->zza$com$google$android$gms$internal$mlkit_vision_barcode$zzmc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmb;

    if-nez p0, :cond_1

    .line 6
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmb;-><init>()V

    sput-object p0, Lcom/motorola/camera/utility/AppExtensionsKt;->zza$com$google$android$gms$internal$mlkit_vision_barcode$zzmc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmb;

    :cond_1
    sget-object p0, Lcom/motorola/camera/utility/AppExtensionsKt;->zza$com$google$android$gms$internal$mlkit_vision_barcode$zzmc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmb;

    .line 7
    invoke-virtual {p0, v1}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 9
    :try_start_3
    monitor-exit v0

    throw p0

    .line 10
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_3

    const-string v1, " enableFirelog"

    .line 12
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-nez v3, :cond_4

    const-string v1, " firelogEventType"

    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 14
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1c

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Missing required properties:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
