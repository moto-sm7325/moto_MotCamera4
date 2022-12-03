.class public Landroidx/transition/ViewOverlayApi18;
.super Ljava/lang/Object;
.source "ViewOverlayApi18.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader;
.implements Lcom/google/android/gms/internal/mlkit_common/zzjq;
.implements Lcom/google/android/play/core/internal/zzcs;
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlp;


# instance fields
.field public mViewOverlay:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Landroidx/transition/ViewOverlayApi18;->mViewOverlay:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_common/zzjk;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/ViewOverlayApi18;->mViewOverlay:Ljava/lang/Object;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/zzjk;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/transition/ViewOverlayApi18;->mViewOverlay:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzjz;

    .line 7
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzjz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_common/zzjk;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/internal/zzcs;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/transition/ViewOverlayApi18;->mViewOverlay:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Landroidx/transition/ViewOverlayApi18;->mViewOverlay:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 17

    move-wide/from16 v0, p1

    const/4 v2, 0x0

    move v3, v2

    .line 1
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ViewOverlayApi18;->getNextLoadPositionUs()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v8, p0

    .line 2
    iget-object v9, v8, Landroidx/transition/ViewOverlayApi18;->mViewOverlay:Ljava/lang/Object;

    check-cast v9, [Lcom/google/android/exoplayer2/source/SequenceableLoader;

    array-length v10, v9

    move v11, v2

    move v12, v11

    :goto_0
    if-ge v11, v10, :cond_5

    aget-object v13, v9, v11

    .line 3
    invoke-interface {v13}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v14

    cmp-long v16, v14, v6

    if-eqz v16, :cond_2

    cmp-long v16, v14, v0

    if-gtz v16, :cond_2

    const/16 v16, 0x1

    goto :goto_1

    :cond_2
    move/from16 v16, v2

    :goto_1
    cmp-long v14, v14, v4

    if-eqz v14, :cond_3

    if-eqz v16, :cond_4

    .line 4
    :cond_3
    invoke-interface {v13, v0, v1}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->continueLoading(J)Z

    move-result v13

    or-int/2addr v12, v13

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    or-int/2addr v3, v12

    if-nez v12, :cond_0

    :goto_2
    return v3
.end method

.method public getBufferedPositionUs()J
    .locals 10

    .line 1
    iget-object p0, p0, Landroidx/transition/ViewOverlayApi18;->mViewOverlay:Ljava/lang/Object;

    check-cast p0, [Lcom/google/android/exoplayer2/source/SequenceableLoader;

    array-length v0, p0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_0
    const-wide/high16 v6, -0x8000000000000000L

    if-ge v3, v0, :cond_1

    aget-object v8, p0, v3

    .line 2
    invoke-interface {v8}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v8

    cmp-long v6, v8, v6

    if-eqz v6, :cond_0

    .line 3
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    cmp-long p0, v4, v1

    if-nez p0, :cond_2

    move-wide v4, v6

    :cond_2
    return-wide v4
.end method

.method public getNextLoadPositionUs()J
    .locals 10

    .line 1
    iget-object p0, p0, Landroidx/transition/ViewOverlayApi18;->mViewOverlay:Ljava/lang/Object;

    check-cast p0, [Lcom/google/android/exoplayer2/source/SequenceableLoader;

    array-length v0, p0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_0
    const-wide/high16 v6, -0x8000000000000000L

    if-ge v3, v0, :cond_1

    aget-object v8, p0, v3

    .line 2
    invoke-interface {v8}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v8

    cmp-long v6, v8, v6

    if-eqz v6, :cond_0

    .line 3
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    cmp-long p0, v4, v1

    if-nez p0, :cond_2

    move-wide v4, v6

    :cond_2
    return-wide v4
.end method

.method public isLoading()Z
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/transition/ViewOverlayApi18;->mViewOverlay:Ljava/lang/Object;

    check-cast p0, [Lcom/google/android/exoplayer2/source/SequenceableLoader;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 2
    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public reevaluateBuffer(J)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/transition/ViewOverlayApi18;->mViewOverlay:Ljava/lang/Object;

    check-cast p0, [Lcom/google/android/exoplayer2/source/SequenceableLoader;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 2
    invoke-interface {v2, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->reevaluateBuffer(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/transition/ViewOverlayApi18;->mViewOverlay:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/internal/zzcs;

    check-cast p0, Lcom/google/android/play/core/assetpacks/zzu;

    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/zzu;->zzb()Landroid/content/Context;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzed;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/assetpacks/zzed;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
